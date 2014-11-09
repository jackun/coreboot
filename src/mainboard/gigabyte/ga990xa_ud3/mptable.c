/*
 * This file is part of the coreboot project.
 *
 * Copyright (C) 2011 - 2012 Advanced Micro Devices, Inc.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
 */

//Based on supermicro h8qgi, amd dinar so probably not very correct

#include <console/console.h>
#include <arch/smp/mpspec.h>
#include <device/pci.h>
#include <arch/io.h>
#include <string.h>
#include <stdint.h>
#include <arch/cpu.h>
#include <cpu/x86/lapic.h>
//#include <cpu/amd/amdfam15.h>


	/* GA990 vendor bios PCI IRQs
	 * INTA = 10h, INTB = 11h etc?
	* 00:02.0 PCI-2-PCI (PCIE) INTA IRQ18
	* 00:04.0 PCI-2-PCI (PCIE) INTA IRQ16
	* 00:09.0 PCI-2-PCI (PCIE) INTA IRQ17
	* 00:0A.0 PCI-2-PCI (PCIE) INTA IRQ18
	* 00:11.0 RAID INTA IRQ19 / AHCI xxx xxx
	* 00:12.0 OHCI INTA IRQ18
	* 00:12.2 EHCI INTB IRQ17
	* 00:13.0 OHCI INTA IRQ18
	* 00:13.2 EHCI INTB IRQ17
	* 00:14.0 SMBUS 
	* 00:14.2 HDA INTA IRQ16
	* 00:14.3 ISA Bridge
	* 00:14.4 PCI-2-PCI
	* 00:14.5 OHCI INTC IRQ18
	* 00:15.0 PCI-2-PCI (PCIE) INTA IRQ17
	* 00:16.0 OHCI INTA IRQ18
	* 00:16.2 EHCI INTB IRQ17
	* 00:18.0 HOST Bridge
	* 00:18.1 HOST Bridge
	* 00:18.2 HOST Bridge
	* 00:18.3 HOST Bridge
	* 00:18.4 HOST Bridge
	* 00:18.5 HOST Bridge
	*/

static void *smp_write_config_table(void *v)
{
	struct mp_config_table *mc;
	int bus_isa;
	u32 apicid_sb800;
	u32 apicid_rd890;
	device_t dev;
	u32 dword;

	mc = (void *)(((char *)v) + SMP_FLOATING_TABLE_LEN);
	mptable_init(mc, LOCAL_APIC_ADDR);

	smp_write_processors(mc);
	mptable_write_buses(mc, NULL, &bus_isa);

	/*
	 * AGESA v5 Apply apic enumeration rules
	 * For systems with >= 16 APICs, put the IO-APICs at 0..n and
	 * put the local-APICs at m..z
	 * For systems with < 16 APICs, put the Local-APICs at 0..n and
	 * put the IO-APICs at (n + 1)..z
	 */
	if (CONFIG_MAX_CPUS >= 16)
		apicid_sb800 = 0x0;
	else
		apicid_sb800 = CONFIG_MAX_CPUS + 1;
	apicid_rd890 = apicid_sb800 + 1;

	dev = dev_find_slot(0, PCI_DEVFN(0x14, 0));
	if (dev) {
		/* Set sb800 IOAPIC ID */
		dword = pci_read_config32(dev, 0x74) & 0xfffffff0;
		smp_write_ioapic(mc, apicid_sb800, 0x20, dword);

		/*
		 * 00:12.0: PROG SATA : INT F
		 * 00:13.0: INTA USB_0
		 * 00:13.1: INTB USB_1
		 * 00:13.2: INTC USB_2
		 * 00:13.3: INTD USB_3
		 * 00:13.4: INTC USB_4
		 * 00:13.5: INTD USB2
		 * 00:14.1: INTA IDE
		 * 00:14.2: Prog HDA : INT E
		 * 00:14.5: INTB ACI
		 * 00:14.6: INTB MCI
		 */

		/* Set RS5650 IOAPIC ID */
		dev = dev_find_slot(0, PCI_DEVFN(0, 0));
		if (dev) {
			pci_write_config32(dev, 0xF8, 0x1); //IOAPICIND index 1/IOAPIC_VERSION_REGISTER?
			dword = pci_read_config32(dev, 0xFC) & 0xfffffff0;
			smp_write_ioapic(mc, apicid_rd890, 0x20, dword);
		}

	}

	/* I/O Ints:    Type    Polarity    Trigger     Bus ID   IRQ    APIC ID PIN# */
#define IO_LOCAL_INT(type, intr, apicid, pin) \
	smp_write_lintsrc(mc, (type), MP_IRQ_TRIGGER_EDGE | MP_IRQ_POLARITY_HIGH, bus_isa, (intr), (apicid), (pin));

	mptable_add_isa_interrupts(mc, bus_isa, apicid_sb800, 0);

	/* PCI interrupts are level triggered, and are
	 * associated with a specific bus/device/function tuple.
	 */
#define PCI_INT(bus, dev, fn, pin) \
	smp_write_intsrc(mc, mp_INT, MP_IRQ_TRIGGER_LEVEL|MP_IRQ_POLARITY_LOW, (bus), (((dev)<<2)|(fn)), apicid_sb800, (pin))

	//INTA 0x10  INTB 0x11 INTC 0x12 INTD 0x13 INTE 0x14 INTF 0x15 INTG 0x16

	/* SMBUS */
	//PCI_INT(0x0, 0x14, 0x0, 0x10); //not generate interrupt, 3Ch hardcoded to 0

	/* HD Audio */
	PCI_INT(0x0, 0x14, 0x2, 0x10);

	/* USB */
	/* OHCI0, OHCI1 hard-wired to 01h, corresponding to using INTA# */
	/* EHCI hard-wired to 02h, corresponding to using INTB# */
	/* USB1 */
	PCI_INT(0x0, 0x12, 0x0, 0x10); /* OHCI0 Port 0~2 */
	//PCI_INT(0x0, 0x12, 0x1, 0x10); /* OHCI1 Port 3~5 */ // N/A?
	PCI_INT(0x0, 0x12, 0x2, 0x11); /* EHCI Port 0~5 */

	/* USB2 */
	PCI_INT(0x0, 0x13, 0x0, 0x10); /* OHCI0 Port 6~8 */
	//PCI_INT(0x0, 0x13, 0x1, 0x10); /* OHCI1 Port 9~11 */ // N/A?
	PCI_INT(0x0, 0x13, 0x2, 0x11); /* EHCI Port 6~11 */

	/* USB3 EHCI hard-wired to 03h, corresponding to using INTC# */
	PCI_INT(0x0, 0x14, 0x5, 0x12); /* OHCI0 Port 12~13 */

	/* SATA */
	//PCI_INT(0x0, 0x11, 0x0, 0x16); //6, INTG
	/* RAID */
	PCI_INT(0x0, 0x11, 0x0, 0x10); //INTA

	/* Eltron XCHI */
	PCI_INT(0x2, 0x0, 0x0, 0x10); //INTA
	PCI_INT(0x4, 0x0, 0x0, 0x10); //INTA

	/* Realtek Eth 0x8168 */
	PCI_INT(0x3, 0x0, 0x0, 0x10); //INTA

	/* VIA IEEE 1394 0x3044 */
	PCI_INT(0x5, 0x0E, 0x0, 0x10); //INTA IRQ22

	/* PCI slots */
	dev = dev_find_slot(0, PCI_DEVFN(0x14, 4));
	if (dev && dev->enabled) {
		u8 bus_pci = dev->link_list->secondary;

		/* PCI_SLOT 0. */
		PCI_INT(bus_pci, 0x5, 0x0, 0x14);
		PCI_INT(bus_pci, 0x5, 0x1, 0x15);
		PCI_INT(bus_pci, 0x5, 0x2, 0x16);
		PCI_INT(bus_pci, 0x5, 0x3, 0x17);

		/* PCI_SLOT 1. */
		PCI_INT(bus_pci, 0x6, 0x0, 0x15);
		PCI_INT(bus_pci, 0x6, 0x1, 0x16);
		PCI_INT(bus_pci, 0x6, 0x2, 0x17);
		PCI_INT(bus_pci, 0x6, 0x3, 0x14);

		/* PCI_SLOT 2. */
		PCI_INT(bus_pci, 0x7, 0x0, 0x16);
		PCI_INT(bus_pci, 0x7, 0x1, 0x17);
		PCI_INT(bus_pci, 0x7, 0x2, 0x14);
		PCI_INT(bus_pci, 0x7, 0x3, 0x15);
	}

	/*Local Ints:   Type    Polarity    Trigger     Bus ID   IRQ    APIC ID PIN# */
	IO_LOCAL_INT(mp_ExtINT, 0, MP_APIC_ALL, 0x0);
	IO_LOCAL_INT(mp_NMI, 0, MP_APIC_ALL, 0x1);
	/* There is no extension information... */

	/* Compute the checksums */
	return mptable_finalize(mc);
}

unsigned long write_smp_table(unsigned long addr)
{
	void *v;
	v = smp_write_floating_table(addr, 0);
	return (unsigned long)smp_write_config_table(v);
}
