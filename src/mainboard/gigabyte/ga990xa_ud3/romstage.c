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
 
// Much taken from Tyan s8226

//#define SYSTEM_TYPE 0	/* SERVER */
#define SYSTEM_TYPE 1	/* DESKTOP */
//#define SYSTEM_TYPE 2	/* MOBILE */

#include <lib.h>
#include <reset.h>
#include <stdint.h>
#include <arch/io.h>
#include <arch/cpu.h>
#include <console/console.h>
#include <arch/stages.h>
#include <cpu/x86/bist.h>
#include <cpu/x86/lapic.h>
#include <cpu/amd/car.h>
#include <northbridge/amd/agesa/agesawrapper.h>
#include <northbridge/amd/agesa/family10/reset_test.h>
#include <nb_cimx.h>
#include <sb_cimx.h>
#include <superio/ite/common/ite.h>
//#include "superio/ite/it8720f/it8720f.h"
#include "superio/ite/it8718f/it8718f.h"
// SB800
#include "SBPLATFORM.h"
#include "platform_cfg.h"

#define SERIAL_DEV PNP_DEV(0x2e, IT8718F_SP1)
#define GPIO_DEV PNP_DEV(0x2e, IT8718F_GPIO)

void cache_as_ram_main(unsigned long bist, unsigned long cpu_init_detectedx)
{
	u32 val;

	post_code(0x30);
	//agesawrapper_amdinitmmio();
	amd_initmmio();
	post_code(0x31);

	/* Halt if there was a built in self test failure */
	post_code(0x33);
	report_bist_failure(bist);

	sb800_clk_output_48Mhz();
	//sb800_lpc_init(); //?
	ite_enable_serial(SERIAL_DEV, CONFIG_TTYS0_BASE);
	it8718f_disable_reboot(GPIO_DEV);
	post_code(0x34);

	//uart_init();
	post_code(0x35);
	console_init();

	val = cpuid_eax(1);
	printk(BIOS_DEBUG, "BSP Family_Model: %08x \n", val);
	printk(BIOS_DEBUG, "cpu_init_detectedx = %08lx \n", cpu_init_detectedx);

	post_code(0x37);
	agesawrapper_amdinitreset();

	if (!cpu_init_detectedx && boot_cpu()) {
		post_code(0x38);
		/*
		 * SR5650/5670/5690 RD890 chipset, read pci config space hang at POR,
		 * Disable all Pcie Bridges to work around It.
		 */
		sr56x0_rd890_disable_pcie_bridge();
		post_code(0x39);
		nb_Poweron_Init();
		post_code(0x3A);
		sb_Poweron_Init();
	}
	post_code(0x3B);
	agesawrapper_amdinitearly();

	post_code(0x3C);

	nb_Ht_Init();

	// GB bios limits NB to 2200MHz for some reason. AGESA seems to push it to 2600MHz.
	//rd890_cimx_config(&gConfig, &nb_cfg[0], &ht_cfg[0], &pcie_cfg[0]);
	//int NbHtSpeed = HT_FREQUENCY_2200M;
	//LibNbPciWrite (pConfig->NbPciAddress.AddressValue | NB_PCI_REGD1 , AccessWidth8, &NbHtSpeed, pConfig);

	post_code(0x3D);
	/* Reset for HT, FIDVID, PLL and ucode patch(errata) changes to take affect. */
	if (!warm_reset_detect(0)) {
		printk(BIOS_INFO, "...WARM RESET...\n\n\n");
		distinguish_cpu_resets(0);
		soft_reset();
		die("After soft_reset_x - shouldn't see this message!!!\n");
	}

	post_code(0x40);
	val = agesawrapper_amdinitpost();

	// From src/mainboard/lippert/frontrunner-af/romstage.c
	/* Reboots with outb(3,0x92), outb(4,0xcf9) or triple-fault all
	* hang, looks like DRAM re-init goes wrong, don't know why. */
	if (val == 7) /* AGESA_FATAL, amdinitenv below is going to hang */
		//outb(0x06, 0x0cf9); /* reset system harder instead */
		hard_reset();

	post_code(0x41);
	agesawrapper_amdinitenv();
	post_code(0x42);

	post_code(0x50);
	printk(BIOS_DEBUG, "Disabling cache as ram ");
	disable_cache_as_ram();
	printk(BIOS_DEBUG, "done\n");

	post_code(0x51);
	copy_and_run();

	/* We will not return,  Should never see this message and post code. */
	printk(BIOS_DEBUG, "should not be here -\n");
	post_code(0xFF);
}

