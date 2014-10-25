/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20131218-32 [Dec 18 2013]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of (null), Wed Jan 08 00:13:22 2014
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00007A4B (31307)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x3C
 *     OEM ID           "GBT   "
 *     OEM Table ID     "GBTUACPI"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000000 (50331648)
 */
DefinitionBlock ("DSDT.aml", "DSDT", 1, "GBT   ", "GBTUACPI", 0x00001000)
{

	External (LNKA)
	External (LNKB)
	External (LNKC)
	External (LNKD)

	Scope (\_PR)
	{
		Processor (\_PR.C000, 0x00, 0x00000810, 0x06) {}
		Processor (\_PR.C001, 0x01, 0x00000810, 0x06) {}
		Processor (\_PR.C002, 0x02, 0x00000810, 0x06) {}
		Processor (\_PR.C003, 0x03, 0x00000810, 0x06) {}
		Processor (\_PR.C004, 0x04, 0x00000810, 0x06) {}
		Processor (\_PR.C005, 0x05, 0x00000810, 0x06) {}
		Processor (\_PR.C006, 0x06, 0x00000810, 0x06) {}
		Processor (\_PR.C007, 0x07, 0x00000810, 0x06) {}
	}

	Name (\_S0, Package (0x04)  // _S0_: S0 System State
	{
		0x00, 
		0x00, 
		0x00, 
		0x00
	})
	Name (\_S3, Package (0x04)  // _S3_: S3 System State
	{
		0x03, 
		0x01, 
		0x01, 
		0x01
	})
	Name (\_S4, Package (0x04)  // _S4_: S4 System State
	{
		0x04, 
		0x04, 
		0x04, 
		0x04
	})
	Name (\_S5, Package (0x04)  // _S5_: S5 System State
	{
		0x05, 
		0x05, 
		0x05, 
		0x05
	})
	OperationRegion (\DEBG, SystemIO, 0x80, 0x01)
	Field (\DEBG, ByteAcc, NoLock, Preserve)
	{
		DBG1,   8
	}

	Name (OSTY, Ones)
	OperationRegion (ACMS, SystemIO, 0x72, 0x10)
	Field (ACMS, ByteAcc, NoLock, Preserve)
	{
		ICMS,   8, 
		DCMS,   8, 
		Offset (0x0E), 
		P80,    8
	}

	IndexField (ICMS, DCMS, ByteAcc, NoLock, Preserve)
	{
		Offset (0x01), 
		Offset (0x04), 
		Offset (0x08), 
		BS_A,   32
	}

	OperationRegion (CFGS, SystemMemory, BS_A, 0x0100)
	Field (CFGS, AnyAcc, NoLock, Preserve)
	{
		Offset (0x0C), 
		PCIE,   32, 
		Offset (0x7F), 
			,   5, 
		GGN2,   1, 
		Offset (0x87), 
		GECE,   1, 
		IR_E,   1, 
		Offset (0x93), 
			,   5, 
		OSCF,   1, 
		Offset (0x9E), 
		PRS0,   1, 
		DET0,   1, 
		Offset (0xA2), 
		PRS1,   1, 
		DET1,   1, 
		Offset (0xA6), 
		PRS2,   1, 
		DET2,   1, 
		Offset (0xAA), 
		PRS3,   1, 
		DET3,   1, 
		Offset (0xB2), 
			,   6, 
		ABPS,   1, 
			,   3, 
		GPPS,   1
	}

	OperationRegion (CMPT, SystemIO, 0x0C50, 0x03)
	Field (CMPT, ByteAcc, NoLock, Preserve)
	{
		CMID,   8, 
			,   6, 
		GPCT,   2, 
		GP0I,   1, 
		GP1I,   1, 
		GP2I,   1, 
		GP3I,   1, 
		GP4I,   1, 
		GP5I,   1, 
		GP6I,   1, 
		GP7I,   1
	}

	OperationRegion (PCFG, SystemMemory, PCIE, 0x02000000)
	Field (PCFG, AnyAcc, NoLock, Preserve)
	{
		Offset (0x20078), 
		Offset (0x2007A), 
		PMSA,   1, 
		Offset (0x28078), 
		Offset (0x2807A), 
		PMSB,   1, 
		Offset (0x48078), 
		Offset (0x4807A), 
		PMSC,   1, 
		Offset (0x8800A), 
		STCL,   16, 
		Offset (0x880FC), 
		RMBA,   32, 
		Offset (0xA0004), 
		SMIE,   1, 
		SMME,   1, 
		Offset (0xA0008), 
		RVID,   8, 
		Offset (0xA0014), 
		SMB1,   32, 
		Offset (0xA0082), 
			,   2, 
		G31O,   1, 
		Offset (0xA00E1), 
			,   6, 
		ACIR,   1, 
		Offset (0xA4004), 
		PCMD,   2, 
		Offset (0xA807A), 
		PMS0,   1, 
		Offset (0xA8088), 
		TLS0,   4, 
		Offset (0xA907A), 
		PMS1,   1, 
		Offset (0xA9088), 
		TLS1,   4, 
		Offset (0xAA07A), 
		PMS2,   1, 
		Offset (0xAA088), 
		TLS2,   4, 
		Offset (0xAB07A), 
		PMS3,   1, 
		Offset (0xAB088), 
		TLS3,   4
	}

	OperationRegion (RMEM, SystemMemory, RMBA, 0x0200)
	Field (RMEM, AnyAcc, NoLock, Preserve)
	{
		Offset (0x04), 
		RMLN,   32
	}

	OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
	Field (PMIO, ByteAcc, NoLock, Preserve)
	{
		INPM,   8, 
		DAPM,   8
	}

	IndexField (INPM, DAPM, ByteAcc, NoLock, Preserve)
	{
		Offset (0x24), 
		MMSO,   32, 
		Offset (0x50), 
			,   1, 
		HPTF,   1, 
		Offset (0x60), 
		P1EB,   16
	}

	OperationRegion (ERMM, SystemMemory, MMSO, 0x1000)
	Field (ERMM, AnyAcc, NoLock, Preserve)
	{
		Offset (0x132), 
			,   7, 
		GP51,   1, 
		Offset (0x136), 
			,   7, 
		GP55,   1, 
		Offset (0x13A), 
			,   7, 
		GP59,   1, 
		Offset (0x13D), 
		GP62,   8, 
		Offset (0x13F), 
			,   7, 
		GP64,   1, 
		Offset (0x16A), 
			,   7, 
		GE11,   1, 
			,   7, 
		GE12,   1, 
		Offset (0x16E), 
			,   7, 
		BATS,   1, 
		Offset (0x287), 
			,   1, 
		CLPS,   1, 
		Offset (0x298), 
			,   7, 
		G15A,   1, 
		Offset (0x2AF), 
			,   2, 
		SLPS,   2, 
		Offset (0x376), 
		EPNM,   1, 
		DPPF,   1, 
		Offset (0x3BA), 
			,   6, 
		PWDE,   1, 
		Offset (0x3BD), 
			,   5, 
		ALLS,   1, 
		Offset (0x3EF), 
		PHYD,   1, 
			,   1, 
			,   1, 
		US5R,   1, 
		Offset (0x3F5), 
		GECD,   1
	}

	OperationRegion (ABIO, SystemIO, 0x0CD8, 0x08)
	Field (ABIO, DWordAcc, NoLock, Preserve)
	{
		INAB,   32, 
		DAAB,   32
	}

	Method (RDAB, 1, NotSerialized)
	{
		Store (Arg0, INAB)
		Return (DAAB)
	}

	Method (WTAB, 2, NotSerialized)
	{
		Store (Arg0, INAB)
		Store (Arg1, DAAB)
	}

	Method (RWAB, 3, NotSerialized)
	{
		And (RDAB (Arg0), Arg1, Local0)
		Or (Local0, Arg2, Local1)
		WTAB (Arg0, Local1)
	}

	Method (CABR, 3, NotSerialized)
	{
		ShiftLeft (Arg0, 0x05, Local0)
		Add (Local0, Arg1, Local1)
		ShiftLeft (Local1, 0x18, Local2)
		Add (Local2, Arg2, Local3)
		Return (Local3)
	}

	Method (GHPS, 2, NotSerialized)
	{
		If (LEqual (Arg0, 0x00))
		{
			If (LEqual (Arg1, 0x00))
			{
				RWAB (CABR (0x06, 0x00, 0xC0), 0xFFFFEFFF, 0x00)
				RWAB (CABR (0x01, 0x00, 0x65), 0xFFFFFEFE, 0x00)
				Store (One, DET0)
			}

			If (LEqual (Arg1, 0x02))
			{
				RWAB (CABR (0x06, 0x00, 0xC0), 0xFFFFBFFF, 0x00)
				RWAB (CABR (0x01, 0x00, 0x65), 0xFFFFFBFB, 0x00)
				Store (One, DET2)
			}

			Stall (0xC8)
		}

		If (LEqual (Arg0, 0x01))
		{
			If (LEqual (Arg1, 0x00))
			{
				RWAB (CABR (0x06, 0x00, 0xC0), 0xFFFFEFFF, 0x1000)
				RWAB (CABR (0x01, 0x00, 0x65), 0xFFFFFEFE, 0x0101)
				Store (Zero, DET0)
			}

			If (LEqual (Arg1, 0x02))
			{
				RWAB (CABR (0x06, 0x00, 0xC0), 0xFFFFBFFF, 0x4000)
				RWAB (CABR (0x01, 0x00, 0x65), 0xFFFFFBFB, 0x0404)
				Store (Zero, DET2)
			}

			Stall (0xC8)
		}

		If (GGN2)
		{
			If (LEqual (Arg0, 0x00))
			{
				GEN2 ()
				Store (RDAB (CABR (0x03, 0x02, 0xA5)), Local0)
				And (Local0, 0xFF, Local0)
				Store (0x01F4, Local1)
				While (LAnd (LGreater (Local1, 0x00), LNotEqual (Local0, 0x10)))
				{
					Store (RDAB (CABR (0x03, 0x02, 0xA5)), Local0)
					And (Local0, 0xFF, Local0)
					Decrement (Local1)
					Stall (0xC8)
					Stall (0xC8)
				}

				If (LNotEqual (Local0, 0x10))
				{
					GEN1 ()
				}
			}
		}
	}

	Method (GEN2, 0, NotSerialized)
	{
		Store (0x02, TLS2)
		RWAB (CABR (0x03, 0x02, 0xA4), 0xFFFFFFFE, 0x01)
		RWAB (CABR (0x03, 0x02, 0xA2), 0xFFFFDFFF, 0x2000)
		RWAB (CABR (0x03, 0x02, 0xC0), 0xFFFF7FFF, 0x8000)
		RWAB (CABR (0x03, 0x02, 0xA4), 0xDFFFFFFF, 0x20000000)
		Stall (0xC8)
		Stall (0xC8)
	}

	Method (GEN1, 0, NotSerialized)
	{
		Store (0x01, TLS2)
		RWAB (CABR (0x03, 0x02, 0xA4), 0xFFFFFFFE, 0x00)
		RWAB (CABR (0x03, 0x02, 0xA2), 0xFFFFDFFF, 0x2000)
		Stall (0xC8)
		Stall (0xC8)
	}

	OperationRegion (P1E0, SystemIO, P1EB, 0x04)
	Field (P1E0, ByteAcc, NoLock, Preserve)
	{
			,   14, 
		PEWS,   1, 
		WSTA,   1, 
			,   14, 
		PEWD,   1
	}

	Method (SPTS, 1, NotSerialized)
	{
		Store (0x01, PCMD)
		Or (Arg0, 0xF0, P80)
		CPMS ()
		CPMS ()
		Store (0x01, PEWS)
	}

	Method (SWAK, 1, NotSerialized)
	{
		CPMS ()
		CPMS ()
		Store (0x01, PEWS)
	}

	Method (TRMD, 1, NotSerialized)
	{
	}

	Method (CPMS, 0, NotSerialized)
	{
		If (LEqual (EPNM, 0x00))
		{
			Store (0x01, PMSA)
			Store (0x01, PMSB)
			Store (0x01, PMSC)
			Store (0x01, PMS0)
			Store (0x01, PMS1)
			Store (0x01, PMS2)
			Store (0x01, PMS3)
		}
	}

	Scope (\_GPE)
	{
	}

	Scope (\)
	{
		Name (SBA1, 0x0B00)
		Name (SBA2, 0x0B10)
		Name (SIOP, 0x2E)
		Name (GIOB, 0x0220)
		Name (CCMS, 0xF0)
		OperationRegion (NCLK, SystemMemory, PCIE, 0x02000000)
		Field (NCLK, AnyAcc, NoLock, Preserve)
		{
			Offset (0x4C), 
			CLKE,   1, 
			Offset (0x1048), 
			P3HH,   12, 
				,   19, 
			P3EE,   1, 
			P4EN,   1, 
			P4NM,   12, 
			P4HI,   12, 
			P4IO,   1, 
			Offset (0x1050), 
			P5EN,   1, 
			P5NM,   12, 
			P5HI,   12, 
			P5IO,   1, 
			Offset (0x1054), 
			P6EN,   1, 
			P6NM,   12, 
			P6HI,   12, 
			P6IO,   1, 
			Offset (0x10B0), 
			P1NM,   12, 
			P1HI,   12, 
			P1EN,   1, 
			P1IO,   1, 
			Offset (0x10B4), 
			P2NM,   12, 
			P2HI,   12, 
			P2EN,   1, 
			P2IO,   1, 
			Offset (0x10CC), 
			P3EN,   1, 
			P3NM,   12, 
			P3HI,   12, 
			P3IO,   1
		}

		OperationRegion (SOR1, SystemIO, SBA1, 0x10)
		Field (SOR1, ByteAcc, NoLock, Preserve)
		{
			SMSA,   8, 
			SSSA,   8, 
			SBCA,   8, 
			SHCA,   8, 
			SBAA,   8, 
			SD0A,   8, 
			SD1A,   8, 
			SBDA,   8, 
			SSCA,   8, 
			SMCA,   8, 
			SSEA,   16, 
			SSDA,   16, 
			SMTA,   8
		}

		OperationRegion (SOR2, SystemIO, SBA2, 0x10)
		Field (SOR2, ByteAcc, NoLock, Preserve)
		{
			SMSB,   8, 
			SSSB,   8, 
			SBCB,   8, 
			SHCB,   8, 
			SBAB,   8, 
			SD0B,   8, 
			SD1B,   8, 
			SBDB,   8, 
			SSCB,   8, 
			SMCB,   8, 
			SSEB,   16, 
			SSDB,   16, 
			SMTB,   8
		}

		Mutex (MSMB, 0x00)
		Method (RWBK, 5, NotSerialized)
		{
			Acquire (MSMB, 0xFFFF)
			If (LEqual (Arg0, 0x00))
			{
				Store (SMSA, Local0)
				And (Local0, 0x00, Local0)
				Or (Local0, 0xFF, Local0)
				Store (Local0, SMSA)
				Sleep (0x02)
				Store (SBAA, Local0)
				And (Local0, 0x00, Local0)
				Or (Local0, Arg1, Local0)
				Store (Local0, SBAA)
				Sleep (0x02)
				Store (SHCA, Local0)
				And (Local0, 0x00, Local0)
				Or (Local0, Arg2, Local0)
				Store (Local0, SHCA)
				Sleep (0x02)
				Store (SBCA, Local0)
				And (Local0, 0x00, Local0)
				Or (Local0, 0x14, Local0)
				Store (Local0, SBCA)
				Sleep (0x02)
				Store (SD0A, Local0)
				And (Local0, 0x00, Local0)
				Or (Local0, Arg3, Local0)
				Store (Local0, SD0A)
				Sleep (0x02)
				And (Arg1, 0x01, Local1)
				If (LEqual (Local1, 0x00))
				{
					Store (Arg3, Local2)
					Store (Arg2, Local3)
					While (Local2)
					{
						Store (DerefOf (Index (Arg4, Local3)), Local4)
						Store (Local4, SBDA)
						Sleep (0x02)
						Decrement (Local2)
						Increment (Local3)
					}
				}

				Store (SBCA, Local0)
				And (Local0, 0x00, Local0)
				Or (Local0, 0x54, Local0)
				Store (Local0, SBCA)
				Sleep (0x02)
				Store (SMSA, Local1)
				While (LNot (And (Local1, 0x01)))
				{
					Store (SMSA, Local1)
					If (And (Local1, 0x1C))
					{
						Release (MSMB)
						Return (0x01)
					}

					If (And (Local1, 0x02))
					{
						Break
					}

					Sleep (0x02)
				}

				Store (SMSA, Local1)
				While (And (Local1, 0x01))
				{
					Store (SMSA, Local1)
					Sleep (0x02)
				}

				And (Arg1, 0x01, Local1)
				If (Local1)
				{
					Store (Arg2, Local1)
					Store (Arg3, Local2)
					While (Local2)
					{
						Store (SBDA, Index (Arg4, Local1))
						Sleep (0x02)
						Increment (Local1)
						Decrement (Local2)
					}
				}
			}

			If (LEqual (Arg0, 0x01)) {}
			Release (MSMB)
			Return (0x00)
		}

		OperationRegion (IOOR, SystemIO, SIOP, 0x02)
		Field (IOOR, ByteAcc, NoLock, Preserve)
		{
			IOID,   8, 
			IODT,   8
		}

		OperationRegion (GBOR, SystemIO, GIOB, 0x02)
		Field (GBOR, ByteAcc, NoLock, Preserve)
		{
			Offset (0x01), 
				,   5, 
			GP25,   1, 
			GP26,   1
		}

		Method (RSIO, 1, NotSerialized)
		{
			Store (Arg0, IOID)
			Return (IODT)
		}

		Method (WSIO, 2, NotSerialized)
		{
			Store (Arg0, IOID)
			Store (Arg1, IODT)
		}

		Method (RWIO, 3, NotSerialized)
		{
			WSIO (Arg0, Or (And (RSIO (Arg0), Arg1), Arg2))
		}

		Name (IPSW, Package (0x02)
		{
			Package (0x04)
			{
				0x87, 
				0x01, 
				0x55, 
				0x55
			}, 

			Package (0x04)
			{
				0x87, 
				0x01, 
				0x55, 
				0xAA
			}
		})
		Method (SLDN, 1, NotSerialized)
		{
			Store (0x00, Local1)
			If (LEqual (SIOP, 0x2E))
			{
				Store (0x00, Local1)
			}

			If (LEqual (SIOP, 0x4E))
			{
				Store (0x01, Local1)
			}

			Store (0x00, Local0)
			While (LNotEqual (Local0, 0x04))
			{
				Store (DerefOf (Index (DerefOf (Index (IPSW, Local1)), Local0)), 
					IOID)
				Increment (Local0)
			}

			WSIO (0x07, Arg0)
		}

		Method (APTS, 1, NotSerialized)
		{
			\AOD.APTS (Arg0)
		}

		Method (AWAK, 1, NotSerialized)
		{
			\AOD.AWAK (Arg0)
		}

		Device (AOD)
		{
			Name (DBG, 0x01)
			Name (OBID, Package (0x1C)
			{
				0x07, 
				0x01010000, 
				0x01020000, 
				0x02010000, 
				0x02020000, 
				0x02030000, 
				0x02040000, 
				0x02050000, 
				0x00, 
				0x00, 
				0x01, 
				0x01, 
				0x00, 
				0x00, 
				0x00, 
				0x00, 
				0x00, 
				0xFF, 
				0xFF, 
				"CPU Clock", 
				"PCIE Clock", 
				"VCC18 Core", 
				"SB Core", 
				"Memory Core", 
				"VDDA25 Core", 
				"NB Core", 
				"", 
				""
			})
			Name (OBIT, Package (0x30)
			{
				0x01010000, 
				0x00030D40, 
				0x0007A120, 
				0x00, 
				0x03E8, 
				0x00, 
				0x01020000, 
				0x000186A0, 
				0x000249F0, 
				0x00, 
				0x03E8, 
				0x00, 
				0x02010000, 
				0x0002BF20, 
				0x00033450, 
				0x00, 
				0x07D0, 
				0x00, 
				0x02020000, 
				0x0001D4C0, 
				0x00023A50, 
				0x00, 
				0x07D0, 
				0x00, 
				0x02030000, 
				0x000249F0, 
				0x00033450, 
				0x00, 
				0x07D0, 
				0x00, 
				0x02040000, 
				0x0003D090, 
				0x0004BAF0, 
				0x00, 
				0x0FA0, 
				0x00, 
				0x02050000, 
				0x0001C138, 
				0x00023668, 
				0x00, 
				0x07D0, 
				0x00, 
				0x00, 
				0x00, 
				0x00, 
				0x00, 
				0x00, 
				0x00
			})
			Name (OBDT, Package (0x01)
			{
				0x00
			})
			Method (BM01, 0, NotSerialized)
			{
			}

			Method (XINI, 0, NotSerialized)
			{
			}

			Method (EM01, 0, NotSerialized)
			{
			}

			Method (BM05, 1, NotSerialized)
			{
			}

			Method (EM05, 1, NotSerialized)
			{
			}

			Method (HM06, 0, NotSerialized)
			{
			}

			Method (HM07, 1, NotSerialized)
			{
			}

			Name (QLST, Package (0x03)
			{
				0x02, 
				Package (0x06)
				{
					0x08C4, 
					"Bank Swizzle Mode", 
					0x00, 
					0x02, 
					Buffer (0x09)
					{
						"Disabled"
					}, 

					Buffer (0x08)
					{
						"Enabled"
					}
				}, 

				Package (0x06)
				{
					0x80CC, 
					"DDR3 Memory Profile", 
					0x00, 
					0x02, 
					Buffer (0x09)
					{
						"Disabled"
					}, 

					Buffer (0x08)
					{
						"Enabled"
					}
				}
			})
			OperationRegion (AODT, SystemMemory, 0xBFDD95B2, 0x0100)
			Field (AODT, AnyAcc, NoLock, Preserve)
			{
				ASCD,   16, 
				ASTS,   32, 
				Offset (0x08), 
				ASBF,   960, 
				GFXO,   1, 
				GMOD,   2
			}

			Name (ID01, 0x00)
			Name (ID02, 0x00)
			Method (SOID, 1, NotSerialized)
			{
				ShiftRight (Arg0, 0x18, ID01)
				ShiftRight (And (Arg0, 0x00FF0000), 0x10, ID02)
				Return (0x00)
			}

			Method (WROW, 4, NotSerialized)
			{
				Name (IFPK, Package (0x06)
				{
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00
				})
				CreateDWordField (Arg0, 0x00, BUF0)
				CreateDWordField (Arg0, 0x04, BUF1)
				CreateDWordField (Arg0, 0x08, BUF2)
				CreateDWordField (Arg0, 0x0C, BUF3)
				CreateDWordField (Arg0, 0x10, BUF4)
				CreateDWordField (Arg0, 0x14, BUF5)
				Store (BUF0, Index (IFPK, 0x00))
				Store (BUF1, Index (IFPK, 0x01))
				Store (BUF2, Index (IFPK, 0x02))
				Store (BUF3, Index (IFPK, 0x03))
				Store (BUF4, Index (IFPK, 0x04))
				Store (BUF5, Index (IFPK, 0x05))
				Store (Arg3, Local0)
				Store (0x00, Local1)
				While (Local0)
				{
					Store (DerefOf (Index (IFPK, Local1)), Index (Arg1, Add (Multiply (
						Arg2, Arg3), Local1)))
					Increment (Local1)
					Decrement (Local0)
				}
			}

			Method (GROW, 4, NotSerialized)
			{
				Name (IFPK, Package (0x06)
				{
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00
				})
				Store (Arg3, Local0)
				Store (0x00, Local1)
				While (Local0)
				{
					Store (DerefOf (Index (Arg0, Add (Multiply (Arg2, Arg3), Local1
						))), Index (IFPK, Local1))
					Increment (Local1)
					Decrement (Local0)
				}

				CreateDWordField (Arg1, 0x00, BUF0)
				CreateDWordField (Arg1, 0x04, BUF1)
				CreateDWordField (Arg1, 0x08, BUF2)
				CreateDWordField (Arg1, 0x0C, BUF3)
				CreateDWordField (Arg1, 0x10, BUF4)
				CreateDWordField (Arg1, 0x14, BUF5)
				Store (DerefOf (Index (IFPK, 0x00)), BUF0)
				Store (DerefOf (Index (IFPK, 0x01)), BUF1)
				Store (DerefOf (Index (IFPK, 0x02)), BUF2)
				Store (DerefOf (Index (IFPK, 0x03)), BUF3)
				Store (DerefOf (Index (IFPK, 0x04)), BUF4)
				Store (DerefOf (Index (IFPK, 0x05)), BUF5)
			}

			Method (CPTB, 2, NotSerialized)
			{
				Name (LOID, 0x00)
				CreateDWordField (Arg1, 0x00, BUF0)
				CreateDWordField (Arg1, 0x04, BUF1)
				CreateDWordField (Arg1, 0x08, BUF2)
				CreateDWordField (Arg1, 0x0C, BUF3)
				CreateDWordField (Arg1, 0x10, BUF4)
				Store (0x00, Local0)
				Store (DerefOf (Index (OBIT, Local0)), LOID)
				While (LOID)
				{
					If (LEqual (LOID, Arg0))
					{
						Store (DerefOf (Index (OBIT, Add (Local0, 0x00))), BUF0)
						Store (DerefOf (Index (OBIT, Add (Local0, 0x01))), BUF1)
						Store (DerefOf (Index (OBIT, Add (Local0, 0x02))), BUF2)
						Store (DerefOf (Index (OBIT, Add (Local0, 0x03))), BUF3)
						Store (DerefOf (Index (OBIT, Add (Local0, 0x04))), BUF4)
						Break
					}

					Add (Local0, 0x06, Local0)
					Store (DerefOf (Index (OBIT, Local0)), LOID)
				}

				If (LEqual (LOID, 0x00))
				{
					Return (0xFF)
				}

				Return (0x00)
			}

			Method (CBTP, 1, NotSerialized)
			{
				Name (LOID, 0x00)
				CreateDWordField (Arg0, 0x00, BUF0)
				CreateDWordField (Arg0, 0x04, BUF1)
				CreateDWordField (Arg0, 0x08, BUF2)
				CreateDWordField (Arg0, 0x0C, BUF3)
				CreateDWordField (Arg0, 0x10, BUF4)
				CreateDWordField (Arg0, 0x14, BUF5)
				Store (0x00, Local0)
				Store (DerefOf (Index (OBIT, Local0)), LOID)
				While (LOID)
				{
					If (LEqual (LOID, BUF0))
					{
						Store (BUF0, Index (OBIT, Add (Local0, 0x00)))
						Store (BUF1, Index (OBIT, Add (Local0, 0x01)))
						Store (BUF2, Index (OBIT, Add (Local0, 0x02)))
						Store (BUF3, Index (OBIT, Add (Local0, 0x03)))
						Store (BUF4, Index (OBIT, Add (Local0, 0x04)))
						Store (BUF5, Index (OBIT, Add (Local0, 0x05)))
						Break
					}

					Add (Local0, 0x06, Local0)
					Store (DerefOf (Index (OBIT, Local0)), LOID)
				}

				If (LEqual (LOID, 0x00))
				{
					Return (0xFF)
				}

				Return (0x00)
			}

			Method (ABS, 2, NotSerialized)
			{
				If (LLess (Arg0, Arg1))
				{
					Return (Subtract (Arg1, Arg0))
				}
				Else
				{
					Return (Subtract (Arg0, Arg1))
				}
			}

			Name (EXBF, Buffer (0x78) {})
			OperationRegion (ACMS, SystemIO, 0x72, 0x02)
			Field (ACMS, ByteAcc, NoLock, Preserve)
			{
				P72,    8, 
				P73,    8
			}

			Method (BSF, 1, NotSerialized)
			{
				Name (BIT0, 0x01)
				Store (0x08, Local1)
				While (Local1)
				{
					And (Arg0, BIT0, Local2)
					If (Local2)
					{
						Break
					}

					ShiftLeft (BIT0, 0x01, BIT0)
					Decrement (Local1)
				}

				Return (Subtract (0x08, Local1))
			}

			Method (GCMS, 1, NotSerialized)
			{
				Name (ADDR, 0x00)
				Name (MASK, 0x00)
				Name (TEMP, Buffer (0x06) {})
				CreateDWordField (TEMP, 0x00, TMP1)
				CreateWordField (TEMP, 0x04, TMP2)
				Store (0x01, ASCD)
				CreateWordField (EXBF, 0x00, CMSI)
				CreateWordField (EXBF, 0x02, CMSD)
				Store (0x00, EXBF)
				Store (Arg0, CMSI)
				Store (EXBF, ASBF)
				Store (0x62, SMIP)
				Store (ASBF, EXBF)
				Store (ASTS, TMP1)
				Store (CMSD, TMP2)
				Return (TEMP)
			}

			Method (SCMS, 2, NotSerialized)
			{
				Name (ADDR, 0x00)
				Name (MASK, 0x00)
				Store (0x02, ASCD)
				CreateWordField (EXBF, 0x00, CMSI)
				CreateWordField (EXBF, 0x02, CMSD)
				Store (0x00, EXBF)
				Store (Arg0, CMSI)
				Store (Arg1, CMSD)
				Store (EXBF, ASBF)
				Store (0x62, SMIP)
				Store (ASBF, EXBF)
				Return (ASTS)
			}

			Method (STNV, 2, NotSerialized)
			{
				Store (0x03, ASCD)
				CreateField (EXBF, 0x00, Arg1, MOPD)
				Store (0x00, EXBF)
				Store (Arg0, MOPD)
				Store (EXBF, ASBF)
				Store (0x62, SMIP)
				Store (ASBF, EXBF)
				Return (ASTS)
			}

			Name (CPUD, 0x00)
			Name (GFXD, 0x00)
			Name (SBCD, 0x00)
			Method (GETC, 1, NotSerialized)
			{
				If (\RWBK (0x00, 0xD3, 0x00, 0x20, TSBF))
				{
					Store (0x01, GVB2)
					Store (0x00, GVB1)
					Return (GVBF)
				}

				Store (0x00, GVB2)
				Store (CCLK (Arg0), GVB1)
				If (LEqual (Arg0, 0x01))
				{
					If (LLessEqual (GVB1, 0x00030D40))
					{
						Store (0x00030D40, GVB1)
					}
					Else
					{
						Subtract (GVB1, 0x03E8, GVB1)
					}
				}

				If (LEqual (Arg0, 0x02))
				{
					If (LLessEqual (GVB1, 0x000186A0))
					{
						Store (0x000186A0, GVB1)
					}
				}

				Return (GVBF)
			}

			Method (SETC, 2, NotSerialized)
			{
				If (\RWBK (0x00, 0xD3, 0x00, 0x20, TSBF))
				{
					Return (0x01)
				}

				Store (0x01, Local3)
				If (LEqual (Arg0, 0x01))
				{
					If (LGreaterEqual (Arg1, 0x00030D40))
					{
						Store (GDIV (0x14), Local0)
						Store (GCCX (0x10, 0x11, 0x14, 0xC350), Local1)
						Store (Multiply (Arg1, Local0), Local2)
						Add (Local2, Multiply (Local0, 0x03E8), Local2)
						Store (RMPC (Local1, Local2, 0x03E8, Arg0), Local3)
					}
				}
				Else
				{
					If (LEqual (Arg0, 0x02))
					{
						Store (GDIV (0x1C), Local0)
						Store (GCCX (0x1A, 0x1B, 0x1C, 0x37EE), Local1)
						Store (Multiply (Arg1, Local0), Local2)
						Store (RMPC (Local1, Local2, 0x03E8, Arg0), Local3)
						Or (DerefOf (Index (TSBF, 0x0C)), 0x20, Index (TSBF, 0x0C
							))
						If (\RWBK (0x00, 0xD2, 0x0C, 0x01, TSBF))
						{
							Return (0x01)
						}
					}
					Else
					{
						If (LEqual (Arg0, 0x03))
						{
							Store (GDIV (0x1F), Local0)
							Store (GCCX (0x1D, 0x1E, 0x1F, 0x37EE), Local1)
							Store (Multiply (Arg1, Local0), Local2)
						}
					}
				}

				If (Local3)
				{
					Return (Local3)
				}

				Return (0x00)
			}

			Method (CINI, 0, NotSerialized)
			{
				If (\RWBK (0x00, 0xD3, 0x06, 0x03, TSBF))
				{
					Return (0x01)
				}

				If (LOr (LNotEqual (DerefOf (Index (TSBF, 0x08)), 0x31), 
					LNotEqual (DerefOf (Index (TSBF, 0x07)), 0x75)))
				{
					Return (0x03)
				}

				And (DerefOf (Index (TSBF, 0x06)), 0x1F, Index (TSBF, 0x06
					))
				If (\RWBK (0x00, 0xD2, 0x06, 0x01, TSBF))
				{
					Return (0x01)
				}

				If (\RWBK (0x00, 0xD3, 0x0C, 0x01, TSBF))
				{
					Return (0x01)
				}

				ShiftRight (And (DerefOf (Index (TSBF, 0x0C)), 0x20), 0x05, 
					Local0)
				If (LEqual (Local0, 0x00))
				{
					If (\RWBK (0x00, 0xD3, 0x1A, 0x03, TSBF))
					{
						Return (0x01)
					}

					Store (0xD3, Index (TSBF, 0x1A))
					Store (0xA5, Index (TSBF, 0x1B))
					Or (DerefOf (Index (TSBF, 0x1C)), 0x80, Index (TSBF, 0x1C
						))
					If (\RWBK (0x00, 0xD2, 0x1A, 0x03, TSBF))
					{
						Return (0x01)
					}

					Or (DerefOf (Index (TSBF, 0x0C)), 0x20, Index (TSBF, 0x0C
						))
					If (\RWBK (0x00, 0xD2, 0x0C, 0x01, TSBF))
					{
						Return (0x01)
					}
				}

				Return (0x00)
			}

			Method (GCCX, 4, NotSerialized)
			{
				And (DerefOf (Index (TSBF, Arg2)), 0x80, Local0)
				ShiftRight (Local0, 0x07, Local0)
				And (DerefOf (Index (TSBF, Arg0)), 0xC0, Local1)
				ShiftRight (Local1, 0x05, Local1)
				And (DerefOf (Index (TSBF, Arg1)), 0xFF, Local2)
				ShiftLeft (Local2, 0x03, Local2)
				Or (Local0, Local1, Local0)
				Or (Local0, Local2, Local0)
				And (DerefOf (Index (TSBF, Arg0)), 0x3F, Local1)
				Multiply (Arg3, Local0, Local2)
				Divide (Local2, Local1, , Local3)
				Divide (Local3, 0x03E8, , Local3)
				Multiply (Local3, 0x03E8, Local3)
				Return (Local3)
			}

			Name (VCOM, 0x00)
			Name (VCON, 0x00)
			Method (CCMN, 5, NotSerialized)
			{
				Store (Arg1, Local0)
				Store (ABS (Arg0, Arg1), Local1)
				Store (Arg2, Local2)
				While (LLess (Local2, Arg3))
				{
					Store (0x07FF, Local3)
					Store (Arg4, Local4)
					While (LLessEqual (Local4, Local3))
					{
						Store (Divide (Multiply (Arg1, Local4), Local2, ), Local0)
						Store (ABS (Arg0, Local0), Local5)
						If (LLess (Local5, Local1))
						{
							Store (Local4, VCON)
							Store (Local2, VCOM)
							Store (Local5, Local1)
							If (LEqual (Local5, 0x00))
							{
								Break
							}
						}

						Increment (Local4)
					}

					Increment (Local2)
				}
			}

			Method (CCLK, 1, NotSerialized)
			{
				Name (VCOV, 0x00)
				Name (VCOD, 0x00)
				If (LEqual (Arg0, 0x01))
				{
					Store (GDIV (0x14), CPUD)
					Store (CPUD, VCOD)
					Store (GCCX (0x10, 0x11, 0x14, 0xC350), VCOV)
				}
				Else
				{
					If (LEqual (Arg0, 0x02))
					{
						Store (GDIV (0x1C), GFXD)
						Store (GFXD, VCOD)
						Store (GCCX (0x1A, 0x1B, 0x1C, 0x37EE), VCOV)
					}
					Else
					{
						If (LEqual (Arg0, 0x03))
						{
							Store (GDIV (0x1F), SBCD)
							Store (SBCD, VCOD)
							Store (GCCX (0x1D, 0x1E, 0x1F, 0x37EE), VCOV)
						}
					}
				}

				Return (Divide (VCOV, VCOD, ))
			}

			Method (SCCX, 7, NotSerialized)
			{
				Store (0x00, VCOM)
				Store (0x00, VCON)
				If (LEqual (Arg4, 0xC350))
				{
					Store (0x0168, Local0)
				}
				Else
				{
					If (LEqual (Arg4, 0x37EE))
					{
						Store (0x02BB, Local0)
					}
				}

				CCMN (Arg0, Arg4, Arg5, Arg6, Local0)
				Store (Or (And (ShiftLeft (VCON, 0x05), 0xC0), VCOM
					), Index (TSBF, Arg1))
				Store (And (ShiftRight (VCON, 0x03), 0xFF), Index (TSBF, 
					Arg2))
				Or (And (DerefOf (Index (TSBF, Arg3)), 0x7F), And (
					ShiftLeft (VCON, 0x07), 0x80), Index (TSBF, Arg3))
				If (\RWBK (0x00, 0xD2, Arg1, Add (Subtract (Arg3, Arg1), 
					0x01), TSBF))
				{
					Return (0x01)
				}

				Return (0x00)
			}

			Name (DIVD, Buffer (0x10)
			{
				/* 0000 */   0x02, 0x03, 0x05, 0x09, 0x04, 0x06, 0x0A, 0x12,
				/* 0008 */   0x08, 0x0C, 0x14, 0x24, 0x10, 0x18, 0x28, 0x48
			})
			Method (GDIV, 1, NotSerialized)
			{
				Return (DerefOf (Index (DIVD, And (DerefOf (Index (TSBF, Arg0)), 
					0x0F))))
			}

			Method (WTCX, 2, NotSerialized)
			{
				Store (Arg1, Local0)
				If (LEqual (Arg0, 0x01))
				{
					Store (Divide (Local0, 0x07D0, ), Local1)
					Store (CCMS, P72)
					Store (Local1, P73)
					If (LGreaterEqual (Local1, 0x0100))
					{
						Store (Add (CCMS, 0x01, CCMS), P72)
						Store (0x01, P73)
					}

					Return (SCCX (Local0, 0x10, 0x11, 0x14, 0xC350, 0x1E, 0x3F))
				}
				Else
				{
					If (LEqual (Arg0, 0x02))
					{
						Return (SCCX (Local0, 0x1A, 0x1B, 0x1C, 0x37EE, 0x0A, 0x1E))
					}
					Else
					{
						If (LEqual (Arg0, 0x03))
						{
							Return (SCCX (Local0, 0x1D, 0x1E, 0x1F, 0x37EE, 0x0A, 0x1E))
						}
					}
				}

				Return (0x04)
			}

			Method (RMPC, 4, NotSerialized)
			{
				Name (STAT, 0x00)
				Store (Arg0, Local0)
				Store (Arg1, Local1)
				If (LNotEqual (Local0, Local1))
				{
					Store (WTCX (Arg3, Local1), STAT)
					If (STAT)
					{
						Return (STAT)
					}
				}

				Return (0x00)
			}

			Name (UP62, Buffer (0x06)
			{
				 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
			})
			Method (VINI, 0, NotSerialized)
			{
			}

			Method (SETV, 2, NotSerialized)
			{
				If (LEqual (Arg0, 0x01))
				{
					Store (Arg1, Local0)
					If (LGreaterEqual (Local0, 0x00033450))
					{
						Store (0x0002BF20, Local0)
					}

					Subtract (Local0, 0x0002BF20, Local0)
					Store (Divide (Local0, 0x07D0, ), Local0)
					Store (Add (0x00, Local0), Index (UP62, 0x00))
					RWBY (0x20, 0x01, UP62, 0x00)
				}

				If (LEqual (Arg0, 0x02))
				{
					Store (Arg1, Local0)
					If (LGreaterEqual (Local0, 0x00023A50))
					{
						Store (0x0001D4C0, Local0)
					}

					Subtract (Local0, 0x0001D4C0, Local0)
					Store (Divide (Local0, 0x07D0, ), Local0)
					Store (Add (0x00, Local0), Index (UP62, 0x01))
					RWBY (0x20, 0x02, UP62, 0x01)
				}

				If (LEqual (Arg0, 0x03))
				{
					Store (Arg1, Local0)
					If (LGreaterEqual (Local0, 0x00033450))
					{
						Store (0x000249F0, Local0)
					}

					Subtract (Local0, 0x000249F0, Local0)
					Store (Divide (Local0, 0x07D0, ), Local0)
					Store (Add (0x00, Local0), Index (UP62, 0x02))
					RWBY (0x20, 0x03, UP62, 0x02)
				}

				If (LEqual (Arg0, 0x04))
				{
					Store (Arg1, Local0)
					If (LGreaterEqual (Local0, 0x0004BAF0))
					{
						Store (0x0003D090, Local0)
					}

					Subtract (Local0, 0x0003D090, Local0)
					Store (Divide (Local0, 0x0FA0, ), Local0)
					Store (Add (0xC0, Local0), Index (UP62, 0x03))
					RWBY (0x2A, 0x01, UP62, 0x03)
				}

				If (LEqual (Arg0, 0x05))
				{
					Store (Arg1, Local0)
					If (LGreaterEqual (Local0, 0x00023668))
					{
						Store (0x0001C138, Local0)
					}

					Subtract (Local0, 0x0001C138, Local0)
					Store (Divide (Local0, 0x07D0, ), Local0)
					Store (Add (0x00, Local0), Index (UP62, 0x04))
					RWBY (0x2A, 0x02, UP62, 0x04)
				}

				If (LEqual (Arg0, 0x06))
				{
					Store (Arg1, Local0)
					If (LGreaterEqual (Local0, 0x00019A28))
					{
						Store (0x7A00, Local0)
					}

					Subtract (Local0, 0x7A00, Local0)
					Store (Divide (Local0, 0x09C4, ), Local0)
					Store (Add (0x40, Local0), Index (UP62, 0x05))
					RWBY (0x2A, 0x03, UP62, 0x05)
				}
			}

			Method (GETV, 1, NotSerialized)
			{
				If (LEqual (Arg0, 0x01))
				{
					RWBY (0x21, 0x01, UP62, 0x00)
					Store (DerefOf (Index (UP62, 0x00)), Local0)
					Subtract (Local0, 0x00, Local0)
					Store (Add (0x0002BF20, Multiply (Local0, 0x07D0)), GVBF)
				}

				If (LEqual (Arg0, 0x02))
				{
					RWBY (0x21, 0x02, UP62, 0x01)
					Store (DerefOf (Index (UP62, 0x01)), Local0)
					Subtract (Local0, 0x00, Local0)
					Store (Add (0x0001D4C0, Multiply (Local0, 0x07D0)), GVBF)
				}

				If (LEqual (Arg0, 0x03))
				{
					RWBY (0x21, 0x03, UP62, 0x02)
					Store (DerefOf (Index (UP62, 0x02)), Local0)
					Subtract (Local0, 0x00, Local0)
					Store (Add (0x000249F0, Multiply (Local0, 0x07D0)), GVBF)
				}

				If (LEqual (Arg0, 0x04))
				{
					RWBY (0x2B, 0x01, UP62, 0x03)
					Store (DerefOf (Index (UP62, 0x03)), Local0)
					Subtract (Local0, 0xC0, Local0)
					Store (Add (0x0003D090, Multiply (Local0, 0x0FA0)), GVBF)
				}

				If (LEqual (Arg0, 0x05))
				{
					RWBY (0x2B, 0x02, UP62, 0x04)
					Store (DerefOf (Index (UP62, 0x04)), Local0)
					Subtract (Local0, 0x00, Local0)
					Store (Add (0x0001C138, Multiply (Local0, 0x07D0)), GVBF)
				}

				If (LEqual (Arg0, 0x06))
				{
					RWBY (0x2B, 0x03, UP62, 0x05)
					Store (DerefOf (Index (UP62, 0x05)), Local0)
					Subtract (Local0, 0x40, Local0)
					Store (Add (0x7A00, Multiply (Local0, 0x09C4)), GVBF)
				}

				Return (GVBF)
			}

			Method (RWBY, 4, NotSerialized)
			{
				Store (0xFF, Local0)
				Store (Local0, SMSA)
				Sleep (0x02)
				Store (Arg0, Local0)
				Store (Local0, SBAA)
				Sleep (0x02)
				Store (Arg1, Local0)
				Store (Local0, SHCA)
				Sleep (0x02)
				And (Arg0, 0x01, Local1)
				If (LEqual (Local1, 0x00))
				{
					Store (DerefOf (Index (Arg2, Arg3)), Local0)
					Store (Local0, SD0A)
				}

				Store (0x48, Local0)
				Store (Local0, SBCA)
				Sleep (0x02)
				Store (SMSA, Local1)
				While (LNot (And (Local1, 0x01)))
				{
					Store (SMSA, Local1)
					If (And (Local1, 0x1C))
					{
						Return (0x01)
					}

					If (And (Local1, 0x02))
					{
						Break
					}

					Sleep (0x02)
				}

				And (Arg0, 0x01, Local1)
				If (LEqual (Local1, 0x01))
				{
					Store (SD0A, Local0)
					Store (Local0, Index (Arg2, Arg3))
				}

				Return (0x00)
			}

			Name (GF01, 0x00)
			Name (OVFL, 0x01)
			Name (OCFL, 0x01)
			Name (TSBF, Buffer (0x40)
			{
				/* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				/* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				/* 0010 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				/* 0018 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				/* 0020 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				/* 0028 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				/* 0030 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				/* 0038 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
			})
			Name (GVBF, Buffer (0x05)
			{
				 0x00, 0x00, 0x00, 0x00, 0x00
			})
			CreateDWordField (GVBF, 0x00, GVB1)
			CreateByteField (GVBF, 0x04, GVB2)
			Method (AM01, 0, NotSerialized)
			{
				If (DBG)
				{
					Store ("AM01", Debug)
				}

				If (LNot (GF01))
				{
					BM01 ()
					If (OCFL)
					{
						CINI ()
					}

					If (OVFL)
					{
						VINI ()
					}

					XINI ()
					EM01 ()
					Store (0x01, GF01)
				}

				Return (0x00)
			}

			Method (AM02, 0, NotSerialized)
			{
				If (DBG)
				{
					Store ("AM02", Debug)
					Store (OBID, Debug)
				}

				Return (OBID)
			}

			Method (AM03, 1, NotSerialized)
			{
				If (DBG)
				{
					Store ("AM03", Debug)
				}

				SOID (Arg0)
				If (LAnd (LEqual (ID01, 0x01), OCFL))
				{
					Store (GETC (ID02), Local0)
				}
				Else
				{
					If (LAnd (LEqual (ID01, 0x02), OVFL))
					{
						Store (GETV (ID02), Local0)
					}
					Else
					{
						Store (0x00, GVB1)
						Store (0x04, GVB2)
						Store (GVBF, Local0)
					}
				}

				If (DBG)
				{
					Store ("GVBF", Debug)
					Store (Local0, Debug)
				}

				Return (Local0)
			}

			Method (AM04, 2, NotSerialized)
			{
				If (DBG)
				{
					Store ("AM04", Debug)
				}

				SOID (Arg0)
				If (LAnd (LEqual (ID01, 0x01), OCFL))
				{
					SETC (ID02, Arg1)
				}
				Else
				{
					If (LAnd (LEqual (ID01, 0x02), OVFL))
					{
						SETV (ID02, Arg1)
					}
					Else
					{
						Return (0x04)
					}
				}

				Return (0x00)
			}

			Method (AM05, 1, NotSerialized)
			{
				Name (INFO, Buffer (0x14)
				{
					/* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
					/* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
					/* 0010 */   0x00, 0x00, 0x00, 0x00
				})
				CreateDWordField (INFO, 0x00, IFID)
				CreateDWordField (INFO, 0x04, IFMI)
				CreateDWordField (INFO, 0x08, IFMX)
				CreateDWordField (INFO, 0x0C, IFSP)
				CreateField (INFO, 0x80, 0x03, IFST)
				If (DBG)
				{
					Store ("AM05", Debug)
					Store (OBIT, Debug)
				}

				SOID (Arg0)
				If (DBG)
				{
					Store ("ID", Debug)
					Store (ID01, Debug)
					Store (ID02, Debug)
				}

				BM05 (Arg0)
				If (DBG)
				{
					Store ("OBIT", Debug)
					Store (OBIT, Debug)
				}

				CPTB (Arg0, INFO)
				EM05 (Arg0)
				If (DBG)
				{
					Store ("info", Debug)
					Store (INFO, Debug)
				}

				Return (INFO)
			}

			Method (AM06, 0, NotSerialized)
			{
				HM06 ()
				Return (0x00)
			}

			Method (AM07, 1, NotSerialized)
			{
				HM07 (Arg0)
				Return (0x00)
			}

			Method (AM08, 1, NotSerialized)
			{
				Name (LODT, Package (0x34)
				{
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00, 
					0x00
				})
				Store (0x00, Local0)
				While (0x01)
				{
					If (LEqual (DerefOf (Index (OBDT, Local0)), Arg0))
					{
						Store (0x00, Local4)
						Break
					}

					If (LEqual (DerefOf (Index (OBDT, Local0)), 0x00))
					{
						Store (0x04, Local4)
						Break
					}

					Add (Local0, DerefOf (Index (OBDT, Add (Local0, 0x01))), 
						Local0)
					Add (Local0, 0x02, Local0)
				}

				If (Local4) {}
				Else
				{
					Store (DerefOf (Index (OBDT, Add (Local0, 0x01))), Local1)
					Add (Local1, 0x02, Local1)
					Store (0x00, Local2)
					While (Local1)
					{
						Store (DerefOf (Index (OBDT, Local0)), Index (LODT, Local2))
						Decrement (Local1)
						Increment (Local0)
						Increment (Local2)
					}
				}

				Return (LODT)
			}

			Name (OBSV, Package (0x09)
			{
				0x00, 
				0x00, 
				0x00, 
				0x00, 
				0x00, 
				0x00, 
				0x00, 
				0x00, 
				0x00
			})
			Method (APTS, 1, NotSerialized)
			{
				If (LAnd (GF01, LOr (LEqual (Arg0, 0x04), LEqual (Arg0, 0x03))))
				{
					Store (DerefOf (Index (OBID, 0x00)), Local0)
					Store (0x01, Local1)
					Store (0x00, Local2)
					While (Local0)
					{
						SOID (DerefOf (Index (OBID, Local1)))
						If (LAnd (LEqual (ID01, 0x01), OCFL))
						{
							GETC (ID02)
							Store (GVB1, Local3)
						}
						Else
						{
							If (LAnd (LEqual (ID01, 0x02), OVFL))
							{
								GETV (ID02)
								Store (GVB1, Local3)
							}
							Else
							{
								Store (0x00, Local3)
							}
						}

						Store (Local3, Index (OBSV, Local2))
						Decrement (Local0)
						Increment (Local1)
						Increment (Local2)
					}
				}
			}

			Method (AWAK, 1, NotSerialized)
			{
				If (LAnd (GF01, LOr (LEqual (Arg0, 0x04), LEqual (Arg0, 0x03))))
				{
					Store (DerefOf (Index (OBID, 0x00)), Local0)
					Store (0x01, Local1)
					Store (0x00, Local2)
					While (Local0)
					{
						Store (DerefOf (Index (OBSV, Local2)), Local3)
						SOID (DerefOf (Index (OBID, Local1)))
						If (LAnd (LEqual (ID01, 0x01), OCFL))
						{
							SETC (ID02, Local3)
						}
						Else
						{
							If (LAnd (LEqual (ID01, 0x02), OVFL)) {}
							Else
							{
							}
						}

						Decrement (Local0)
						Increment (Local1)
						Increment (Local2)
					}
				}
			}

			Name (CMDV, 0x01)
			Method (AM09, 0, NotSerialized)
			{
				Return (CMDV)
			}

			Name (OBUF, Buffer (0x0400) {})
			Method (AM10, 1, NotSerialized)
			{
				CreateDWordField (Arg0, 0x00, ACMD)
				CreateField (OBUF, 0x00, 0x1000, TEMP)
				Store (0x00, TEMP)
				CreateDWordField (OBUF, 0x00, CMDS)
				If (LEqual (ACMD, 0x00030001))
				{
					R301 ()
				}
				Else
				{
					If (LEqual (ACMD, 0x00030002))
					{
						R302 (Arg0)
					}
					Else
					{
						If (LEqual (ACMD, 0x00030003))
						{
							R303 (Arg0)
						}
						Else
						{
							If (LEqual (ACMD, 0x00030004))
							{
								R304 (Arg0)
							}
							Else
							{
								If (LEqual (ACMD, 0x00040001))
								{
									R401 (Arg0)
								}
								Else
								{
									If (LEqual (ACMD, 0x00040002))
									{
										Store (0x00010000, CMDS)
									}
									Else
									{
										If (LEqual (ACMD, 0x00040003))
										{
											Store (0x00010000, CMDS)
										}
										Else
										{
											If (LEqual (ACMD, 0x00040004))
											{
												R404 (Arg0)
											}
											Else
											{
												If (LEqual (ACMD, 0x00050001))
												{
													R501 (Arg0)
												}
												Else
												{
													Store (0x00010000, CMDS)
												}
											}
										}
									}
								}
							}
						}
					}
				}

				Return (OBUF)
			}

			Name (CMDL, Buffer (0x54) {})
			Method (AM11, 0, NotSerialized)
			{
				Name (TEMP, 0x00)
				CreateDWordField (CMDL, 0x00, CMDC)
				Add (TEMP, 0x04, TEMP)
				CreateDWordField (CMDL, TEMP, CMD1)
				Add (TEMP, 0x04, TEMP)
				Store (0x00030001, CMD1)
				CreateDWordField (CMDL, TEMP, CMD2)
				Add (TEMP, 0x04, TEMP)
				Store (0x00030002, CMD2)
				CreateDWordField (CMDL, TEMP, CMD3)
				Add (TEMP, 0x04, TEMP)
				Store (0x00030003, CMD3)
				CreateDWordField (CMDL, TEMP, CMD4)
				Add (TEMP, 0x04, TEMP)
				Store (0x00030004, CMD4)
				CreateDWordField (CMDL, TEMP, CMD5)
				Add (TEMP, 0x04, TEMP)
				Store (0x00040001, CMD5)
				CreateDWordField (CMDL, TEMP, CMD6)
				Add (TEMP, 0x04, TEMP)
				Store (0x00040002, CMD6)
				CreateDWordField (CMDL, TEMP, CMD7)
				Add (TEMP, 0x04, TEMP)
				Store (0x00040003, CMD7)
				CreateDWordField (CMDL, TEMP, CMD8)
				Add (TEMP, 0x04, TEMP)
				Store (0x00040004, CMD8)
				CreateDWordField (CMDL, TEMP, CMD9)
				Add (TEMP, 0x04, TEMP)
				Store (0x00050001, CMD9)
				Subtract (TEMP, 0x04, TEMP)
				Divide (TEMP, 0x04, , TEMP)
				Store (TEMP, CMDC)
				Return (CMDL)
			}

			Method (R301, 0, NotSerialized)
			{
				Store (DerefOf (Index (QLST, 0x00)), Local0)
				CreateDWordField (OBUF, 0x00, TMP1)
				CreateWordField (OBUF, 0x04, TMP2)
				Store (Local0, TMP2)
				Store (0x00, TMP1)
				Return (0x00)
			}

			Method (R302, 1, NotSerialized)
			{
				Name (CIDX, 0x00)
				CreateWordField (Arg0, 0x04, IIDX)
				Store (0x01, CIDX)
				Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
					Local0)
				Increment (CIDX)
				Store (0x20, Local1)
				CreateField (OBUF, Local1, 0x0100, TMP1)
				Store (Local0, TMP1)
				Add (Local1, 0x0100, Local1)
				Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
					Local0)
				Increment (CIDX)
				CreateField (OBUF, Local1, 0x08, TMP2)
				Store (Local0, TMP2)
				Add (Local1, 0x08, Local1)
				Store (Local0, Local2)
				Divide (Local1, 0x08, , Local5)
				While (LGreater (Local2, 0x00))
				{
					Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
						Local0)
					Store (0x05, Local4)
					Store (0x00, Local6)
					While (LGreater (Local4, 0x00))
					{
						If (LLess (Local6, SizeOf (Local0)))
						{
							Store (DerefOf (Index (Local0, Local6)), Index (OBUF, Local5))
						}
						Else
						{
							Store (0x00, Index (OBUF, Local5))
						}

						Increment (Local6)
						Increment (Local5)
						Decrement (Local4)
					}

					Add (Local1, 0x28, Local1)
					Decrement (Local2)
					Increment (CIDX)
				}

				Store (0x0370, Local1)
				Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
					Local0)
				Increment (CIDX)
				CreateField (OBUF, Local1, 0x10, TMP3)
				Store (Local0, TMP3)
				Add (Local1, 0x10, Local1)
				Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
					Local6)
				If (LEqual (ObjectType (Local6), 0x04))
				{
					Store (SizeOf (Local6), Local2)
					Divide (Local1, 0x08, , Local5)
					Store (0x00, Local3)
					While (LGreater (Local2, 0x00))
					{
						Store (DerefOf (Index (Local6, Local3)), Local0)
						Store (SizeOf (Local0), Local4)
						Store (0x00, Local7)
						While (LGreater (Local4, 0x00))
						{
							Store (DerefOf (Index (Local0, Local7)), Index (OBUF, Local5))
							Increment (Local7)
							Increment (Local5)
							Decrement (Local4)
						}

						Decrement (Local2)
						Increment (Local3)
					}
				}
				Else
				{
					Store (Local0, Local2)
					Divide (Local1, 0x08, , Local5)
					While (LGreater (Local2, 0x00))
					{
						Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
							Local0)
						Store (SizeOf (Local0), Local4)
						Store (0x00, Local6)
						While (LGreater (Local4, 0x00))
						{
							Store (DerefOf (Index (Local0, Local6)), Index (OBUF, Local5))
							Increment (Local6)
							Increment (Local5)
							Decrement (Local4)
						}

						/* XXX Error: variable not used */
						//Add (Local1, 0x80)
						Decrement (Local2)
						Increment (CIDX)
					}
				}

				CreateDWordField (OBUF, 0x00, TMP4)
				Store (0x00, TMP4)
				Return (0x00)
			}

			Method (R303, 1, NotSerialized)
			{
				CreateWordField (Arg0, 0x04, IITM)
				CreateDWordField (OBUF, 0x00, TMP1)
				CreateWordField (OBUF, 0x04, TMP2)
				Store (DerefOf (Index (DerefOf (Index (QLST, IITM)), 0x00)), 
					Local0)
				Store (GCMS (Local0), Local1)
				CreateDWordField (Local1, 0x00, TMP3)
				CreateWordField (Local1, 0x04, TMP4)
				Store (TMP3, TMP1)
				Store (TMP4, TMP2)
				Return (0x00)
			}

			Method (R304, 1, NotSerialized)
			{
				CreateWordField (Arg0, 0x04, IITM)
				CreateWordField (Arg0, 0x06, CMSD)
				CreateDWordField (OBUF, 0x00, TMP1)
				Store (DerefOf (Index (DerefOf (Index (QLST, IITM)), 0x00)), 
					Local0)
				Store (SCMS (Local0, CMSD), TMP1)
				Return (0x00)
			}

			Name (VEND, Buffer (0x04)
			{
				"GBT"
			})
			Method (R401, 1, NotSerialized)
			{
				CreateField (OBUF, 0x20, 0x0200, TMP2)
				Store (VEND, TMP2)
				Return (0x00)
			}

			Method (R404, 1, NotSerialized)
			{
				CreateDWordField (OBUF, 0x04, VDIO)
				GETV (0x01)
				Store (GVB1, VDIO)
				Return (0x00)
			}

			Method (R501, 1, NotSerialized)
			{
				CreateByteField (Arg0, 0x04, MOPV)
				If (LEqual (MOPV, 0x01))
				{
					Store (0x1F, Local0)
				}

				Multiply (Local0, 0x08, Local1)
				CreateField (Arg0, 0x20, Local1, MOPD)
				STNV (MOPD, Local1)
			}

			Name (WQBA, Buffer (0x0BBB)
			{
				/* 0000 */   0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
				/* 0008 */   0xAB, 0x0B, 0x00, 0x00, 0x20, 0x4A, 0x00, 0x00,
				/* 0010 */   0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
				/* 0018 */   0x28, 0x5B, 0xA4, 0x00, 0x01, 0x06, 0x18, 0x42,
				/* 0020 */   0x10, 0x15, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,
				/* 0028 */   0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,
				/* 0030 */   0x84, 0x1C, 0x40, 0x48, 0x1C, 0x14, 0x4A, 0x08,
				/* 0038 */   0x84, 0xFA, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E,
				/* 0040 */   0x05, 0xC8, 0x14, 0x60, 0x50, 0x80, 0x53, 0x04,
				/* 0048 */   0x11, 0xF4, 0x2A, 0xC0, 0xA6, 0x00, 0x93, 0x02,
				/* 0050 */   0x2C, 0x0A, 0xD0, 0x2E, 0xC0, 0xB2, 0x00, 0xDD,
				/* 0058 */   0x02, 0xA4, 0xC3, 0x92, 0xAD, 0x08, 0x1C, 0x21,
				/* 0060 */   0x06, 0x1C, 0xA5, 0x13, 0x5B, 0xB8, 0x61, 0x83,
				/* 0068 */   0x17, 0x8A, 0xA2, 0x19, 0x44, 0x49, 0x50, 0xB9,
				/* 0070 */   0x00, 0xDF, 0x08, 0x02, 0x2F, 0x57, 0x80, 0xE4,
				/* 0078 */   0x09, 0x48, 0xB3, 0x00, 0xC3, 0x02, 0xAC, 0x0B,
				/* 0080 */   0x90, 0x3D, 0x04, 0x2A, 0x75, 0x08, 0x28, 0x39,
				/* 0088 */   0x43, 0x40, 0x0D, 0xA0, 0xD5, 0x09, 0x08, 0xBF,
				/* 0090 */   0xD2, 0x29, 0x21, 0x09, 0xC2, 0x19, 0xAB, 0x78,
				/* 0098 */   0x7C, 0xCD, 0xA2, 0xE9, 0x39, 0xC9, 0x39, 0x86,
				/* 00A0 */   0x1C, 0x8F, 0x0B, 0x3D, 0x08, 0x1E, 0x47, 0x03,
				/* 00A8 */   0x08, 0x93, 0x3F, 0x64, 0x05, 0x80, 0x41, 0x49,
				/* 00B0 */   0x18, 0x0B, 0x75, 0x31, 0x6A, 0xD4, 0x48, 0xD9,
				/* 00B8 */   0x80, 0x0C, 0x51, 0xDA, 0xA8, 0xD1, 0x03, 0x3A,
				/* 00C0 */   0xBF, 0x23, 0x39, 0xBB, 0xA3, 0x3B, 0x92, 0x04,
				/* 00C8 */   0x46, 0x3D, 0xA6, 0x63, 0x2C, 0x6C, 0x46, 0x42,
				/* 00D0 */   0x8D, 0xD1, 0x1C, 0x14, 0x09, 0x37, 0x68, 0xB4,
				/* 00D8 */   0x44, 0x58, 0x8D, 0x2B, 0xF6, 0x99, 0x59, 0xF8,
				/* 00E0 */   0xB0, 0x84, 0x71, 0x04, 0x07, 0x76, 0xB0, 0x16,
				/* 00E8 */   0x0D, 0x23, 0xB4, 0x82, 0xE0, 0x34, 0x88, 0xA3,
				/* 00F0 */   0x88, 0x12, 0x86, 0xE1, 0x19, 0x33, 0xD0, 0x51,
				/* 00F8 */   0x32, 0xA4, 0x30, 0x41, 0x4F, 0x20, 0xC8, 0xC9,
				/* 0100 */   0x33, 0x2C, 0x43, 0x9C, 0x01, 0xC7, 0x8A, 0x11,
				/* 0108 */   0x2A, 0x24, 0x66, 0x20, 0xC1, 0xFF, 0xFF, 0x27,
				/* 0110 */   0xD0, 0x35, 0x86, 0x3C, 0x03, 0x91, 0x7B, 0xC0,
				/* 0118 */   0x09, 0x04, 0x89, 0x1E, 0x25, 0xB8, 0x71, 0x8D,
				/* 0120 */   0xCA, 0xC6, 0x74, 0x36, 0xB8, 0x81, 0x99, 0x20,
				/* 0128 */   0xCE, 0xE1, 0x61, 0x64, 0x40, 0x68, 0x02, 0xF1,
				/* 0130 */   0x63, 0x87, 0x4F, 0x60, 0xF7, 0xC7, 0x01, 0x29,
				/* 0138 */   0x44, 0xD0, 0x85, 0xE0, 0x4C, 0x6B, 0x14, 0x60,
				/* 0140 */   0xED, 0xEC, 0x20, 0x5B, 0x10, 0x3A, 0x0B, 0xC4,
				/* 0148 */   0x6A, 0x0C, 0x45, 0x10, 0x11, 0x82, 0x46, 0x31,
				/* 0150 */   0x5E, 0x84, 0x50, 0x21, 0xA2, 0x44, 0x3D, 0xE7,
				/* 0158 */   0x20, 0xB5, 0x09, 0x50, 0x06, 0x22, 0xB4, 0x60,
				/* 0160 */   0x46, 0x60, 0xF6, 0x07, 0x41, 0x24, 0x58, 0x80,
				/* 0168 */   0xF8, 0x23, 0xB0, 0x84, 0x13, 0x81, 0x8C, 0x8C,
				/* 0170 */   0x86, 0x1E, 0x16, 0x7C, 0x12, 0x60, 0x07, 0x04,
				/* 0178 */   0xCF, 0xE7, 0xD4, 0x4C, 0xE0, 0xC0, 0x10, 0xE2,
				/* 0180 */   0x95, 0x00, 0x51, 0x47, 0x0B, 0x4A, 0x60, 0x29,
				/* 0188 */   0x47, 0x03, 0x62, 0x7B, 0x60, 0xBA, 0x07, 0x1C,
				/* 0190 */   0xE1, 0xB9, 0xFB, 0x72, 0x70, 0x6A, 0xFE, 0x69,
				/* 0198 */   0x78, 0x9A, 0x0F, 0x09, 0x98, 0x21, 0x7A, 0xAC,
				/* 01A0 */   0x07, 0x11, 0xF0, 0x10, 0xD9, 0x29, 0xC1, 0x80,
				/* 01A8 */   0x78, 0xEF, 0xD7, 0x02, 0x32, 0x82, 0x97, 0x04,
				/* 01B0 */   0x03, 0x7A, 0x12, 0x0F, 0x08, 0x60, 0x39, 0x68,
				/* 01B8 */   0x1C, 0xF8, 0x09, 0x55, 0x7C, 0x07, 0xA0, 0x47,
				/* 01C0 */   0x02, 0x36, 0xA3, 0xF8, 0x26, 0x28, 0xEB, 0xF8,
				/* 01C8 */   0x80, 0x9E, 0x73, 0xB4, 0x67, 0x87, 0x97, 0x85,
				/* 01D0 */   0x66, 0xAF, 0x18, 0x84, 0xE0, 0x35, 0xC0, 0x37,
				/* 01D8 */   0x05, 0x9F, 0x46, 0x2C, 0x69, 0x75, 0x72, 0xB2,
				/* 01E0 */   0x2A, 0x8F, 0x98, 0x82, 0x7B, 0x08, 0x5C, 0x04,
				/* 01E8 */   0x9C, 0x86, 0xEE, 0xF1, 0x82, 0x43, 0xC1, 0x78,
				/* 01F0 */   0xE9, 0xFF, 0x7F, 0xBC, 0xE0, 0x3E, 0x0F, 0x1C,
				/* 01F8 */   0x2F, 0x58, 0x4E, 0x09, 0x55, 0x5D, 0x36, 0x34,
				/* 0200 */   0x87, 0xF3, 0x6D, 0x1E, 0x9F, 0x1C, 0x2D, 0x3C,
				/* 0208 */   0x61, 0x36, 0x96, 0xA3, 0x62, 0xC7, 0x10, 0x36,
				/* 0210 */   0x3A, 0x3E, 0x0A, 0x0F, 0xF8, 0xB5, 0xA1, 0x58,
				/* 0218 */   0x10, 0x99, 0x80, 0xD0, 0x91, 0xE1, 0xC0, 0xC1,
				/* 0220 */   0xE2, 0xEC, 0x00, 0x21, 0x02, 0x0B, 0x1B, 0x39,
				/* 0228 */   0x7A, 0xC4, 0x1E, 0xD4, 0x3B, 0x8C, 0x31, 0x1E,
				/* 0230 */   0x08, 0x8C, 0x7A, 0x48, 0x07, 0x0F, 0x3E, 0x40,
				/* 0238 */   0x0F, 0x1E, 0x70, 0xFA, 0xFF, 0x27, 0xB0, 0xA0,
				/* 0240 */   0x21, 0x4B, 0xC4, 0xE0, 0xD1, 0xA7, 0x08, 0x0F,
				/* 0248 */   0xE7, 0xDD, 0x87, 0x1F, 0x44, 0x12, 0x38, 0x3C,
				/* 0250 */   0x84, 0x06, 0x0F, 0x9E, 0xB3, 0x8F, 0x07, 0x0F,
				/* 0258 */   0x7E, 0x79, 0x83, 0x07, 0xD1, 0x14, 0x8E, 0x0D,
				/* 0260 */   0x77, 0xB0, 0xF1, 0xC0, 0xC1, 0x3D, 0x5C, 0xFC,
				/* 0268 */   0x90, 0x70, 0x67, 0x2D, 0x78, 0x3E, 0x27, 0x4F,
				/* 0270 */   0x06, 0xF0, 0x12, 0x84, 0x3B, 0x6C, 0x01, 0x97,
				/* 0278 */   0x11, 0x70, 0x99, 0xAB, 0xA4, 0x87, 0x2A, 0x0B,
				/* 0280 */   0x83, 0x41, 0x9D, 0xAB, 0xC0, 0xFB, 0xFF, 0x3F,
				/* 0288 */   0x57, 0x01, 0xF6, 0x2F, 0x53, 0xEF, 0x53, 0x3E,
				/* 0290 */   0x57, 0x81, 0x3B, 0xDA, 0x79, 0x40, 0xE7, 0x16,
				/* 0298 */   0x72, 0x9A, 0x41, 0x1F, 0x0A, 0x7C, 0x06, 0x78,
				/* 02A0 */   0x92, 0x01, 0xDB, 0xA1, 0x0A, 0x38, 0x9C, 0x64,
				/* 02A8 */   0xC0, 0x73, 0x2B, 0x7B, 0x92, 0x61, 0xFF, 0xFF,
				/* 02B0 */   0x93, 0x0C, 0x38, 0x0F, 0x62, 0x3E, 0xC9, 0x80,
				/* 02B8 */   0xEF, 0xE8, 0x85, 0x3B, 0x81, 0xC0, 0xF3, 0x38,
				/* 02C0 */   0x24, 0x21, 0x1F, 0x42, 0xF0, 0x43, 0x3A, 0xA6,
				/* 02C8 */   0x67, 0x10, 0x60, 0x28, 0xE4, 0x65, 0xE0, 0x03,
				/* 02D0 */   0x08, 0x8D, 0x7E, 0x06, 0x01, 0xB4, 0xFF, 0xFF,
				/* 02D8 */   0xCF, 0x20, 0xC0, 0xE5, 0xAC, 0xF0, 0x0C, 0x02,
				/* 02E0 */   0x76, 0xF1, 0xAF, 0x3A, 0x9D, 0x07, 0x1C, 0x1C,
				/* 02E8 */   0x42, 0x4E, 0x8E, 0x8A, 0xA8, 0xE1, 0x58, 0xEB,
				/* 02F0 */   0x41, 0x80, 0x8C, 0xE7, 0x45, 0xC0, 0x41, 0x4F,
				/* 02F8 */   0x8A, 0x40, 0xF7, 0xAC, 0x81, 0x3B, 0x1F, 0xC0,
				/* 0300 */   0x3D, 0x12, 0xF2, 0x73, 0x07, 0xF8, 0xA2, 0x43,
				/* 0308 */   0xE8, 0x98, 0x89, 0x3F, 0x51, 0x79, 0x88, 0x3E,
				/* 0310 */   0x1B, 0x98, 0xC0, 0xA3, 0x05, 0xD7, 0x39, 0x11,
				/* 0318 */   0x5C, 0xFF, 0xFF, 0xD1, 0xC2, 0x3B, 0x69, 0xE0,
				/* 0320 */   0x46, 0x0B, 0xF7, 0x00, 0xFC, 0x58, 0x80, 0x39,
				/* 0328 */   0x62, 0x82, 0xEB, 0xD0, 0x02, 0xA6, 0xEB, 0x02,
				/* 0330 */   0xE6, 0xD2, 0x82, 0x3F, 0xB4, 0x00, 0x1F, 0xA1,
				/* 0338 */   0x27, 0x16, 0x94, 0xB4, 0x43, 0x0B, 0xA0, 0xF9,
				/* 0340 */   0xFF, 0x7F, 0x68, 0x01, 0x6E, 0x73, 0x7D, 0x68,
				/* 0348 */   0x01, 0x7B, 0xB8, 0x73, 0x18, 0x95, 0x73, 0x0E,
				/* 0350 */   0x83, 0x76, 0x68, 0xF6, 0x39, 0x0C, 0xB8, 0x1E,
				/* 0358 */   0x26, 0xF0, 0x87, 0x4A, 0xB8, 0xB3, 0x88, 0x1F,
				/* 0360 */   0x27, 0xDA, 0x5B, 0x80, 0xCF, 0xA7, 0xC0, 0xED,
				/* 0368 */   0xB0, 0x86, 0x3B, 0x82, 0xC0, 0xBB, 0x14, 0x9C,
				/* 0370 */   0x96, 0xA7, 0xF6, 0xD4, 0x7F, 0x70, 0x8D, 0x5F,
				/* 0378 */   0x41, 0xC8, 0x3D, 0xC6, 0x77, 0x10, 0xF6, 0xFF,
				/* 0380 */   0x3F, 0x88, 0x01, 0x37, 0x19, 0x07, 0x31, 0x54,
				/* 0388 */   0xF0, 0x43, 0x08, 0x40, 0xA1, 0xCB, 0xC2, 0x43,
				/* 0390 */   0x08, 0xD8, 0xA5, 0x1F, 0xC4, 0x68, 0xEC, 0x83,
				/* 0398 */   0x18, 0xEA, 0xFF, 0x7F, 0x82, 0xC7, 0x9F, 0xC3,
				/* 03A0 */   0x00, 0xA7, 0x67, 0x38, 0xB8, 0x51, 0x8F, 0x61,
				/* 03A8 */   0x80, 0xA2, 0xB3, 0x28, 0x70, 0x82, 0x78, 0x0E,
				/* 03B0 */   0x63, 0xFF, 0xFF, 0x73, 0x18, 0xF0, 0x14, 0xFC,
				/* 03B8 */   0x12, 0xF0, 0x81, 0x85, 0x4A, 0x84, 0x41, 0x9D,
				/* 03C0 */   0x59, 0x00, 0xDE, 0x1C, 0x90, 0x9F, 0x59, 0xC0,
				/* 03C8 */   0x1E, 0xF2, 0xAD, 0xA1, 0x1F, 0x81, 0xFF, 0xFF,
				/* 03D0 */   0x67, 0x16, 0xC0, 0xF5, 0x99, 0xDC, 0x63, 0xC5,
				/* 03D8 */   0x1D, 0x22, 0xD8, 0x48, 0x42, 0xBE, 0x0A, 0xBC,
				/* 03E0 */   0x15, 0x98, 0xC0, 0x91, 0x0F, 0x2D, 0x40, 0xF7,
				/* 03E8 */   0x6C, 0x82, 0x1B, 0x2D, 0xDC, 0xE3, 0xC8, 0x39,
				/* 03F0 */   0x9E, 0xD0, 0xBB, 0xF9, 0xEB, 0x03, 0x3B, 0x4D,
				/* 03F8 */   0xB0, 0x21, 0x83, 0x57, 0xDE, 0x21, 0x10, 0xF5,
				/* 0400 */   0xFF, 0x1F, 0xB2, 0x0F, 0x24, 0x9E, 0xC2, 0xCB,
				/* 0408 */   0x0C, 0x66, 0x26, 0x31, 0x0E, 0x24, 0xC2, 0xB1,
				/* 0410 */   0x78, 0x78, 0xE4, 0x28, 0x08, 0xAA, 0x33, 0x3F,
				/* 0418 */   0x19, 0x35, 0xE8, 0x67, 0xF7, 0x84, 0x0F, 0x9E,
				/* 0420 */   0xE9, 0xBE, 0xE1, 0x83, 0xE1, 0x30, 0x08, 0x73,
				/* 0428 */   0xCE, 0x1E, 0x3F, 0xF8, 0x8E, 0x3D, 0xB8, 0x73,
				/* 0430 */   0x10, 0xBC, 0xEB, 0x8A, 0x91, 0x4F, 0xE8, 0x25,
				/* 0438 */   0x00, 0x73, 0x6B, 0xC1, 0x9E, 0x05, 0x81, 0x93,
				/* 0440 */   0xAC, 0x83, 0x20, 0x4A, 0xC8, 0x59, 0x10, 0x54,
				/* 0448 */   0xFF, 0xFF, 0x83, 0x10, 0xC0, 0x04, 0x6F, 0xF7,
				/* 0450 */   0x20, 0x5D, 0x83, 0x7C, 0x1B, 0x78, 0x1A, 0x78,
				/* 0458 */   0xF8, 0x89, 0xF2, 0x20, 0xE4, 0x8B, 0xC4, 0x0B,
				/* 0460 */   0x41, 0x84, 0x28, 0xC7, 0x7B, 0x02, 0x11, 0x9E,
				/* 0468 */   0x86, 0x3C, 0xE1, 0x30, 0xE1, 0x4E, 0x36, 0xCA,
				/* 0470 */   0x4B, 0x43, 0x18, 0x43, 0xC7, 0x0A, 0x14, 0x39,
				/* 0478 */   0x7E, 0x08, 0x1F, 0x85, 0x7C, 0x10, 0x62, 0x51,
				/* 0480 */   0xCE, 0xB7, 0xF4, 0xFC, 0x61, 0x23, 0x67, 0x11,
				/* 0488 */   0xD4, 0x49, 0xC0, 0x87, 0x0E, 0x0F, 0xEA, 0x09,
				/* 0490 */   0x01, 0x13, 0x1A, 0x42, 0x47, 0x5C, 0xE0, 0x7A,
				/* 0498 */   0xDA, 0xC0, 0xFD, 0xFF, 0x8F, 0x42, 0xE0, 0x38,
				/* 04A0 */   0x80, 0xC0, 0x7B, 0x47, 0xF8, 0xB4, 0x0E, 0x2E,
				/* 04A8 */   0x08, 0x9F, 0x3F, 0xE0, 0xFB, 0x44, 0x16, 0xEE,
				/* 04B0 */   0x5B, 0xC0, 0x0B, 0x0D, 0xEE, 0xEC, 0x01, 0x7C,
				/* 04B8 */   0xE4, 0x1E, 0x6B, 0x51, 0x02, 0x61, 0x50, 0x67,
				/* 04C0 */   0x0F, 0xC0, 0xF9, 0xFF, 0xFF, 0xEC, 0x01, 0xD6,
				/* 04C8 */   0x81, 0x3E, 0x7A, 0x1C, 0xE8, 0x31, 0x06, 0x89,
				/* 04D0 */   0x11, 0xC4, 0x77, 0x0E, 0x1F, 0x7C, 0xE2, 0xBC,
				/* 04D8 */   0x11, 0x3C, 0x7B, 0xF8, 0xC8, 0x71, 0x5C, 0x3E,
				/* 04E0 */   0x80, 0xF8, 0xEC, 0xE1, 0x2B, 0x88, 0xF1, 0xC2,
				/* 04E8 */   0xC4, 0x7C, 0x38, 0xF2, 0x35, 0x21, 0x5E, 0xE4,
				/* 04F0 */   0xB0, 0x61, 0x22, 0xFB, 0xEC, 0xC1, 0x22, 0x1E,
				/* 04F8 */   0x6B, 0xA9, 0x94, 0x83, 0x19, 0xFA, 0x4C, 0xE0,
				/* 0500 */   0x5B, 0xC2, 0x99, 0xBD, 0x71, 0x44, 0x38, 0xAE,
				/* 0508 */   0x93, 0x3B, 0x9F, 0x38, 0x1E, 0xD2, 0x49, 0xFB,
				/* 0510 */   0x6C, 0x06, 0xBE, 0xE3, 0x07, 0x70, 0x38, 0x9B,
				/* 0518 */   0x81, 0x67, 0x74, 0x70, 0x0F, 0x53, 0xE0, 0x93,
				/* 0520 */   0x75, 0x36, 0x43, 0x0F, 0xCB, 0xE7, 0x82, 0x57,
				/* 0528 */   0x07, 0x0F, 0x82, 0x9D, 0xCB, 0xC0, 0x75, 0xB8,
				/* 0530 */   0x83, 0xF3, 0xFF, 0x3F, 0x97, 0x01, 0xAF, 0x73,
				/* 0538 */   0xC7, 0x91, 0xB1, 0x53, 0x05, 0x47, 0x3C, 0xA8,
				/* 0540 */   0x33, 0x79, 0x77, 0x39, 0x6B, 0x1F, 0x3C, 0x02,
				/* 0548 */   0x9D, 0xE7, 0x29, 0xFB, 0x1C, 0x03, 0x73, 0x84,
				/* 0550 */   0x1E, 0x3B, 0xF8, 0x0E, 0x26, 0xF8, 0x83, 0x0C,
				/* 0558 */   0x1C, 0x98, 0x13, 0x38, 0xBA, 0x40, 0xA7, 0x10,
				/* 0560 */   0xE7, 0x14, 0x9E, 0x63, 0x80, 0x91, 0x1C, 0x4B,
				/* 0568 */   0x20, 0x2C, 0xC0, 0xB1, 0x40, 0xA2, 0x96, 0x49,
				/* 0570 */   0x61, 0x7C, 0x32, 0xF0, 0x39, 0x06, 0xAE, 0x24,
				/* 0578 */   0x38, 0xD4, 0xF8, 0x3C, 0xB2, 0x97, 0xBC, 0xE3,
				/* 0580 */   0x3C, 0x91, 0x37, 0x04, 0x8F, 0xFF, 0x81, 0x06,
				/* 0588 */   0xC6, 0xC0, 0x3D, 0xAD, 0x93, 0xF2, 0x4D, 0xEE,
				/* 0590 */   0xB1, 0xC4, 0x67, 0x43, 0x7E, 0x5C, 0x60, 0x68,
				/* 0598 */   0xFC, 0x74, 0x03, 0x86, 0xFF, 0xFF, 0xE9, 0x06,
				/* 05A0 */   0xCE, 0x9D, 0xC1, 0x47, 0x0D, 0xB0, 0x5C, 0x6D,
				/* 05A8 */   0x30, 0x58, 0xA1, 0x62, 0x34, 0x7A, 0xD7, 0x23,
				/* 05B0 */   0xA0, 0xC7, 0xD7, 0xD7, 0x45, 0x9A, 0x42, 0x45,
				/* 05B8 */   0x0C, 0xF1, 0x42, 0x60, 0x97, 0xC7, 0x71, 0xE4,
				/* 05C0 */   0x59, 0x17, 0x5C, 0xD8, 0xCF, 0xBA, 0x60, 0x0F,
				/* 05C8 */   0x75, 0x4E, 0xA2, 0x91, 0x46, 0x83, 0x3A, 0xC8,
				/* 05D0 */   0xF0, 0x03, 0xC1, 0x63, 0x90, 0x4F, 0x1E, 0x06,
				/* 05D8 */   0x39, 0xD1, 0xD3, 0x7A, 0x5C, 0x78, 0x1A, 0xF0,
				/* 05E0 */   0xB8, 0xD9, 0x35, 0xC1, 0x1F, 0x04, 0x1F, 0x0F,
				/* 05E8 */   0xF0, 0x97, 0xA0, 0x80, 0x27, 0xFA, 0xF0, 0x01,
				/* 05F0 */   0xEB, 0x10, 0x82, 0x3F, 0x61, 0xC0, 0x1F, 0x8F,
				/* 05F8 */   0x8F, 0x01, 0x3E, 0xD1, 0xFA, 0x48, 0x45, 0x06,
				/* 0600 */   0x81, 0x3A, 0xBC, 0xF1, 0x91, 0x9E, 0xD6, 0xDB,
				/* 0608 */   0x80, 0x0F, 0x09, 0x87, 0xC5, 0x0E, 0x1E, 0x3E,
				/* 0610 */   0xA3, 0x80, 0x63, 0x3C, 0xF0, 0x6F, 0x9F, 0x4F,
				/* 0618 */   0x07, 0xFF, 0xFF, 0x08, 0xAF, 0x0C, 0x9E, 0xAF,
				/* 0620 */   0x0F, 0x66, 0x60, 0xB9, 0x75, 0xF8, 0xD0, 0x10,
				/* 0628 */   0xEA, 0xA9, 0xC3, 0x33, 0x78, 0xBF, 0xF0, 0x09,
				/* 0630 */   0x04, 0x98, 0x04, 0x36, 0x34, 0x48, 0x26, 0x73,
				/* 0638 */   0x9D, 0xB2, 0x71, 0xDA, 0xA1, 0xC3, 0xB4, 0xC8,
				/* 0640 */   0x03, 0x82, 0x8E, 0x06, 0x3E, 0xD2, 0xF8, 0x80,
				/* 0648 */   0xCB, 0x0F, 0x49, 0x86, 0xB0, 0x30, 0x0A, 0x9D,
				/* 0650 */   0x7C, 0x3C, 0x1A, 0x0F, 0x8F, 0xC0, 0x51, 0x10,
				/* 0658 */   0x8F, 0xDC, 0x21, 0x21, 0x64, 0xE4, 0x10, 0x80,
				/* 0660 */   0x3E, 0x2C, 0x30, 0x88, 0x87, 0x2E, 0x13, 0xF8,
				/* 0668 */   0xD8, 0xE0, 0xF3, 0x1A, 0x9C, 0xE3, 0x91, 0x27,
				/* 0670 */   0xE3, 0x69, 0x78, 0xDC, 0xB8, 0x53, 0x07, 0xDC,
				/* 0678 */   0x71, 0xE0, 0x0F, 0x3A, 0xF8, 0x53, 0x20, 0x3F,
				/* 0680 */   0x27, 0x91, 0xF3, 0x1F, 0xA8, 0x04, 0x9E, 0x0B,
				/* 0688 */   0x40, 0x01, 0xE4, 0xAB, 0x80, 0x95, 0x1E, 0x07,
				/* 0690 */   0xE8, 0x14, 0x42, 0x84, 0x89, 0x66, 0x78, 0x4C,
				/* 0698 */   0xF0, 0xD3, 0x17, 0x1D, 0x8F, 0x87, 0xE5, 0xFF,
				/* 06A0 */   0xFF, 0x20, 0xF9, 0xF1, 0x85, 0x61, 0x3F, 0x9D,
				/* 06A8 */   0xF8, 0xD4, 0x76, 0x8C, 0xEF, 0x05, 0x8F, 0x5F,
				/* 06B0 */   0x18, 0x58, 0x0F, 0x9B, 0xC3, 0x1A, 0x2D, 0xEC,
				/* 06B8 */   0xD1, 0x3E, 0x3E, 0xF8, 0xEA, 0xE1, 0x89, 0xF9,
				/* 06C0 */   0x16, 0xE7, 0x43, 0x07, 0x58, 0x0E, 0x52, 0xC0,
				/* 06C8 */   0xE3, 0xFC, 0xC3, 0xE6, 0xF0, 0x02, 0xF1, 0x1C,
				/* 06D0 */   0xE6, 0x83, 0x07, 0x3B, 0xF1, 0xB1, 0x53, 0x1F,
				/* 06D8 */   0xD7, 0x75, 0x8E, 0x43, 0x9C, 0x21, 0xF8, 0x20,
				/* 06E0 */   0x1C, 0x67, 0x91, 0xF2, 0x38, 0x53, 0x72, 0x95,
				/* 06E8 */   0x7C, 0xE0, 0xA8, 0x1A, 0x45, 0xF0, 0xBE, 0x15,
				/* 06F0 */   0xB0, 0x08, 0xC7, 0x08, 0x94, 0x78, 0x0A, 0x49,
				/* 06F8 */   0x3F, 0x46, 0xA0, 0xC4, 0xC2, 0x51, 0x10, 0x1F,
				/* 0700 */   0x23, 0x7C, 0x90, 0xB0, 0x8D, 0x63, 0x04, 0x6A,
				/* 0708 */   0x8C, 0x3E, 0x0C, 0xF2, 0xA3, 0x00, 0x3F, 0x45,
				/* 0710 */   0xC0, 0x3F, 0xF1, 0xE0, 0xC6, 0x0A, 0x77, 0x70,
				/* 0718 */   0x6C, 0x85, 0x2F, 0x3D, 0x87, 0x76, 0x76, 0x0F,
				/* 0720 */   0x09, 0x51, 0xDE, 0x5F, 0x8D, 0x18, 0x21, 0x60,
				/* 0728 */   0xD8, 0x68, 0x1E, 0x23, 0xEE, 0xD8, 0xCE, 0x2E,
				/* 0730 */   0x45, 0x9E, 0x53, 0xAC, 0x47, 0x25, 0x7E, 0xA4,
				/* 0738 */   0x80, 0xF7, 0xFF, 0x27, 0xF0, 0x31, 0x0F, 0x77,
				/* 0740 */   0xA4, 0x80, 0x33, 0x93, 0xF3, 0xC0, 0xA8, 0x1B,
				/* 0748 */   0x8B, 0xE0, 0x8D, 0xF6, 0x92, 0x8D, 0x3D, 0x58,
				/* 0750 */   0x00, 0x8F, 0x13, 0xA3, 0x0F, 0x16, 0xE0, 0x3A,
				/* 0758 */   0x13, 0xF8, 0x60, 0x01, 0x5C, 0xCF, 0x07, 0x3E,
				/* 0760 */   0x1D, 0x80, 0xF5, 0xF2, 0xC3, 0xEF, 0x07, 0x30,
				/* 0768 */   0x4E, 0x18, 0x30, 0xCE, 0x07, 0x98, 0x1B, 0x86,
				/* 0770 */   0xC3, 0x2C, 0x59, 0x27, 0x0C, 0x7E, 0x5C, 0x73,
				/* 0778 */   0xA4, 0xD5, 0x6A, 0x20, 0xEC, 0x12, 0x86, 0x23,
				/* 0780 */   0x18, 0x04, 0x4C, 0x27, 0x0B, 0x8F, 0xDA, 0x11,
				/* 0788 */   0x28, 0x24, 0xED, 0x80, 0x81, 0x12, 0x73, 0xC0,
				/* 0790 */   0xA0, 0x20, 0x06, 0x74, 0x52, 0x08, 0x9D, 0x45,
				/* 0798 */   0xFD, 0xFF, 0x3F, 0x60, 0xF0, 0x83, 0x9D, 0x4F,
				/* 07A0 */   0x0D, 0xEC, 0x72, 0xEB, 0xEB, 0x85, 0xE7, 0xE9,
				/* 07A8 */   0x29, 0x73, 0x3C, 0x1F, 0x43, 0x0C, 0xEB, 0x8B,
				/* 07B0 */   0x09, 0x78, 0x6E, 0x14, 0xEC, 0x34, 0x8B, 0xB9,
				/* 07B8 */   0xB8, 0xB1, 0xB3, 0x1D, 0x3B, 0x15, 0x18, 0xE5,
				/* 07C0 */   0x70, 0xDF, 0xC0, 0xAC, 0xE6, 0xAA, 0x80, 0x9A,
				/* 07C8 */   0x11, 0x86, 0xC0, 0xE3, 0xF5, 0x81, 0x11, 0x4C,
				/* 07D0 */   0xFA, 0x2E, 0x14, 0x20, 0x47, 0xE7, 0x32, 0x47,
				/* 07D8 */   0x8F, 0x3A, 0x47, 0xF9, 0x24, 0xC5, 0x47, 0xEF,
				/* 07E0 */   0xA3, 0xB9, 0x4F, 0x2B, 0x70, 0xCF, 0x52, 0x3E,
				/* 07E8 */   0x42, 0x01, 0xDF, 0x81, 0xF9, 0x52, 0x80, 0x3B,
				/* 07F0 */   0xA0, 0x80, 0xE1, 0xFA, 0x80, 0xFD, 0xFF, 0xC3,
				/* 07F8 */   0xBC, 0xA2, 0xE0, 0xCF, 0x28, 0xC0, 0x24, 0xF0,
				/* 0800 */   0x59, 0x0A, 0x74, 0x90, 0x3E, 0xA3, 0x00, 0xD7,
				/* 0808 */   0xA1, 0xE2, 0xCE, 0x28, 0xE0, 0x38, 0x10, 0x1E,
				/* 0810 */   0x3D, 0x3F, 0x47, 0xB1, 0x38, 0xC7, 0x12, 0x74,
				/* 0818 */   0xA8, 0x97, 0x83, 0x6E, 0x9B, 0xEC, 0x58, 0x82,
				/* 0820 */   0x8D, 0x72, 0x2C, 0x41, 0x85, 0xA0, 0xD0, 0x09,
				/* 0828 */   0xCA, 0x27, 0x09, 0x7E, 0xC6, 0xE3, 0x20, 0x06,
				/* 0830 */   0x74, 0xF6, 0x93, 0x04, 0x5A, 0xC5, 0x49, 0x02,
				/* 0838 */   0x19, 0xF6, 0x5C, 0x02, 0x84, 0xFE, 0xFF, 0xE7,
				/* 0840 */   0x12, 0xF0, 0x9E, 0x13, 0x9F, 0x26, 0xC0, 0x35,
				/* 0848 */   0x6B, 0xFC, 0x69, 0x02, 0x7F, 0x3E, 0x01, 0x16,
				/* 0850 */   0x47, 0x46, 0xC0, 0xD9, 0x41, 0x90, 0x1F, 0x19,
				/* 0858 */   0x81, 0xEF, 0xB9, 0x84, 0xFF, 0xFF, 0xCF, 0x25,
				/* 0860 */   0xE0, 0x19, 0xB6, 0xCF, 0x25, 0x80, 0x93, 0x9B,
				/* 0868 */   0x34, 0x3F, 0x97, 0xC0, 0x1D, 0xBA, 0xE3, 0x9C,
				/* 0870 */   0xBE, 0x10, 0x57, 0x58, 0xDF, 0x33, 0xE2, 0x27,
				/* 0878 */   0x18, 0xE3, 0x58, 0x82, 0x0A, 0x70, 0xF8, 0x02,
				/* 0880 */   0xB4, 0xFF, 0xFF, 0x4F, 0x23, 0xE0, 0x3F, 0x17,
				/* 0888 */   0x7B, 0xF4, 0xFC, 0x40, 0xE2, 0x43, 0x06, 0x19,
				/* 0890 */   0x3D, 0x8D, 0x7C, 0xF8, 0x82, 0x1E, 0xF1, 0x30,
				/* 0898 */   0x02, 0xB4, 0x07, 0xFA, 0xF0, 0x05, 0xC6, 0xDB,
				/* 08A0 */   0x03, 0x3F, 0x6E, 0x02, 0xAF, 0xD8, 0x87, 0x12,
				/* 08A8 */   0xD0, 0xC1, 0xF2, 0x43, 0x09, 0xF8, 0xFF, 0xFF,
				/* 08B0 */   0x87, 0x12, 0xF0, 0x8C, 0x1E, 0x77, 0xF6, 0x02,
				/* 08B8 */   0xC7, 0x55, 0xC2, 0x83, 0x37, 0xE0, 0x31, 0x3D,
				/* 08C0 */   0x16, 0x18, 0x90, 0x9D, 0x4B, 0x98, 0xEC, 0x73,
				/* 08C8 */   0x09, 0xFA, 0x3C, 0x62, 0xAB, 0xB7, 0x63, 0x72,
				/* 08D0 */   0x52, 0xC7, 0x08, 0x3F, 0x97, 0xA0, 0x24, 0x9F,
				/* 08D8 */   0x4B, 0x00, 0xDA, 0x1C, 0xBA, 0xC0, 0xF1, 0xFF,
				/* 08E0 */   0x3F, 0x74, 0x01, 0x3C, 0xB8, 0x06, 0xFA, 0x40,
				/* 08E8 */   0x02, 0xAE, 0x7B, 0x82, 0x0F, 0x24, 0xC0, 0xF5,
				/* 08F0 */   0x28, 0x00, 0x9E, 0x23, 0x08, 0xFE, 0xC8, 0xEC,
				/* 08F8 */   0x03, 0x3F, 0xEE, 0xA4, 0xEF, 0x53, 0x75, 0x5C,
				/* 0900 */   0xE3, 0x1F, 0xF1, 0x11, 0xFC, 0xFF, 0x1B, 0x3F,
				/* 0908 */   0x7D, 0x91, 0x7B, 0x81, 0x8F, 0x25, 0x3A, 0xF0,
				/* 0910 */   0xA3, 0x04, 0x53, 0x48, 0xEE, 0x01, 0x02, 0x25,
				/* 0918 */   0x10, 0x8E, 0x82, 0xF8, 0x00, 0xE1, 0xF0, 0xE7,
				/* 0920 */   0x24, 0xE8, 0x57, 0x4B, 0x7E, 0x7E, 0xC0, 0x5F,
				/* 0928 */   0x47, 0xD8, 0x28, 0xD9, 0x71, 0x1E, 0x37, 0x4A,
				/* 0930 */   0xB8, 0x60, 0xAF, 0x0F, 0x86, 0xB8, 0xC3, 0x13,
				/* 0938 */   0xE1, 0x67, 0x5B, 0xCC, 0x31, 0x1F, 0xEE, 0x51,
				/* 0940 */   0xE1, 0x51, 0x09, 0x5C, 0xB3, 0x86, 0x75, 0x58,
				/* 0948 */   0x02, 0x3C, 0x78, 0x38, 0x4C, 0x00, 0xAD, 0xFF,
				/* 0950 */   0xFF, 0x61, 0x09, 0xFC, 0xB3, 0xE7, 0x83, 0x38,
				/* 0958 */   0x11, 0x0F, 0x1F, 0x03, 0x74, 0x2C, 0x6F, 0x07,
				/* 0960 */   0xEC, 0xD8, 0xAB, 0xC3, 0x12, 0x6A, 0x0C, 0x3E,
				/* 0968 */   0xFA, 0xFA, 0xE8, 0xC4, 0x20, 0x1F, 0x0F, 0x31,
				/* 0970 */   0xC7, 0x16, 0x76, 0xC2, 0x07, 0xF8, 0xF6, 0xFF,
				/* 0978 */   0x3F, 0xE1, 0x03, 0xD6, 0xCE, 0x24, 0xBE, 0x3F,
				/* 0980 */   0x60, 0xAF, 0x2D, 0xF8, 0xA3, 0x09, 0xF0, 0x06,
				/* 0988 */   0xF7, 0xD1, 0x04, 0x70, 0xF5, 0xFF, 0x3F, 0x9A,
				/* 0990 */   0xE0, 0x84, 0x9E, 0x9D, 0x50, 0x67, 0x03, 0x1F,
				/* 0998 */   0x98, 0x6C, 0x14, 0x95, 0x40, 0xBF, 0x69, 0xBC,
				/* 09A0 */   0x9F, 0x07, 0x31, 0xF4, 0x49, 0xF0, 0x53, 0x13,
				/* 09A8 */   0x06, 0xC2, 0x47, 0x13, 0x9F, 0x24, 0x7C, 0x9C,
				/* 09B0 */   0xE0, 0x52, 0xE0, 0x28, 0x88, 0x8F, 0x13, 0x8E,
				/* 09B8 */   0x79, 0x36, 0x41, 0x9F, 0x0A, 0x7C, 0x3F, 0x38,
				/* 09C0 */   0x09, 0x6C, 0xA8, 0xF3, 0x04, 0x50, 0x19, 0x07,
				/* 09C8 */   0xFE, 0xE8, 0x04, 0x57, 0xD8, 0xC9, 0x04, 0x64,
				/* 09D0 */   0x27, 0x72, 0x60, 0x6E, 0xE2, 0x1C, 0x01, 0x94,
				/* 09D8 */   0xFE, 0xFF, 0x27, 0x72, 0xE0, 0x70, 0x5A, 0xE5,
				/* 09E0 */   0xA7, 0x01, 0x7C, 0xA0, 0xA3, 0x2A, 0x3A, 0xD6,
				/* 09E8 */   0x93, 0x41, 0x23, 0x7E, 0x07, 0x08, 0x77, 0xEA,
				/* 09F0 */   0xE7, 0xF9, 0x40, 0xC0, 0x8E, 0xE5, 0x3E, 0x2C,
				/* 09F8 */   0xF1, 0xF3, 0x92, 0x4F, 0x11, 0x3E, 0x41, 0x70,
				/* 0A00 */   0x49, 0x27, 0x08, 0x0A, 0x62, 0x40, 0xE7, 0x3D,
				/* 0A08 */   0x5D, 0x7A, 0x10, 0xF4, 0x7C, 0xC3, 0x8F, 0xC5,
				/* 0A10 */   0xBE, 0xB6, 0x1C, 0xC5, 0x23, 0x51, 0x82, 0xF9,
				/* 0A18 */   0x0E, 0x01, 0xF4, 0xB6, 0x04, 0x4F, 0xDE, 0x6D,
				/* 0A20 */   0x09, 0x44, 0x18, 0x77, 0x72, 0x16, 0x0C, 0xE1,
				/* 0A28 */   0x28, 0x7D, 0x80, 0x80, 0x31, 0xC0, 0xC7, 0x84,
				/* 0A30 */   0x62, 0xDF, 0x37, 0xF4, 0xBE, 0x04, 0xF3, 0x8A,
				/* 0A38 */   0x09, 0xAE, 0xF3, 0x12, 0x30, 0x9E, 0x89, 0xFF,
				/* 0A40 */   0xFF, 0x3E, 0xCF, 0x21, 0xE4, 0x02, 0xC0, 0x4F,
				/* 0A48 */   0xE5, 0x60, 0x39, 0x36, 0x80, 0x67, 0x1C, 0xEC,
				/* 0A50 */   0x0A, 0x80, 0x3F, 0x32, 0xC1, 0x3E, 0x35, 0xE2,
				/* 0A58 */   0x8E, 0x4C, 0x60, 0x98, 0x08, 0x3B, 0xE7, 0x1C,
				/* 0A60 */   0x08, 0xF6, 0x60, 0x02, 0xBC, 0x55, 0x1C, 0x4C,
				/* 0A68 */   0x00, 0x2D, 0xC3, 0x0D, 0x72, 0x3E, 0x8F, 0xE4,
				/* 0A70 */   0xC6, 0x79, 0xC3, 0xF3, 0x89, 0x84, 0x9D, 0xC4,
				/* 0A78 */   0xD9, 0xFF, 0xFF, 0x60, 0xC2, 0x25, 0x41, 0x48,
				/* 0A80 */   0xFE, 0x61, 0x09, 0x89, 0x8D, 0x9D, 0xFE, 0x39,
				/* 0A88 */   0xBC, 0xB9, 0x32, 0x82, 0x62, 0x8F, 0x4B, 0xA8,
				/* 0A90 */   0xC3, 0x84, 0x45, 0x9E, 0x26, 0x50, 0xA7, 0x69,
				/* 0A98 */   0x9F, 0x90, 0xC9, 0x69, 0x82, 0x46, 0x3E, 0x4D,
				/* 0AA0 */   0xA0, 0x87, 0xE6, 0x89, 0x9D, 0x06, 0x6E, 0xDC,
				/* 0AA8 */   0xA7, 0xC1, 0x6F, 0x87, 0xFC, 0xC0, 0x04, 0x7C,
				/* 0AB0 */   0x0F, 0x0F, 0xF8, 0xD3, 0x04, 0xEC, 0xF3, 0x0D,
				/* 0AB8 */   0x1B, 0x74, 0xC8, 0x77, 0x87, 0x17, 0x59, 0x1F,
				/* 0AC0 */   0x26, 0x80, 0xF9, 0xC8, 0x7D, 0x98, 0x00, 0xFF,
				/* 0AC8 */   0xFF, 0xFF, 0xD0, 0x04, 0x5C, 0x15, 0xDA, 0xF4,
				/* 0AD0 */   0xA9, 0xD1, 0xA8, 0x55, 0x83, 0x32, 0x35, 0xCA,
				/* 0AD8 */   0x34, 0xA8, 0xD5, 0xA7, 0x52, 0x63, 0xC6, 0xA4,
				/* 0AE0 */   0x9D, 0x54, 0xBD, 0x54, 0x8D, 0xD5, 0x91, 0x9E,
				/* 0AE8 */   0x0B, 0x02, 0x71, 0xD4, 0x05, 0x0B, 0xC4, 0xD1,
				/* 0AF0 */   0x9F, 0x40, 0x02, 0xB1, 0xB8, 0x57, 0x88, 0x40,
				/* 0AF8 */   0x2C, 0xF5, 0x05, 0x21, 0x10, 0xCB, 0xD4, 0x01,
				/* 0B00 */   0xC2, 0x82, 0xBC, 0xEF, 0x05, 0xE2, 0x60, 0x52,
				/* 0B08 */   0x06, 0x40, 0xAD, 0x80, 0xB0, 0x78, 0xCB, 0x12,
				/* 0B10 */   0x88, 0x23, 0x9A, 0x39, 0x01, 0x50, 0x37, 0x20,
				/* 0B18 */   0x4C, 0xA0, 0x1E, 0x10, 0x26, 0xDC, 0x10, 0x08,
				/* 0B20 */   0x8B, 0xA3, 0x08, 0x84, 0x09, 0xB6, 0x04, 0xC2,
				/* 0B28 */   0xE2, 0x82, 0x50, 0xC1, 0x9E, 0x8E, 0xFD, 0x4C,
				/* 0B30 */   0x3E, 0x88, 0x80, 0x1C, 0xDA, 0x14, 0x10, 0x93,
				/* 0B38 */   0xA0, 0x0A, 0x88, 0x25, 0x78, 0x0C, 0x08, 0xC8,
				/* 0B40 */   0x71, 0x40, 0x04, 0xE4, 0x50, 0xB6, 0x80, 0x58,
				/* 0B48 */   0x44, 0x10, 0x01, 0x59, 0xCF, 0x1B, 0x4E, 0x40,
				/* 0B50 */   0x16, 0x07, 0x22, 0x20, 0x8B, 0x36, 0x06, 0xC4,
				/* 0B58 */   0x22, 0x80, 0x08, 0xC8, 0xC9, 0x5E, 0x70, 0x81,
				/* 0B60 */   0x48, 0x4C, 0x10, 0x01, 0x39, 0xEC, 0x8A, 0x05,
				/* 0B68 */   0xE4, 0xE8, 0x20, 0x02, 0xB2, 0x4E, 0x6F, 0x40,
				/* 0B70 */   0x4C, 0x34, 0x88, 0x80, 0x2C, 0xFE, 0xB1, 0x21,
				/* 0B78 */   0x20, 0x47, 0x01, 0x11, 0x90, 0x03, 0x3E, 0x28,
				/* 0B80 */   0x02, 0x91, 0xB8, 0x20, 0x02, 0xB2, 0x46, 0x7B,
				/* 0B88 */   0x40, 0x4C, 0x30, 0x88, 0x80, 0x2C, 0xFB, 0x07,
				/* 0B90 */   0x25, 0x20, 0x87, 0x00, 0xD1, 0x00, 0xC9, 0xEB,
				/* 0B98 */   0x40, 0x03, 0x24, 0xBF, 0x89, 0x40, 0x44, 0xE2,
				/* 0BA0 */   0xAB, 0x22, 0x10, 0xD1, 0x0B, 0x22, 0x20, 0xFF,
				/* 0BA8 */   0xFF, 0xA5, 0xFF, 0x38, 0x04, 0xE4, 0x20, 0x20,
				/* 0BB0 */   0x02, 0x26, 0x1A, 0x81, 0xE9, 0x0B, 0x21, 0x10,
				/* 0BB8 */   0xF9, 0xFF, 0x03
			})
			Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
			Name (_UID, 0x00)  // _UID: Unique ID
			Name (_WDG, Buffer (0x28)
			{
				/* 0000 */   0x6A, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
				/* 0008 */   0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
				/* 0010 */   0x41, 0x41, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,
				/* 0018 */   0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,
				/* 0020 */   0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x00
			})
			Method (WMAA, 3, NotSerialized)
			{
				If (LEqual (Arg0, 0x00))
				{
					If (LOr (LOr (LNotEqual (Arg1, 0x01), LNotEqual (Arg1, 
						0x02)), LNotEqual (Arg1, 0x06)))
					{
						CreateDWordField (Arg2, 0x00, WIID)
					}

					If (LEqual (Arg1, 0x01))
					{
						Return (AM01 ())
					}
					Else
					{
						If (LEqual (Arg1, 0x02))
						{
							Return (AM02 ())
						}
						Else
						{
							If (LEqual (Arg1, 0x03))
							{
								Return (AM03 (WIID))
							}
							Else
							{
								If (LEqual (Arg1, 0x04))
								{
									CreateDWordField (Arg2, 0x04, IVAL)
									Return (AM04 (WIID, IVAL))
								}
								Else
								{
									If (LEqual (Arg1, 0x05))
									{
										Return (AM05 (WIID))
									}
									Else
									{
										If (LEqual (Arg1, 0x06))
										{
											Return (AM06 ())
										}
										Else
										{
											If (LEqual (Arg1, 0x07))
											{
												AM07 (Arg2)
											}
											Else
											{
												If (LEqual (Arg1, 0x08))
												{
													AM08 (WIID)
												}
												Else
												{
													If (LEqual (Arg1, 0x09))
													{
														Return (AM09 ())
													}
													Else
													{
														If (LEqual (Arg1, 0x0A))
														{
															Return (AM10 (Arg2))
														}
														Else
														{
															If (LEqual (Arg1, 0x0B))
															{
																Return (AM11 ())
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	OperationRegion (EXTM, SystemMemory, 0x000FF830, 0x12)
	Field (EXTM, WordAcc, NoLock, Preserve)
	{
		ROM1,   16, 
		RMS1,   16, 
		ROM2,   16, 
		RMS2,   16, 
		ROM3,   16, 
		RMS3,   16, 
		AMEM,   32, 
		AINF,   8
	}

	OperationRegion (AWYM, SystemMemory, 0x000FFFEA, 0x01)
	Field (AWYM, ByteAcc, NoLock, Preserve)
	{
			,   1, 
			,   1, 
		AWMD,   1, 
			,   1, 
			,   1, 
			,   1, 
			,   1, 
		Offset (0x01)
	}

	OperationRegion (\P01, SystemIO, 0x0801, 0x01)
	Field (\P01, ByteAcc, NoLock, Preserve)
	{
		P1,     8
	}

	OperationRegion (\PR20, SystemIO, 0x0820, 0x04)
	Field (\PR20, DWordAcc, NoLock, Preserve)
	{
		P20,    32
	}

	Name (OSFX, 0x01)
	Name (LINX, 0x00)
	Name (AMAC, 0x00)
	Name (OSFL, 0x01)
	Method (STRC, 2, NotSerialized)
	{
		If (LNotEqual (SizeOf (Arg0), SizeOf (Arg1)))
		{
			Return (0x00)
		}

		Add (SizeOf (Arg0), 0x01, Local0)
		Name (BUF0, Buffer (Local0) {})
		Name (BUF1, Buffer (Local0) {})
		Store (Arg0, BUF0)
		Store (Arg1, BUF1)
		While (Local0)
		{
			Decrement (Local0)
			If (LNotEqual (DerefOf (Index (BUF0, Local0)), DerefOf (Index (
				BUF1, Local0))))
			{
				Return (Zero)
			}
		}

		Return (One)
	}

	OperationRegion (INFO, SystemMemory, 0x000FF840, 0x01)
	Field (INFO, ByteAcc, NoLock, Preserve)
	{
		KBDI,   1, 
		RTCW,   1, 
		PS2F,   1, 
		IRFL,   2, 
		DISE,   1, 
		SSHU,   1
	}

	Scope (\)
	{
		Name (PICF, 0x00)
		Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
		{
			Store (Arg0, PICF)
		}
	}

	Method (\_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
	{
		Or (Arg0, 0xF0, Local0)
		Store (Local0, DBG1)
		If (LEqual (Arg0, 0x01)) {}
		If (LEqual (Arg0, 0x05))
		{
			Store (0xAA, ICMS)
			Store (DCMS, Local1)
			And (Local1, Not (0x02), Local1)
			Store (0xAA, ICMS)
			Store (Local1, DCMS)
		}

		SPTS (Arg0)
		APTS (Arg0)
	}

	Method (\_WAK, 1, NotSerialized)  // _WAK: Wake
	{
		Store (0xFF, DBG1)
		If (LEqual (Arg0, 0x04))
		{
			If (LEqual (OSFL, 0x02))
			{
				Store (0x57, SMIP)
			}

			If (LEqual (OSFL, 0x01))
			{
				Store (0x56, SMIP)
			}

			If (LEqual (OSFL, 0x00))
			{
				If (LEqual (OSFX, 0x04))
				{
					Store (0x59, SMIP)
				}
				Else
				{
					If (LEqual (OSFX, 0x03))
					{
						Store (0x59, SMIP)
					}
					Else
					{
						Store (0x58, SMIP)
					}
				}
			}

			If (LEqual (OSFX, 0x03))
			{
				Store (0x59, SMIP)
			}

			If (LEqual (OSFX, 0x04))
			{
				Store (0x59, SMIP)
			}
		}

		SWAK (Arg0)
		AWAK (Arg0)
		If (LEqual (OSFL, 0x01))
		{
			Notify (\_SB.PWRB, 0x02)
		}
		Else
		{
			If (LEqual (Arg0, 0x01))
			{
				And (P1, 0x04, Local0)
				If (LEqual (Local0, 0x00))
				{
					Notify (\_SB.PWRB, 0x02)
				}
			}

			If (LEqual (Arg0, 0x03))
			{
				If (LEqual (RTCW, Zero))
				{
					Notify (\_SB.PWRB, 0x02)
				}
			}
		}

		If (LEqual (Arg0, 0x04))
		{
			Notify (\_SB.PWRB, 0x02)
		}
	}

	Scope (\_SI)
	{
	}

	Scope (\_GPE)
	{
		Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
		{
			Notify (\_SB.PCI0.P2P, 0x02)
		}

		Method (_L18, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
		{
			Notify (\_SB.PCI0.PCE2, 0x02)
			Notify (\_SB.PCI0.PCE3, 0x02)
			Notify (\_SB.PCI0.PCE4, 0x02)
			Notify (\_SB.PCI0.PCE5, 0x02)
			Notify (\_SB.PCI0.PCE6, 0x02)
			Notify (\_SB.PCI0.PCE7, 0x02)
			Notify (\_SB.PCI0.PCE9, 0x02)
			Notify (\_SB.PCI0.PCEA, 0x02)
			Notify (\_SB.PCI0.PCEB, 0x02)
			Notify (\_SB.PCI0.PCEC, 0x02)
			Notify (\_SB.PCI0.PCED, 0x02)
		}

		Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
		{
			Notify (\_SB.PCI0.PS2K, 0x02)
			Notify (\_SB.PCI0.PS2M, 0x02)
		}

		Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
		{
			Notify (\_SB.PCI0.USB0, 0x02)
			Notify (\_SB.PCI0.USB1, 0x02)
			Notify (\_SB.PCI0.USB2, 0x02)
			Notify (\_SB.PCI0.USB3, 0x02)
			Notify (\_SB.PCI0.USB4, 0x02)
			Notify (\_SB.PCI0.USB5, 0x02)
			Notify (\_SB.PCI0.USB6, 0x02)
		}

		Method (_L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
		{
			Notify (\_SB.PCI0.SBAZ, 0x02)
		}

		Method (_L0F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
		{
			Notify (\_SB.PCI0.PEX0, 0x02)
		}

		Method (_L10, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
		{
			Notify (\_SB.PCI0.PEX1, 0x02)
		}

		Method (_L11, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
		{
			Notify (\_SB.PCI0.PEX2, 0x02)
		}

		Method (_L12, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
		{
			Notify (\_SB.PCI0.PEX3, 0x02)
		}
	}

	Scope (\_SB)
	{
		Device (\AWY)
		{
			Name (_HID, "AWY0001")  // _HID: Hardware ID
			Method (_STA, 0, NotSerialized)  // _STA: Status
			{
				If (AWMD)
				{
					Return (0x0F)
				}

				Return (0x00)
			}
		}

		Method (SMOD, 1, NotSerialized)
		{
		}

		Device (PWRB)
		{
			Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
			Method (_STA, 0, NotSerialized)  // _STA: Status
			{
				Return (0x0B)
			}
		}

		Device (PCI0)
		{
			Name (_HID, EisaId ("PNP0A03"))  // _HID: Hardware ID
			Name (_ADR, 0x00)  // _ADR: Address
			Scope (\)
			{
				OperationRegion (\SCPP, SystemIO, 0xB0, 0x01)
				Field (\SCPP, ByteAcc, NoLock, Preserve)
				{
					SMIP,   8
				}
			}

			Method (\_SB.PCI0._INI, 0, NotSerialized)  // _INI: Initialize
			{
				If (STRC (\_OS, "Microsoft Windows"))
				{
					Store (0x56, SMIP)
				}
				Else
				{
					If (STRC (\_OS, "Microsoft Windows NT"))
					{
						If (CondRefOf (\_OSI, Local0))
						{
							Store (0x00, Local2)
							If (\_OSI ("Windows 2001"))
							{
								Store (0x00, OSFL)
								Store (0x59, Local1)
								Store (0x03, OSFX)
								Store (0x01, Local2)
							}

							If (\_OSI ("Windows 2006")) {}
							If (\_OSI ("Windows 2009")) {}
							If (LNotEqual (Local2, 0x00))
							{
								Store (Local1, SMIP)
							}
						}
						Else
						{
							Store (0x58, SMIP)
							Store (0x00, OSFL)
						}
					}
					Else
					{
						If (CondRefOf (\_OSI, Local0))
						{
							If (\_OSI ("Linux"))
							{
								Store (0x01, LINX)
							}

							If (\_OSI ("Darwin"))
							{
								Store (0x01, AMAC)
							}
						}

						Store (0x57, SMIP)
						Store (0x02, OSFL)
					}
				}

				Store (OSFX, OSTY)
				If (LEqual (OSFX, 0x00))
				{
					Store (0x04, OSTY)
				}

				If (LEqual (OSFX, 0x03))
				{
					Store (0x05, OSTY)
				}

				If (LEqual (OSFX, 0x04))
				{
					Store (0x06, OSTY)
				}
			}

			Scope (\)
			{
				Method (OSTP, 0, NotSerialized)
				{
					If (LEqual (OSFL, 0x01))
					{
						Store (0x56, SMIP)
					}

					If (LEqual (OSFL, 0x02))
					{
						Store (0x57, SMIP)
					}

					If (LEqual (OSFL, 0x00))
					{
						Store (0x58, Local1)
						If (LGreaterEqual (OSFX, 0x03))
						{
							Store (0x59, Local1)
						}

						Store (Local1, SMIP)
					}
				}
			}

			Device (SYSR)
			{
				Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
				Name (_UID, 0x01)  // _UID: Unique ID
				Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
				{
					IO (Decode16,
						0x0010,             // Range Minimum
						0x0010,             // Range Maximum
						0x01,               // Alignment
						0x10,               // Length
						)
					IO (Decode16,
						0x0022,             // Range Minimum
						0x0022,             // Range Maximum
						0x01,               // Alignment
						0x1E,               // Length
						)
					IO (Decode16,
						0x0044,             // Range Minimum
						0x0044,             // Range Maximum
						0x01,               // Alignment
						0x0A,               // Length
						)
					IO (Decode16,
						0x0050,             // Range Minimum
						0x0050,             // Range Maximum
						0x01,               // Alignment
						0x10,               // Length
						)
					IO (Decode16,
						0x0062,             // Range Minimum
						0x0062,             // Range Maximum
						0x01,               // Alignment
						0x02,               // Length
						)
					IO (Decode16,
						0x0065,             // Range Minimum
						0x0065,             // Range Maximum
						0x01,               // Alignment
						0x0B,               // Length
						)
					IO (Decode16,
						0x0074,             // Range Minimum
						0x0074,             // Range Maximum
						0x01,               // Alignment
						0x0C,               // Length
						)
					IO (Decode16,
						0x0091,             // Range Minimum
						0x0091,             // Range Maximum
						0x01,               // Alignment
						0x03,               // Length
						)
					IO (Decode16,
						0x00A2,             // Range Minimum
						0x00A2,             // Range Maximum
						0x01,               // Alignment
						0x1E,               // Length
						)
					IO (Decode16,
						0x00E0,             // Range Minimum
						0x00E0,             // Range Maximum
						0x01,               // Alignment
						0x10,               // Length
						)
					IO (Decode16,
						0x04D0,             // Range Minimum
						0x04D0,             // Range Maximum
						0x01,               // Alignment
						0x02,               // Length
						)
					IO (Decode16,
						0x0220,             // Range Minimum
						0x0220,             // Range Maximum
						0x01,               // Alignment
						0x06,               // Length
						)
					IO (Decode16,
						0x0290,             // Range Minimum
						0x0290,             // Range Maximum
						0x01,               // Alignment
						0x05,               // Length
						)
				})
			}

			OperationRegion (BAR1, PCI_Config, 0x14, 0x04)
			Field (BAR1, ByteAcc, NoLock, Preserve)
			{
				MMIO,   32
			}

			Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
			{
				If (LEqual (OSFL, 0x02))
				{
					Return (0x02)
				}
				Else
				{
					Return (0x03)
				}
			}

			Method (_STA, 0, NotSerialized)  // _STA: Status
			{
				Return (0x0F)
			}

			Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
			{
				Name (BUF0, ResourceTemplate ()
				{
					WordBusNumber (ResourceConsumer, MinNotFixed, MaxNotFixed, PosDecode,
						0x0000,             // Granularity
						0x0000,             // Range Minimum
						0x00FF,             // Range Maximum
						0x0000,             // Translation Offset
						0x0100,             // Length
						,, )
					IO (Decode16,
						0x0CF8,             // Range Minimum
						0x0CF8,             // Range Maximum
						0x01,               // Alignment
						0x08,               // Length
						)
					WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
						0x0000,             // Granularity
						0x0000,             // Range Minimum
						0x0CF7,             // Range Maximum
						0x0000,             // Translation Offset
						0x0CF8,             // Length
						,, , TypeStatic)
					WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
						0x0000,             // Granularity
						0x0D00,             // Range Minimum
						0xFFFF,             // Range Maximum
						0x0000,             // Translation Offset
						0xF300,             // Length
						,, , TypeStatic)
					DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
						0x00000000,         // Granularity
						0x000A0000,         // Range Minimum
						0x000BFFFF,         // Range Maximum
						0x00000000,         // Translation Offset
						0x00020000,         // Length
						,, , AddressRangeMemory, TypeStatic)
					DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
						0x00000000,         // Granularity
						0x000C0000,         // Range Minimum
						0x000DFFFF,         // Range Maximum
						0x00000000,         // Translation Offset
						0x00020000,         // Length
						,, , AddressRangeMemory, TypeStatic)
					DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
						0x00000000,         // Granularity
						0xFED40000,         // Range Minimum
						0xFED44FFF,         // Range Maximum
						0x00000000,         // Translation Offset
						0x00005000,         // Length
						,, , AddressRangeMemory, TypeStatic)
					DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
						0x00000000,         // Granularity
						0x00100000,         // Range Minimum
						0xFEBFFFFF,         // Range Maximum
						0x00000000,         // Translation Offset
						0xFEB00000,         // Length, was 0xFFF00000
						,, _Y00, AddressRangeMemory, TypeStatic)
				})
				CreateDWordField (BUF0, \_SB.PCI0._CRS._Y00._MIN, TCMM)  // _MIN: Minimum Base Address
				CreateDWordField (BUF0, \_SB.PCI0._CRS._Y00._LEN, TOMM)  // _LEN: Length
				Add (AMEM, 0x00060000, TCMM)
				Add (TCMM, 0x00100000, TCMM)
				Add (TCMM, 0x00100000, TCMM)
				Subtract (0xFEC00000, TCMM, TOMM)
				Return (BUF0)
			}

			Name (PICM, Package (0x44)
			{
				Package (0x04)
				{
					0x0002FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0002FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0002FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0002FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0003FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0003FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0003FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0003FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0004FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0004FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0004FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0004FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0005FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0005FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0005FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0005FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0006FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0006FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0006FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0006FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0007FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0007FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0007FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0007FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0009FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0009FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0009FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0009FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x000AFFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x000AFFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x000AFFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x000AFFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x000BFFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x000BFFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x000BFFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x000BFFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x000CFFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x000CFFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x000CFFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x000CFFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x000DFFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x000DFFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x000DFFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x000DFFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0014FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0014FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0014FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0014FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0012FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0012FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0012FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0012FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0013FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0013FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0013FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0013FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0016FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKC, 
					0x00
				}, 

				Package (0x04)
				{
					0x0016FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0016FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKA, 
					0x00
				}, 

				Package (0x04)
				{
					0x0016FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0011FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0011FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0011FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0011FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKD, 
					0x00
				}, 

				Package (0x04)
				{
					0x0015FFFF, 
					0x00, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0015FFFF, 
					0x01, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0015FFFF, 
					0x02, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}, 

				Package (0x04)
				{
					0x0015FFFF, 
					0x03, 
					\_SB.PCI0.LPC0.LNKB, 
					0x00
				}
			})
			Name (APIC, Package (0x44)
			{
				Package (0x04)
				{
					0x0002FFFF, 
					0x00, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0002FFFF, 
					0x01, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0002FFFF, 
					0x02, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0002FFFF, 
					0x03, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0003FFFF, 
					0x00, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0003FFFF, 
					0x01, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0003FFFF, 
					0x02, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0003FFFF, 
					0x03, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0004FFFF, 
					0x00, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0004FFFF, 
					0x01, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0004FFFF, 
					0x02, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0004FFFF, 
					0x03, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0005FFFF, 
					0x00, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0005FFFF, 
					0x01, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0005FFFF, 
					0x02, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0005FFFF, 
					0x03, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0006FFFF, 
					0x00, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0006FFFF, 
					0x01, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0006FFFF, 
					0x02, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0006FFFF, 
					0x03, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0007FFFF, 
					0x00, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0007FFFF, 
					0x01, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0007FFFF, 
					0x02, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0007FFFF, 
					0x03, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0009FFFF, 
					0x00, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0009FFFF, 
					0x01, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0009FFFF, 
					0x02, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0009FFFF, 
					0x03, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x000AFFFF, 
					0x00, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x000AFFFF, 
					0x01, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x000AFFFF, 
					0x02, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x000AFFFF, 
					0x03, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x000BFFFF, 
					0x00, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x000BFFFF, 
					0x01, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x000BFFFF, 
					0x02, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x000BFFFF, 
					0x03, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x000CFFFF, 
					0x00, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x000CFFFF, 
					0x01, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x000CFFFF, 
					0x02, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x000CFFFF, 
					0x03, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x000DFFFF, 
					0x00, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x000DFFFF, 
					0x01, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x000DFFFF, 
					0x02, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x000DFFFF, 
					0x03, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0014FFFF, 
					0x00, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0014FFFF, 
					0x01, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0014FFFF, 
					0x02, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0014FFFF, 
					0x03, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0012FFFF, 
					0x00, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0012FFFF, 
					0x01, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0012FFFF, 
					0x02, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0012FFFF, 
					0x03, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0013FFFF, 
					0x00, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0013FFFF, 
					0x01, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0013FFFF, 
					0x02, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0013FFFF, 
					0x03, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0016FFFF, 
					0x00, 
					0x00, 
					0x12
				}, 

				Package (0x04)
				{
					0x0016FFFF, 
					0x01, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0016FFFF, 
					0x02, 
					0x00, 
					0x10
				}, 

				Package (0x04)
				{
					0x0016FFFF, 
					0x03, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0011FFFF, 
					0x00, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0011FFFF, 
					0x01, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0011FFFF, 
					0x02, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0011FFFF, 
					0x03, 
					0x00, 
					0x13
				}, 

				Package (0x04)
				{
					0x0015FFFF, 
					0x00, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0015FFFF, 
					0x01, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0015FFFF, 
					0x02, 
					0x00, 
					0x11
				}, 

				Package (0x04)
				{
					0x0015FFFF, 
					0x03, 
					0x00, 
					0x11
				}
			})
			Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
			{
				If (LNot (PICF))
				{
					Return (PICM)
				}
				Else
				{
					Return (APIC)
				}
			}

			Device (SMB0)
			{
				Name (_ADR, 0x00140000)  // _ADR: Address
			}

			Device (USB0)
			{
				Name (_ADR, 0x00120000)  // _ADR: Address
				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x0B, 
					0x03
				})
				Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
				{
					If (LEqual (OSFL, 0x02))
					{
						Return (0x02)
					}
					Else
					{
						Return (0x03)
					}
				}
			}

			Device (USB1)
			{
				Name (_ADR, 0x00120002)  // _ADR: Address
				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x0B, 
					0x03
				})
				Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
				{
					If (LEqual (OSFL, 0x02))
					{
						Return (0x02)
					}
					Else
					{
						Return (0x03)
					}
				}
			}

			Device (USB2)
			{
				Name (_ADR, 0x00130000)  // _ADR: Address
				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x0B, 
					0x03
				})
				Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
				{
					If (LEqual (OSFL, 0x02))
					{
						Return (0x02)
					}
					Else
					{
						Return (0x03)
					}
				}
			}

			Device (USB3)
			{
				Name (_ADR, 0x00130002)  // _ADR: Address
				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x0B, 
					0x03
				})
				Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
				{
					If (LEqual (OSFL, 0x02))
					{
						Return (0x02)
					}
					Else
					{
						Return (0x03)
					}
				}
			}

			Device (USB4)
			{
				Name (_ADR, 0x00160000)  // _ADR: Address
				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x0B, 
					0x03
				})
				Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
				{
					If (LEqual (OSFL, 0x02))
					{
						Return (0x02)
					}
					Else
					{
						Return (0x03)
					}
				}
			}

			Device (USB5)
			{
				Name (_ADR, 0x00160002)  // _ADR: Address
				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x0B, 
					0x03
				})
				Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
				{
					If (LEqual (OSFL, 0x02))
					{
						Return (0x02)
					}
					Else
					{
						Return (0x03)
					}
				}
			}

			Device (USB6)
			{
				Name (_ADR, 0x00140005)  // _ADR: Address
				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x0B, 
					0x03
				})
				Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
				{
					If (LEqual (OSFL, 0x02))
					{
						Return (0x02)
					}
					Else
					{
						Return (0x03)
					}
				}
			}

			Device (SBAZ)
			{
				Name (_ADR, 0x00140002)  // _ADR: Address
				OperationRegion (PCI, PCI_Config, 0x00, 0x0100)
				Field (PCI, AnyAcc, NoLock, Preserve)
				{
					Offset (0x42), 
					DNSP,   1, 
					DNSO,   1, 
					ENSR,   1
				}

				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x1B, 
					0x04
				})
			}

			Device (SATA)
			{
				Name (_ADR, 0x00110000)  // _ADR: Address
				Method (_INI, 0, NotSerialized)  // _INI: Initialize
				{
				}

				OperationRegion (SACS, PCI_Config, 0x00, 0x40)
				Field (SACS, AnyAcc, NoLock, Preserve)
				{
					Offset (0x24), 
					STB5,   32
				}

				Name (SPTM, Buffer (0x14) /* STTM */
				{
					/* 0000 */   0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,
					/* 0008 */   0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,
					/* 0010 */   0x1F, 0x00, 0x00, 0x00
				})
				Device (PRID)
				{
					Name (_ADR, 0x00)  // _ADR: Address
					Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
					{
						Return (SPTM)
					}

					Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
					{
					}

					Name (PRIS, 0x00)
					Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
					{
						OperationRegion (BAR, SystemMemory, STB5, 0x0400)
						Field (BAR, AnyAcc, NoLock, Preserve)
						{
							Offset (0x120), 
								,   7, 
							PMBY,   1, 
							Offset (0x128), 
							PMS0,   4, 
							Offset (0x129), 
							PMS1,   4, 
							Offset (0x220), 
								,   7, 
							PSBY,   1, 
							Offset (0x228), 
							PSS0,   4, 
							Offset (0x229), 
							PSS1,   4, 
							Offset (0x2A0), 
								,   7
						}

						If (LOr (LEqual (OSTY, 0x06), LEqual (OSTY, 0x04)))
						{
							If (PMS1)
							{
								Store (0x32, Local0)
								While (LAnd (LEqual (PMBY, 0x01), Local0))
								{
									Sleep (0xFA)
									Decrement (Local0)
								}
							}

							If (PSS1)
							{
								Store (0x32, Local0)
								While (LAnd (LEqual (PSBY, 0x01), Local0))
								{
									Sleep (0xFA)
									Decrement (Local0)
								}
							}
						}

						Store (0x00, PRIS)
					}

					Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
					{
						Store (0x03, PRIS)
					}

					Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
					{
						Return (PRIS)
					}

					Device (P_D0)
					{
						Name (_ADR, 0x00)  // _ADR: Address
						Method (_STA, 0, NotSerialized)  // _STA: Status
						{
							OperationRegion (BAR, SystemMemory, STB5, 0x0400)
							Field (BAR, AnyAcc, NoLock, Preserve)
							{
								Offset (0x128), 
								PMS0,   4, 
								Offset (0x129), 
								PMS1,   4
							}

							If (Not (LEqual (PMS1, 0x00)))
							{
								Return (0x0F)
							}
							Else
							{
								Return (0x00)
							}
						}

						Name (S12P, 0x00)
						Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
						{
							OperationRegion (BAR, SystemMemory, STB5, 0x0400)
							Field (BAR, AnyAcc, NoLock, Preserve)
							{
								Offset (0x120), 
									,   7, 
								PMBY,   1
							}

							Store (0x32, Local0)
							While (LAnd (LEqual (PMBY, 0x01), Local0))
							{
								Sleep (0xFA)
								Decrement (Local0)
							}

							Store (0x00, S12P)
						}

						Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
						{
							Store (0x03, S12P)
						}

						Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
						{
							Return (S12P)
						}
					}

					Device (P_D1)
					{
						Name (_ADR, 0x01)  // _ADR: Address
						Method (_STA, 0, NotSerialized)  // _STA: Status
						{
							OperationRegion (BAR, SystemMemory, STB5, 0x0400)
							Field (BAR, AnyAcc, NoLock, Preserve)
							{
								Offset (0x228), 
								PSS0,   4, 
								Offset (0x229), 
								PSS1,   4
							}

							If (Not (LEqual (PSS1, 0x00)))
							{
								Return (0x0F)
							}
							Else
							{
								Return (0x00)
							}
						}

						Name (S12P, 0x00)
						Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
						{
							OperationRegion (BAR, SystemMemory, STB5, 0x0400)
							Field (BAR, AnyAcc, NoLock, Preserve)
							{
								Offset (0x220), 
									,   7, 
								PSBY,   1
							}

							Store (0x32, Local0)
							While (LAnd (LEqual (PSBY, 0x01), Local0))
							{
								Sleep (0xFA)
								Decrement (Local0)
							}

							Store (0x00, S12P)
						}

						Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
						{
							Store (0x03, S12P)
						}

						Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
						{
							Return (S12P)
						}
					}
				}

				Device (SECD)
				{
					Name (_ADR, 0x01)  // _ADR: Address
					Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
					{
						Return (SPTM)
					}

					Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
					{
					}

					Name (SECS, 0x00)
					Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
					{
						OperationRegion (BAR, SystemMemory, STB5, 0x0400)
						Field (BAR, AnyAcc, NoLock, Preserve)
						{
							Offset (0x1A0), 
								,   7, 
							SMBY,   1, 
							Offset (0x1A8), 
							SMS0,   4, 
							Offset (0x1A9), 
							SMS1,   4, 
							Offset (0x2A0), 
								,   7, 
							SSBY,   1, 
							Offset (0x2A8), 
							SSS0,   4, 
							Offset (0x2A9), 
							SSS1,   4, 
							Offset (0x2AC)
						}

						If (LOr (LEqual (OSTY, 0x06), LEqual (OSTY, 0x04)))
						{
							If (SMS1)
							{
								Store (0x32, Local0)
								While (LAnd (LEqual (SMBY, 0x01), Local0))
								{
									Sleep (0xFA)
									Decrement (Local0)
								}
							}

							If (SSS1)
							{
								Store (0x32, Local0)
								While (LAnd (LEqual (SSBY, 0x01), Local0))
								{
									Sleep (0xFA)
									Decrement (Local0)
								}
							}
						}

						Store (0x00, SECS)
					}

					Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
					{
						Store (0x03, SECS)
					}

					Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
					{
						Return (SECS)
					}

					Device (S_D0)
					{
						Name (_ADR, 0x00)  // _ADR: Address
						Method (_STA, 0, NotSerialized)  // _STA: Status
						{
							OperationRegion (BAR, SystemMemory, STB5, 0x0400)
							Field (BAR, AnyAcc, NoLock, Preserve)
							{
								Offset (0x1A8), 
								SMS0,   4, 
								Offset (0x1A9), 
								SMS1,   4
							}

							If (Not (LEqual (SMS1, 0x00)))
							{
								Return (0x0F)
							}
							Else
							{
								Return (0x00)
							}
						}

						Name (S12P, 0x00)
						Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
						{
							OperationRegion (BAR, SystemMemory, STB5, 0x1000)
							Field (BAR, AnyAcc, NoLock, Preserve)
							{
								Offset (0x1A0), 
									,   7, 
								SMBY,   1
							}

							Store (0x32, Local0)
							While (LAnd (LEqual (SMBY, 0x01), Local0))
							{
								Sleep (0xFA)
								Decrement (Local0)
							}

							Store (0x00, S12P)
						}

						Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
						{
							Store (0x03, S12P)
						}

						Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
						{
							Return (S12P)
						}
					}

					Device (S_D1)
					{
						Name (_ADR, 0x01)  // _ADR: Address
						Method (_STA, 0, NotSerialized)  // _STA: Status
						{
							OperationRegion (BAR, SystemMemory, STB5, 0x0400)
							Field (BAR, AnyAcc, NoLock, Preserve)
							{
								Offset (0x2A8), 
								SSS0,   4, 
								Offset (0x2A9), 
								SSS1,   4
							}

							If (Not (LEqual (SSS1, 0x00)))
							{
								Return (0x0F)
							}
							Else
							{
								Return (0x00)
							}
						}

						Name (S12P, 0x00)
						Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
						{
							OperationRegion (BAR, SystemMemory, STB5, 0x0400)
							Field (BAR, AnyAcc, NoLock, Preserve)
							{
								Offset (0x2A0), 
									,   7, 
								SSBY,   1
							}

							Store (0x32, Local0)
							While (LAnd (LEqual (SSBY, 0x01), Local0))
							{
								Sleep (0xFA)
								Decrement (Local0)
							}

							Store (0x00, S12P)
						}

						Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
						{
							Store (0x03, S12P)
						}

						Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
						{
							Return (S12P)
						}
					}
				}
			}

			Device (PEX0)
			{
				Name (_ADR, 0x00150000)  // _ADR: Address
				Method (_STA, 0, NotSerialized)  // _STA: Status
				{
					Return (0x0F)
				}

				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x0F, 
					0x05
				})
				Name (PIC0, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}
				})
				Name (API0, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x11
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PIC0)
					}
					Else
					{
						Return (API0)
					}
				}
			}

			Device (PEX1)
			{
				Name (_ADR, 0x00150001)  // _ADR: Address
				Method (_STA, 0, NotSerialized)  // _STA: Status
				{
					Return (0x0F)
				}

				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x10, 
					0x05
				})
				Name (PIC1, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}
				})
				Name (API1, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x11
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PIC1)
					}
					Else
					{
						Return (API1)
					}
				}
			}

			Device (PEX2)
			{
				Name (_ADR, 0x00150002)  // _ADR: Address
				Method (_STA, 0, NotSerialized)  // _STA: Status
				{
					Return (0x0F)
				}

				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x11, 
					0x05
				})
				Name (PIC2, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}
				})
				Name (API2, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x11
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PIC2)
					}
					Else
					{
						Return (API2)
					}
				}
			}

			Device (PEX3)
			{
				Name (_ADR, 0x00150003)  // _ADR: Address
				Method (_STA, 0, NotSerialized)  // _STA: Status
				{
					Return (0x0F)
				}

				Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
				{
					0x12, 
					0x05
				})
				Name (PIC3, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						\_SB.PCI0.LPC0.LNKB, 
						0x00
					}
				})
				Name (API3, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x11
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PIC3)
					}
					Else
					{
						Return (API3)
					}
				}
			}

			Device (LPC0)
			{
				Name (_ADR, 0x00140003)  // _ADR: Address
				Device (PMIO)
				{
					Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
					Name (_UID, 0x03)  // _UID: Unique ID
					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						Name (BUF0, ResourceTemplate ()
						{
							IO (Decode16,
								0x0900,             // Range Minimum
								0x0900,             // Range Maximum
								0x01,               // Alignment
								0x20,               // Length
								)
							IO (Decode16,
								0x0228,             // Range Minimum
								0x0228,             // Range Maximum
								0x01,               // Alignment
								0x08,               // Length
								)
							IO (Decode16,
								0x040B,             // Range Minimum
								0x040B,             // Range Maximum
								0x01,               // Alignment
								0x01,               // Length
								)
							IO (Decode16,
								0x04D6,             // Range Minimum
								0x04D6,             // Range Maximum
								0x01,               // Alignment
								0x01,               // Length
								)
							IO (Decode16,
								0x0C00,             // Range Minimum
								0x0C00,             // Range Maximum
								0x01,               // Alignment
								0x02,               // Length
								)
							IO (Decode16,
								0x0C14,             // Range Minimum
								0x0C14,             // Range Maximum
								0x01,               // Alignment
								0x01,               // Length
								)
							IO (Decode16,
								0x0C50,             // Range Minimum
								0x0C50,             // Range Maximum
								0x01,               // Alignment
								0x03,               // Length
								)
							IO (Decode16,
								0x0C6C,             // Range Minimum
								0x0C6C,             // Range Maximum
								0x01,               // Alignment
								0x02,               // Length
								)
							IO (Decode16,
								0x0C6F,             // Range Minimum
								0x0C6F,             // Range Maximum
								0x01,               // Alignment
								0x01,               // Length
								)
							IO (Decode16,
								0x0CD0,             // Range Minimum
								0x0CD0,             // Range Maximum
								0x01,               // Alignment
								0x02,               // Length
								)
							IO (Decode16,
								0x0CD2,             // Range Minimum
								0x0CD2,             // Range Maximum
								0x01,               // Alignment
								0x02,               // Length
								)
							IO (Decode16,
								0x0CD4,             // Range Minimum
								0x0CD4,             // Range Maximum
								0x01,               // Alignment
								0x0C,               // Length
								)
							IO (Decode16,
								0x0800,             // Range Minimum
								0x0800,             // Range Maximum
								0x01,               // Alignment
								0xFF,               // Length
								)
							IO (Decode16,
								0x0A10,             // Range Minimum
								0x0A10,             // Range Maximum
								0x01,               // Alignment
								0x08,               // Length
								)
							IO (Decode16,
								0x0B00,             // Range Minimum
								0x0B00,             // Range Maximum
								0x01,               // Alignment
								0x10,               // Length
								)
							IO (Decode16,
								0x0B10,             // Range Minimum
								0x0B10,             // Range Maximum
								0x01,               // Alignment
								0x10,               // Length
								)
							IO (Decode16,
								0x0B20,             // Range Minimum
								0x0B20,             // Range Maximum
								0x01,               // Alignment
								0x20,               // Length
								)
							DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
								0x00000000,         // Granularity
								0xE0000000,         // Range Minimum
								0xE0000000,         // Range Maximum
								0x00000000,         // Translation Offset
								0x00000001,         // Length MAX - MIN + 1
								,, _Y01, AddressRangeMemory, TypeStatic)
							DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
								0x00000000,         // Granularity
								0xFEE00400,         // Range Minimum
								0xFEE00FFF,         // Range Maximum
								0x00000000,         // Translation Offset
								0x00000C00,         // Length BFF+1
								,, , AddressRangeMemory, TypeStatic)
						})
						CreateDWordField (BUF0, \_SB.PCI0.LPC0.PMIO._CRS._Y01._MIN, BARX)  // _MIN: Minimum Base Address
						CreateDWordField (BUF0, \_SB.PCI0.LPC0.PMIO._CRS._Y01._LEN, GALN)  // _LEN: Length
						CreateDWordField (BUF0, \_SB.PCI0.LPC0.PMIO._CRS._Y01._MAX, GAMX)  // _MAX: Maximum Base Address
						Store (0x1000, GALN)
						Store (\_SB.PCI0.MMIO, Local0)
						And (Local0, 0xFFFFFFF0, BARX)
						Add (Local0, GALN, GAMX)
						Subtract (GAMX, 0x01, GAMX)
						Return (BUF0)
					}
				}

				OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
				Field (PIRQ, ByteAcc, NoLock, Preserve)
				{
					PIID,   8, 
					PIDA,   8
				}

				Name (IPRS, ResourceTemplate ()
				{
					IRQ (Level, ActiveLow, Shared, )
						{3,4,5,6,7,10,11}
				})
				IndexField (PIID, PIDA, ByteAcc, NoLock, Preserve)
				{
					PIRA,   8, 
					PIRB,   8, 
					PIRC,   8, 
					PIRD,   8, 
					PIRE,   8, 
					PIRF,   8, 
					PIRG,   8, 
					PIRH,   8, 
					Offset (0x10), 
					PIRS,   8, 
					Offset (0x13), 
					HDAD,   8, 
					Offset (0x15), 
					GEC,    8, 
					Offset (0x30), 
					USB1,   8, 
					USB2,   8, 
					USB3,   8, 
					USB4,   8, 
					USB5,   8, 
					USB6,   8, 
					USB7,   8, 
					Offset (0x40), 
					IDE,    8, 
					SATA,   8, 
					Offset (0x50), 
					GPP0,   8, 
					GPP1,   8, 
					GPP2,   8, 
					GPP3,   8
				}

				Method (DSPI, 0, NotSerialized)
				{
					Store (0x00, PIRA)
					Store (0x00, PIRB)
					Store (0x00, PIRC)
					Store (0x00, PIRD)
					Store (0x00, PIRE)
					Store (0x00, PIRF)
					Store (0x00, PIRG)
					Store (0x00, PIRH)
				}

				Device (LNKA)
				{
					Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
					Name (_UID, 0x01)  // _UID: Unique ID
					Method (_STA, 0, NotSerialized)  // _STA: Status
					{
						If (PIRA)
						{
							Return (0x0B)
						}
						Else
						{
							Return (0x09)
						}
					}

					Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
					{
						Return (IPRS)
					}

					Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
					{
						Store (0x00, PIRA)
					}

					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						Store (IPRS, Local0)
						CreateWordField (Local0, 0x01, IRQ0)
						ShiftLeft (0x01, PIRA, IRQ0)
						Return (Local0)
					}

					Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
					{
						CreateWordField (Arg0, 0x01, IRQ0)
						FindSetRightBit (IRQ0, Local0)
						Decrement (Local0)
						Store (Local0, PIRA)
					}
				}

				Device (LNKB)
				{
					Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
					Name (_UID, 0x02)  // _UID: Unique ID
					Method (_STA, 0, NotSerialized)  // _STA: Status
					{
						If (PIRB)
						{
							Return (0x0B)
						}
						Else
						{
							Return (0x09)
						}
					}

					Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
					{
						Return (IPRS)
					}

					Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
					{
						Store (0x00, PIRB)
					}

					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						Store (IPRS, Local0)
						CreateWordField (Local0, 0x01, IRQ0)
						ShiftLeft (0x01, PIRB, IRQ0)
						Return (Local0)
					}

					Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
					{
						CreateWordField (Arg0, 0x01, IRQ0)
						FindSetRightBit (IRQ0, Local0)
						Decrement (Local0)
						Store (Local0, PIRB)
					}
				}

				Device (LNKC)
				{
					Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
					Name (_UID, 0x03)  // _UID: Unique ID
					Method (_STA, 0, NotSerialized)  // _STA: Status
					{
						If (PIRC)
						{
							Return (0x0B)
						}
						Else
						{
							Return (0x09)
						}
					}

					Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
					{
						Return (IPRS)
					}

					Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
					{
						Store (0x00, PIRC)
					}

					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						Store (IPRS, Local0)
						CreateWordField (Local0, 0x01, IRQ0)
						ShiftLeft (0x01, PIRC, IRQ0)
						Return (Local0)
					}

					Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
					{
						CreateWordField (Arg0, 0x01, IRQ0)
						FindSetRightBit (IRQ0, Local0)
						Decrement (Local0)
						Store (Local0, PIRC)
					}
				}

				Device (LNKD)
				{
					Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
					Name (_UID, 0x04)  // _UID: Unique ID
					Method (_STA, 0, NotSerialized)  // _STA: Status
					{
						If (PIRD)
						{
							Return (0x0B)
						}
						Else
						{
							Return (0x09)
						}
					}

					Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
					{
						Return (IPRS)
					}

					Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
					{
						Store (0x00, PIRD)
					}

					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						Store (IPRS, Local0)
						CreateWordField (Local0, 0x01, IRQ0)
						ShiftLeft (0x01, PIRD, IRQ0)
						Return (Local0)
					}

					Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
					{
						CreateWordField (Arg0, 0x01, IRQ0)
						FindSetRightBit (IRQ0, Local0)
						Decrement (Local0)
						Store (Local0, PIRD)
					}
				}

				Device (LNKE)
				{
					Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
					Name (_UID, 0x05)  // _UID: Unique ID
					Method (_STA, 0, NotSerialized)  // _STA: Status
					{
						If (PIRE)
						{
							Return (0x0B)
						}
						Else
						{
							Return (0x09)
						}
					}

					Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
					{
						Return (IPRS)
					}

					Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
					{
						Store (0x00, PIRE)
					}

					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						Store (IPRS, Local0)
						CreateWordField (Local0, 0x01, IRQ0)
						ShiftLeft (0x01, PIRE, IRQ0)
						Return (Local0)
					}

					Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
					{
						CreateWordField (Arg0, 0x01, IRQ0)
						FindSetRightBit (IRQ0, Local0)
						Decrement (Local0)
						Store (Local0, PIRE)
					}
				}

				Device (LNKF)
				{
					Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
					Name (_UID, 0x06)  // _UID: Unique ID
					Method (_STA, 0, NotSerialized)  // _STA: Status
					{
						If (PIRF)
						{
							Return (0x0B)
						}
						Else
						{
							Return (0x09)
						}
					}

					Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
					{
						Return (IPRS)
					}

					Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
					{
						Store (0x00, PIRF)
					}

					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						Store (IPRS, Local0)
						CreateWordField (Local0, 0x01, IRQ0)
						ShiftLeft (0x01, PIRF, IRQ0)
						Return (Local0)
					}

					Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
					{
						CreateWordField (Arg0, 0x01, IRQ0)
						FindSetRightBit (IRQ0, Local0)
						Decrement (Local0)
						Store (Local0, PIRF)
					}
				}

				Device (LNK0)
				{
					Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
					Name (_UID, 0x07)  // _UID: Unique ID
					Method (_STA, 0, NotSerialized)  // _STA: Status
					{
						If (PIRG)
						{
							Return (0x0B)
						}
						Else
						{
							Return (0x09)
						}
					}

					Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
					{
						Return (IPRS)
					}

					Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
					{
						Store (0x00, PIRG)
					}

					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						Store (IPRS, Local0)
						CreateWordField (Local0, 0x01, IRQ0)
						ShiftLeft (0x01, PIRG, IRQ0)
						Return (Local0)
					}

					Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
					{
						CreateWordField (Arg0, 0x01, IRQ0)
						FindSetRightBit (IRQ0, Local0)
						Decrement (Local0)
						Store (Local0, PIRG)
					}
				}

				Device (LNK1)
				{
					Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
					Name (_UID, 0x08)  // _UID: Unique ID
					Method (_STA, 0, NotSerialized)  // _STA: Status
					{
						If (PIRH)
						{
							Return (0x0B)
						}
						Else
						{
							Return (0x09)
						}
					}

					Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
					{
						Return (IPRS)
					}

					Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
					{
						Store (0x00, PIRH)
					}

					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						Store (IPRS, Local0)
						CreateWordField (Local0, 0x01, IRQ0)
						ShiftLeft (0x01, PIRH, IRQ0)
						Return (Local0)
					}

					Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
					{
						CreateWordField (Arg0, 0x01, IRQ0)
						FindSetRightBit (IRQ0, Local0)
						Decrement (Local0)
						Store (Local0, PIRH)
					}
				}

				Device (PIC)
				{
					Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
					Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
					{
						IO (Decode16,
							0x0020,             // Range Minimum
							0x0020,             // Range Maximum
							0x01,               // Alignment
							0x02,               // Length
							)
						IO (Decode16,
							0x00A0,             // Range Minimum
							0x00A0,             // Range Maximum
							0x01,               // Alignment
							0x02,               // Length
							)
						IRQNoFlags ()
							{2}
					})
				}

				Device (DMA1)
				{
					Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
					Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
					{
						DMA (Compatibility, BusMaster, Transfer8, )
							{4}
						IO (Decode16,
							0x0000,             // Range Minimum
							0x0000,             // Range Maximum
							0x01,               // Alignment
							0x10,               // Length
							)
						IO (Decode16,
							0x0080,             // Range Minimum
							0x0080,             // Range Maximum
							0x01,               // Alignment
							0x11,               // Length
							)
						IO (Decode16,
							0x0094,             // Range Minimum
							0x0094,             // Range Maximum
							0x01,               // Alignment
							0x0C,               // Length
							)
						IO (Decode16,
							0x00C0,             // Range Minimum
							0x00C0,             // Range Maximum
							0x01,               // Alignment
							0x20,               // Length
							)
					})
				}

				Device (TMR)
				{
					Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
					Name (ATT5, ResourceTemplate ()
					{
						IO (Decode16,
							0x0040,             // Range Minimum
							0x0040,             // Range Maximum
							0x00,               // Alignment
							0x04,               // Length
							)
						IRQNoFlags ()
							{0}
					})
					Name (ATT6, ResourceTemplate ()
					{
						IO (Decode16,
							0x0040,             // Range Minimum
							0x0040,             // Range Maximum
							0x00,               // Alignment
							0x04,               // Length
							)
					})
					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						If (LGreaterEqual (OSFX, 0x03))
						{
							If (HPTF)
							{
								Return (ATT6)
							}
							Else
							{
								Return (ATT5)
							}
						}
						Else
						{
							Return (ATT5)
						}
					}
				}

				Device (HPET)
				{
					Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
					Name (ATT3, ResourceTemplate ()
					{
						IRQNoFlags ()
							{0}
						IRQNoFlags ()
							{8}
						Memory32Fixed (ReadWrite,
							0xFED00000,         // Address Base
							0x00000400,         // Address Length
							)
					})
					Name (ATT4, ResourceTemplate ()
					{
					})
					Method (_STA, 0, NotSerialized)  // _STA: Status
					{
						If (LGreaterEqual (OSFX, 0x03))
						{
							If (HPTF)
							{
								Return (0x0F)
							}
							Else
							{
								Return (0x00)
							}
						}
						Else
						{
							Return (0x00)
						}
					}

					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						If (LGreaterEqual (OSFX, 0x03))
						{
							If (HPTF)
							{
								Return (ATT3)
							}
							Else
							{
								Return (ATT4)
							}
						}
						Else
						{
							Return (ATT4)
						}
					}
				}

				Device (RTC)
				{
					Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
					Name (ATT0, ResourceTemplate ()
					{
						IO (Decode16,
							0x0070,             // Range Minimum
							0x0070,             // Range Maximum
							0x00,               // Alignment
							0x04,               // Length
							)
						IRQNoFlags ()
							{8}
					})
					Name (ATT1, ResourceTemplate ()
					{
						IO (Decode16,
							0x0070,             // Range Minimum
							0x0070,             // Range Maximum
							0x00,               // Alignment
							0x04,               // Length
							)
					})
					Name (ATT2, ResourceTemplate ()
					{
						IO (Decode16,
							0x0070,             // Range Minimum
							0x0070,             // Range Maximum
							0x00,               // Alignment
							0x02,               // Length
							)
						IRQNoFlags ()
							{8}
					})
					Name (ATT3, ResourceTemplate ()
					{
						IO (Decode16,
							0x0070,             // Range Minimum
							0x0070,             // Range Maximum
							0x00,               // Alignment
							0x02,               // Length
							)
					})
					Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
					{
						If (LGreaterEqual (OSFX, 0x03))
						{
							If (HPTF)
							{
								Return (ATT1)
							}
							Else
							{
								Return (ATT0)
							}
						}
						Else
						{
							If (LEqual (AMAC, 0x01))
							{
								Return (ATT2)
							}

							Return (ATT0)
						}
					}
				}

				Device (SPKR)
				{
					Name (_HID, EisaId ("PNP0800"))  // _HID: Hardware ID
					Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
					{
						IO (Decode16,
							0x0061,             // Range Minimum
							0x0061,             // Range Maximum
							0x01,               // Alignment
							0x01,               // Length
							)
					})
				}

				Device (COPR)
				{
					Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
					Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
					{
						IO (Decode16,
							0x00F0,             // Range Minimum
							0x00F0,             // Range Maximum
							0x01,               // Alignment
							0x10,               // Length
							)
						IRQNoFlags ()
							{13}
					})
				}

				OperationRegion (RTCM, SystemIO, 0x4E, 0x4F)
				OperationRegion (TPMI, SystemMemory, 0x000FFFEA, 0x01)
				Field (TPMI, ByteAcc, NoLock, Preserve)
				{
						,   3, 
					TPME,   1
				}

				Device (TPM)
				{
					Method (_STA, 0, NotSerialized)  // _STA: Status
					{
						If (TPME)
						{
							Return (0x0F)
						}
						Else
						{
							Return (0x00)
						}
					}

					Name (_HID, EisaId ("IFX0102"))  // _HID: Hardware ID
					Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
					Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
					{
						Memory32Fixed (ReadWrite,
							0xFED40000,         // Address Base
							0x00005000,         // Address Length
							)
						IO (Decode16,
							0x004E,             // Range Minimum
							0x004E,             // Range Maximum
							0x01,               // Alignment
							0x02,               // Length
							)
						IO (Decode16,
							0x4700,             // Range Minimum
							0x4700,             // Range Maximum
							0x01,               // Alignment
							0x0C,               // Length
							)
					})
				}
			}

			Device (P2P)
			{
				Name (_ADR, 0x00140004)  // _ADR: Address
				Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
				{
					If (LEqual (OSFL, 0x02))
					{
						Return (0x02)
					}
					Else
					{
						Return (0x03)
					}
				}

				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x04, 
						0x05
					})
				}

				Name (PICM, Package (0x0C)
				{
					Package (0x04)
					{
						0x0007FFFF, 
						0x00, 
						\_SB.PCI0.LPC0.LNKF, 
						0x00
					}, 

					Package (0x04)
					{
						0x0007FFFF, 
						0x01, 
						\_SB.PCI0.LPC0.LNK0, 
						0x00
					}, 

					Package (0x04)
					{
						0x0007FFFF, 
						0x02, 
						\_SB.PCI0.LPC0.LNK1, 
						0x00
					}, 

					Package (0x04)
					{
						0x0007FFFF, 
						0x03, 
						\_SB.PCI0.LPC0.LNKE, 
						0x00
					}, 

					Package (0x04)
					{
						0x0006FFFF, 
						0x00, 
						\_SB.PCI0.LPC0.LNKE, 
						0x00
					}, 

					Package (0x04)
					{
						0x0006FFFF, 
						0x01, 
						\_SB.PCI0.LPC0.LNKF, 
						0x00
					}, 

					Package (0x04)
					{
						0x0006FFFF, 
						0x02, 
						\_SB.PCI0.LPC0.LNK0, 
						0x00
					}, 

					Package (0x04)
					{
						0x0006FFFF, 
						0x03, 
						\_SB.PCI0.LPC0.LNK1, 
						0x00
					}, 

					Package (0x04)
					{
						0x000EFFFF, 
						0x00, 
						\_SB.PCI0.LPC0.LNK0, 
						0x00
					}, 

					Package (0x04)
					{
						0x000EFFFF, 
						0x01, 
						\_SB.PCI0.LPC0.LNK0, 
						0x00
					}, 

					Package (0x04)
					{
						0x000EFFFF, 
						0x02, 
						\_SB.PCI0.LPC0.LNK0, 
						0x00
					}, 

					Package (0x04)
					{
						0x000EFFFF, 
						0x03, 
						\_SB.PCI0.LPC0.LNK0, 
						0x00
					}
				})
				Name (APIC, Package (0x0C)
				{
					Package (0x04)
					{
						0x0007FFFF, 
						0x00, 
						0x00, 
						0x15
					}, 

					Package (0x04)
					{
						0x0007FFFF, 
						0x01, 
						0x00, 
						0x16
					}, 

					Package (0x04)
					{
						0x0007FFFF, 
						0x02, 
						0x00, 
						0x17
					}, 

					Package (0x04)
					{
						0x0007FFFF, 
						0x03, 
						0x00, 
						0x14
					}, 

					Package (0x04)
					{
						0x0006FFFF, 
						0x00, 
						0x00, 
						0x14
					}, 

					Package (0x04)
					{
						0x0006FFFF, 
						0x01, 
						0x00, 
						0x15
					}, 

					Package (0x04)
					{
						0x0006FFFF, 
						0x02, 
						0x00, 
						0x16
					}, 

					Package (0x04)
					{
						0x0006FFFF, 
						0x03, 
						0x00, 
						0x17
					}, 

					Package (0x04)
					{
						0x000EFFFF, 
						0x00, 
						0x00, 
						0x16
					}, 

					Package (0x04)
					{
						0x000EFFFF, 
						0x01, 
						0x00, 
						0x16
					}, 

					Package (0x04)
					{
						0x000EFFFF, 
						0x02, 
						0x00, 
						0x16
					}, 

					Package (0x04)
					{
						0x000EFFFF, 
						0x03, 
						0x00, 
						0x16
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (IDE)
			{
				Name (_ADR, 0x00140001)  // _ADR: Address
				Name (UDMT, Package (0x08)
				{
					0x78, 
					0x5A, 
					0x3C, 
					0x2D, 
					0x1E, 
					0x14, 
					0x0F, 
					0x00
				})
				Name (PIOT, Package (0x06)
				{
					0x0258, 
					0x0186, 
					0x010E, 
					0xB4, 
					0x78, 
					0x00
				})
				Name (PITR, Package (0x06)
				{
					0x99, 
					0x47, 
					0x34, 
					0x22, 
					0x20, 
					0x99
				})
				Name (MDMT, Package (0x04)
				{
					0x01E0, 
					0x96, 
					0x78, 
					0x00
				})
				Name (MDTR, Package (0x04)
				{
					0x77, 
					0x21, 
					0x20, 
					0xFF
				})
				OperationRegion (IDE, PCI_Config, 0x40, 0x20)
				Field (IDE, AnyAcc, NoLock, Preserve)
				{
					PPIT,   16, 
					SPIT,   16, 
					PMDT,   16, 
					SMDT,   16, 
					PPIC,   8, 
					SPIC,   8, 
					PPIM,   8, 
					SPIM,   8, 
					Offset (0x14), 
					PUDC,   2, 
					SUDC,   2, 
					Offset (0x16), 
					PUDM,   8, 
					SUDM,   8
				}

				Method (GETT, 1, NotSerialized)
				{
					Store (And (Arg0, 0x0F), Local0)
					Store (ShiftRight (Arg0, 0x04), Local1)
					Return (Multiply (0x1E, Add (Add (Local0, 0x01), Add (Local1, 
						0x01))))
				}

				Method (GTM, 1, NotSerialized)
				{
					CreateByteField (Arg0, 0x00, PIT1)
					CreateByteField (Arg0, 0x01, PIT0)
					CreateByteField (Arg0, 0x02, MDT1)
					CreateByteField (Arg0, 0x03, MDT0)
					CreateByteField (Arg0, 0x04, PICX)
					CreateByteField (Arg0, 0x05, UDCX)
					CreateByteField (Arg0, 0x06, UDMX)
					Name (BUF, Buffer (0x14)
					{
						/* 0000 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
						/* 0008 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
						/* 0010 */   0x00, 0x00, 0x00, 0x00
					})
					CreateDWordField (BUF, 0x00, PIO0)
					CreateDWordField (BUF, 0x04, DMA0)
					CreateDWordField (BUF, 0x08, PIO1)
					CreateDWordField (BUF, 0x0C, DMA1)
					CreateDWordField (BUF, 0x10, FLAG)
					If (And (PICX, 0x01))
					{
						Return (BUF)
					}

					Store (GETT (PIT0), PIO0)
					Store (GETT (PIT1), PIO1)
					If (And (UDCX, 0x01))
					{
						Or (FLAG, 0x01, FLAG)
						Store (DerefOf (Index (^UDMT, And (UDMX, 0x0F))), DMA0)
					}
					Else
					{
						Store (GETT (MDT0), DMA0)
					}

					If (And (UDCX, 0x02))
					{
						Or (FLAG, 0x04, FLAG)
						Store (DerefOf (Index (^UDMT, ShiftRight (UDMX, 0x04))), DMA1)
					}
					Else
					{
						Store (GETT (MDT1), DMA1)
					}

					Or (FLAG, 0x1A, FLAG)
					Return (BUF)
				}

				Method (STM, 3, NotSerialized)
				{
					CreateDWordField (Arg0, 0x00, PIO0)
					CreateDWordField (Arg0, 0x04, DMA0)
					CreateDWordField (Arg0, 0x08, PIO1)
					CreateDWordField (Arg0, 0x0C, DMA1)
					CreateDWordField (Arg0, 0x10, FLAG)
					Name (BUF, Buffer (0x07)
					{
						 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00
					})
					CreateByteField (BUF, 0x00, PIT1)
					CreateByteField (BUF, 0x01, PIT0)
					CreateByteField (BUF, 0x02, MDT1)
					CreateByteField (BUF, 0x03, MDT0)
					CreateByteField (BUF, 0x04, PIMX)
					CreateByteField (BUF, 0x05, UDCX)
					CreateByteField (BUF, 0x06, UDMX)
					Store (Match (^PIOT, MLE, PIO0, MTR, 0x00, 0x00), Local0)
					Divide (Local0, 0x05, Local0)
					Store (Match (^PIOT, MLE, PIO1, MTR, 0x00, 0x00), Local1)
					Divide (Local1, 0x05, Local1)
					Store (Or (ShiftLeft (Local1, 0x04), Local0), PIMX)
					Store (DerefOf (Index (^PITR, Local0)), PIT0)
					Store (DerefOf (Index (^PITR, Local1)), PIT1)
					If (And (FLAG, 0x01))
					{
						Store (Match (^UDMT, MLE, DMA0, MTR, 0x00, 0x00), Local0)
						Divide (Local0, 0x07, Local0)
						Or (UDMX, Local0, UDMX)
						Or (UDCX, 0x01, UDCX)
					}
					Else
					{
						If (LNotEqual (DMA0, 0xFFFFFFFF))
						{
							Store (Match (^MDMT, MLE, DMA0, MTR, 0x00, 0x00), Local0)
							Store (DerefOf (Index (^MDTR, Local0)), MDT0)
						}
					}

					If (And (FLAG, 0x04))
					{
						Store (Match (^UDMT, MLE, DMA1, MTR, 0x00, 0x00), Local0)
						Divide (Local0, 0x07, Local0)
						Or (UDMX, ShiftLeft (Local0, 0x04), UDMX)
						Or (UDCX, 0x02, UDCX)
					}
					Else
					{
						If (LNotEqual (DMA1, 0xFFFFFFFF))
						{
							Store (Match (^MDMT, MLE, DMA1, MTR, 0x00, 0x00), Local0)
							Store (DerefOf (Index (^MDTR, Local0)), MDT1)
						}
					}

					Return (BUF)
				}

				Method (GTF, 2, NotSerialized)
				{
					CreateByteField (Arg1, 0x00, MDT1)
					CreateByteField (Arg1, 0x01, MDT0)
					CreateByteField (Arg1, 0x02, PIMX)
					CreateByteField (Arg1, 0x03, UDCX)
					CreateByteField (Arg1, 0x04, UDMX)
					If (LEqual (Arg0, 0xA0))
					{
						Store (And (PIMX, 0x0F), Local0)
						Store (MDT0, Local1)
						And (UDCX, 0x01, Local2)
						Store (And (UDMX, 0x0F), Local3)
					}
					Else
					{
						Store (ShiftRight (PIMX, 0x04), Local0)
						Store (MDT1, Local1)
						And (UDCX, 0x02, Local2)
						Store (ShiftRight (UDMX, 0x04), Local3)
					}

					Name (BUF, Buffer (0x0E)
					{
						/* 0000 */   0x03, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xEF, 0x03,
						/* 0008 */   0x00, 0x00, 0x00, 0x00, 0xFF, 0xEF
					})
					CreateByteField (BUF, 0x01, PMOD)
					CreateByteField (BUF, 0x08, DMOD)
					CreateByteField (BUF, 0x05, CMDA)
					CreateByteField (BUF, 0x0C, CMDB)
					Store (Arg0, CMDA)
					Store (Arg0, CMDB)
					Or (Local0, 0x08, PMOD)
					If (Local2)
					{
						Or (Local3, 0x40, DMOD)
					}
					Else
					{
						Store (Match (^MDMT, MLE, GETT (Local1), MTR, 0x00, 0x00), Local4)
						If (LLess (Local4, 0x03))
						{
							Or (0x20, Local4, DMOD)
						}
					}

					Return (BUF)
				}

				Device (PRID)
				{
					Name (_ADR, 0x00)  // _ADR: Address
					Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
					{
						Name (BUF, Buffer (0x07)
						{
							 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00
						})
						CreateWordField (BUF, 0x00, VPIT)
						CreateWordField (BUF, 0x02, VMDT)
						CreateByteField (BUF, 0x04, VPIC)
						CreateByteField (BUF, 0x05, VUDC)
						CreateByteField (BUF, 0x06, VUDM)
						Store (^^PPIT, VPIT)
						Store (^^PMDT, VMDT)
						Store (^^PPIC, VPIC)
						Store (^^PUDC, VUDC)
						Store (^^PUDM, VUDM)
						Return (GTM (BUF))
					}

					Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
					{
						Name (BUF, Buffer (0x07)
						{
							 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
						})
						CreateWordField (BUF, 0x00, VPIT)
						CreateWordField (BUF, 0x02, VMDT)
						CreateByteField (BUF, 0x04, VPIM)
						CreateByteField (BUF, 0x05, VUDC)
						CreateByteField (BUF, 0x06, VUDM)
						Store (STM (Arg0, Arg1, Arg2), BUF)
						Store (VPIT, ^^PPIT)
						Store (VMDT, ^^PMDT)
						Store (VPIM, ^^PPIM)
						Store (VUDC, ^^PUDC)
						Store (VUDM, ^^PUDM)
					}

					Device (P_D0)
					{
						Name (_ADR, 0x00)  // _ADR: Address
						Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
						{
							Name (BUF, Buffer (0x05)
							{
								 0x00, 0x00, 0x00, 0x00, 0x00
							})
							CreateWordField (BUF, 0x00, VMDT)
							CreateByteField (BUF, 0x02, VPIM)
							CreateByteField (BUF, 0x03, VUDC)
							CreateByteField (BUF, 0x04, VUDM)
							Store (^^^PMDT, VMDT)
							Store (^^^PPIM, VPIM)
							Store (^^^PUDC, VUDC)
							Store (^^^PUDM, VUDM)
							Return (GTF (0xA0, BUF))
						}
					}

					Device (P_D1)
					{
						Name (_ADR, 0x01)  // _ADR: Address
						Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
						{
							Name (BUF, Buffer (0x05)
							{
								 0x00, 0x00, 0x00, 0x00, 0x00
							})
							CreateWordField (BUF, 0x00, VMDT)
							CreateByteField (BUF, 0x02, VPIM)
							CreateByteField (BUF, 0x03, VUDC)
							CreateByteField (BUF, 0x04, VUDM)
							Store (^^^PMDT, VMDT)
							Store (^^^PPIM, VPIM)
							Store (^^^PUDC, VUDC)
							Store (^^^PUDM, VUDM)
							Return (GTF (0xB0, BUF))
						}
					}
				}

				Device (SECD)
				{
					Name (_ADR, 0x01)  // _ADR: Address
					Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
					{
						Name (BUF, Buffer (0x07)
						{
							 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00
						})
						CreateWordField (BUF, 0x00, VPIT)
						CreateWordField (BUF, 0x02, VMDT)
						CreateByteField (BUF, 0x04, VPIC)
						CreateByteField (BUF, 0x05, VUDC)
						CreateByteField (BUF, 0x06, VUDM)
						Store (^^SPIT, VPIT)
						Store (^^SMDT, VMDT)
						Store (^^SPIC, VPIC)
						Store (^^SUDC, VUDC)
						Store (^^SUDM, VUDM)
						Return (GTM (BUF))
					}

					Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
					{
						Name (BUF, Buffer (0x07)
						{
							 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
						})
						CreateWordField (BUF, 0x00, VPIT)
						CreateWordField (BUF, 0x02, VMDT)
						CreateByteField (BUF, 0x04, VPIM)
						CreateByteField (BUF, 0x05, VUDC)
						CreateByteField (BUF, 0x06, VUDM)
						Store (STM (Arg0, Arg1, Arg2), BUF)
						Store (VPIT, ^^SPIT)
						Store (VMDT, ^^SMDT)
						Store (VPIM, ^^SPIM)
						Store (VUDC, ^^SUDC)
						Store (VUDM, ^^SUDM)
					}

					Device (S_D0)
					{
						Name (_ADR, 0x00)  // _ADR: Address
						Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
						{
							Name (BUF, Buffer (0x05)
							{
								 0x00, 0x00, 0x00, 0x00, 0x00
							})
							CreateWordField (BUF, 0x00, VMDT)
							CreateByteField (BUF, 0x02, VPIM)
							CreateByteField (BUF, 0x03, VUDC)
							CreateByteField (BUF, 0x04, VUDM)
							Store (^^^SMDT, VMDT)
							Store (^^^SPIM, VPIM)
							Store (^^^SUDC, VUDC)
							Store (^^^SUDM, VUDM)
							Return (GTF (0xA0, BUF))
						}
					}

					Device (S_D1)
					{
						Name (_ADR, 0x01)  // _ADR: Address
						Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
						{
							Name (BUF, Buffer (0x05)
							{
								 0x00, 0x00, 0x00, 0x00, 0x00
							})
							CreateWordField (BUF, 0x00, VMDT)
							CreateByteField (BUF, 0x02, VPIM)
							CreateByteField (BUF, 0x03, VUDC)
							CreateByteField (BUF, 0x04, VUDM)
							Store (^^^SMDT, VMDT)
							Store (^^^SPIM, VPIM)
							Store (^^^SUDC, VUDC)
							Store (^^^SUDM, VUDM)
							Return (GTF (0xB0, BUF))
						}
					}
				}
			}

			Device (PCE2)
			{
				Name (_ADR, 0x00020000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKC, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKD, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKA, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKB, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x12
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x13
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x10
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x11
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (PCE3)
			{
				Name (_ADR, 0x00030000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKD, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKA, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKC, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x13
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x10
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x12
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (PCE4)
			{
				Name (_ADR, 0x00040000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKA, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKC, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKD, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x10
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x12
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x13
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (PCE5)
			{
				Name (_ADR, 0x00050000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKC, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKD, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKA, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x12
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x13
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x10
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (PCE6)
			{
				Name (_ADR, 0x00060000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKC, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKD, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKA, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKB, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x12
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x13
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x10
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x11
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (PCE7)
			{
				Name (_ADR, 0x00070000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKD, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKA, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKC, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x13
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x10
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x12
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (PCE9)
			{
				Name (_ADR, 0x00090000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKC, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKD, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKA, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x12
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x13
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x10
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (PCEA)
			{
				Name (_ADR, 0x000A0000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKC, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKD, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKA, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKB, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x12
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x13
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x10
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x11
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (PCEB)
			{
				Name (_ADR, 0x000B0000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKD, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKA, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKC, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x13
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x10
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x12
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (PCEC)
			{
				Name (_ADR, 0x000C0000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKA, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKC, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKD, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x10
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x12
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x13
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Device (PCED)
			{
				Name (_ADR, 0x000D0000)  // _ADR: Address
				Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
				{
					Return (Package (0x02)
					{
						0x18, 
						0x04
					})
				}

				Name (PICM, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						LNKB, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						LNKC, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						LNKD, 
						0x00
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						LNKA, 
						0x00
					}
				})
				Name (APIC, Package (0x04)
				{
					Package (0x04)
					{
						0xFFFF, 
						0x00, 
						0x00, 
						0x11
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x01, 
						0x00, 
						0x12
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x02, 
						0x00, 
						0x13
					}, 

					Package (0x04)
					{
						0xFFFF, 
						0x03, 
						0x00, 
						0x10
					}
				})
				Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
				{
					If (LNot (PICF))
					{
						Return (PICM)
					}
					Else
					{
						Return (APIC)
					}
				}
			}

			Scope (\)
			{
				Method (DISD, 1, NotSerialized)
				{
				}

				Method (CKIO, 2, NotSerialized)
				{
				}

				Method (SLDM, 2, NotSerialized)
				{
				}
			}

			Scope (\_SB.PCI0)
			{
				Name (SLIC, Buffer (0x9E)
				{
				/*
					0x34, 0x33, 0x39, 0x33, 0x35, 0x34, 0x38, 0x37, 
					0x32, 0x38, 0x31, 0x32, 0x47, 0x65, 0x6E, 0x75, 
					0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44, 
					0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 
					0x66, 0x69, 0x65, 0x64, 0x20, 0x53, 0x4C, 0x49, 
					0x20, 0x52, 0x65, 0x61, 0x64, 0x79, 0x20, 0x4D, 
					0x6F, 0x74, 0x68, 0x65, 0x72, 0x62, 0x6F, 0x61, 
					0x72, 0x64, 0x20, 0x66, 0x6F, 0x72, 0x20, 0x47, 
					0x49, 0x47, 0x41, 0x42, 0x59, 0x54, 0x45, 0x20, 
					0x47, 0x41, 0x39, 0x39, 0x30, 0x58, 0x41, 0x2D, 
					0x55, 0x44, 0x33, 0x32, 0x34, 0x30, 0x65, 0x2D, 
					0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67, 0x68, 
					0x74, 0x20, 0x32, 0x30, 0x31, 0x31, 0x20, 0x4E, 
					0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43, 0x6F, 
					0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69, 0x6F, 
					0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52, 0x69, 
					0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65, 0x73, 
					0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x34, 0x39, 
					0x35, 0x38, 0x30, 0x32, 0x36, 0x33, 0x35, 0x34, 
					0x36, 0x37, 0x28, 0x52, 0x29, 0x00
				*/
					"439354872812Genuine NVIDIA Certified SLI Ready Motherboard for GIGABYTE GA990XA-UD3240e-Copyright 2011 NVIDIA Corporation All Rights Reserved-495802635467(R)"
				})
				Device (WMI1)
				{
					Name (_HID, "PNP0C14")  // _HID: Hardware ID
					Name (_UID, "MXM2")  // _UID: Unique ID
					Name (_WDG, Buffer (0x14)
					{
						/* 0000 */   0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,
						/* 0008 */   0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,
						/* 0010 */   0x4D, 0x58, 0x01, 0x02
					})
					Method (WMMX, 3, NotSerialized)
					{
						CreateDWordField (Arg2, 0x00, FUNC)
						If (LEqual (FUNC, 0x41494C53))
						{
							Return (\_SB.PCI0.SLIC)
						}

						Return (0x00)
					}
				}
			}

			Scope (\)
			{
				OperationRegion (WIN1, SystemIO, 0x2E, 0x02)
				Field (WIN1, ByteAcc, NoLock, Preserve)
				{
					INDP,   8, 
					DATP,   8
				}

				OperationRegion (GPIO, SystemIO, 0x0800, 0x05)
				Field (GPIO, ByteAcc, NoLock, Preserve)
				{
					GO01,   8, 
					GO02,   8, 
					GO03,   8, 
					GO04,   8, 
					GO05,   8
				}

				IndexField (INDP, DATP, ByteAcc, NoLock, Preserve)
				{
					Offset (0x02), 
					CFG,    8, 
					Offset (0x07), 
					LDN,    8, 
					Offset (0x20), 
					IDHI,   8, 
					IDLO,   8, 
					POWC,   8, 
					Offset (0x30), 
					ACTR,   8, 
					Offset (0x60), 
					IOAH,   8, 
					IOAL,   8, 
					IO2H,   8, 
					IO2L,   8, 
					Offset (0x70), 
					INTR,   8, 
					Offset (0x72), 
					INT1,   8, 
					Offset (0x74), 
					DMCH,   8, 
					Offset (0xC0), 
					GP40,   8, 
					Offset (0xF0), 
					OPT1,   8, 
					OPT2,   8, 
					OPT3,   8, 
					OPT4,   8
				}

				Method (ENFG, 0, NotSerialized)
				{
					Store (0x87, INDP)
					Store (0x01, INDP)
					Store (0x55, INDP)
					Store (0x55, INDP)
				}

				Method (EXFG, 0, NotSerialized)
				{
					Store (0x02, CFG)
				}

				Method (GSRG, 1, NotSerialized)
				{
					Store (Arg0, INDP)
					Return (DATP)
				}

				Method (SSRG, 2, NotSerialized)
				{
					Store (Arg0, INDP)
					Store (Arg1, DATP)
				}
			}

			Device (FDC0)
			{
				Name (_HID, EisaId ("PNP0700"))  // _HID: Hardware ID
				Method (_STA, 0, NotSerialized)  // _STA: Status
				{
					ENFG ()
					Store (Zero, LDN)
					If (ACTR)
					{
						EXFG ()
						Return (0x0F)
					}
					Else
					{
						If (LOr (IOAH, IOAL))
						{
							EXFG ()
							Return (0x0D)
						}
						Else
						{
							EXFG ()
							Return (0x00)
						}
					}
				}

				Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
				{
					ENFG ()
					Store (0x00, LDN)
					Store (Zero, ACTR)
					SLDM (DMCH, 0x04)
					EXFG ()
					DISD (0x03)
				}

				Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
				{
					Name (BUF0, ResourceTemplate ()
					{
						IO (Decode16,
							0x03F0,             // Range Minimum
							0x03F0,             // Range Maximum
							0x01,               // Alignment
							0x06,               // Length
							_Y02)
						IO (Decode16,
							0x03F7,             // Range Minimum
							0x03F7,             // Range Maximum
							0x01,               // Alignment
							0x01,               // Length
							)
						IRQNoFlags ()
							{6}
						DMA (Compatibility, NotBusMaster, Transfer8, )
							{2}
					})
					CreateByteField (BUF0, \_SB.PCI0.FDC0._CRS._Y02._MIN, IOLO)  // _MIN: Minimum Base Address
					CreateByteField (BUF0, 0x03, IOHI)
					CreateByteField (BUF0, \_SB.PCI0.FDC0._CRS._Y02._MAX, IORL)  // _MAX: Maximum Base Address
					CreateByteField (BUF0, 0x05, IORH)
					ENFG ()
					EXFG ()
					Return (BUF0)
				}

				Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
				{
					StartDependentFnNoPri ()
					{
						IO (Decode16,
							0x03F0,             // Range Minimum
							0x03F0,             // Range Maximum
							0x01,               // Alignment
							0x06,               // Length
							)
						IO (Decode16,
							0x03F7,             // Range Minimum
							0x03F7,             // Range Maximum
							0x01,               // Alignment
							0x01,               // Length
							)
						IRQNoFlags ()
							{6}
						DMA (Compatibility, NotBusMaster, Transfer8, )
							{2}
					}
					EndDependentFn ()
				})
				Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
				{
					CreateByteField (Arg0, 0x02, IOLO)
					CreateByteField (Arg0, 0x03, IOHI)
					CreateWordField (Arg0, 0x02, IOAD)
					CreateWordField (Arg0, 0x19, IRQW)
					CreateByteField (Arg0, 0x1C, DMAV)
					ENFG ()
					Store (Zero, LDN)
					Store (One, ACTR)
					SLDM (DMCH, DMCH)
					CKIO (IOAD, 0x03)
					EXFG ()
				}
			}

			Device (UAR1)
			{
				Name (_HID, EisaId ("PNP0501"))  // _HID: Hardware ID
				Name (_UID, 0x01)  // _UID: Unique ID
				Method (_STA, 0, NotSerialized)  // _STA: Status
				{
					ENFG ()
					Store (0x01, LDN)
					If (ACTR)
					{
						EXFG ()
						Return (0x0F)
					}
					Else
					{
						If (LOr (IOAH, IOAL))
						{
							EXFG ()
							Return (0x0D)
						}
						Else
						{
							EXFG ()
							Return (0x00)
						}
					}

					EXFG ()
				}

				Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
				{
					ENFG ()
					Store (0x01, LDN)
					Store (Zero, ACTR)
					EXFG ()
					DISD (0x00)
				}

				Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
				{
					Name (BUF1, ResourceTemplate ()
					{
						IO (Decode16,
							0x0000,             // Range Minimum
							0x0000,             // Range Maximum
							0x01,               // Alignment
							0x08,               // Length
							_Y03)
						IRQNoFlags (_Y04)
							{}
					})
					CreateByteField (BUF1, \_SB.PCI0.UAR1._CRS._Y03._MIN, IOLO)  // _MIN: Minimum Base Address
					CreateByteField (BUF1, 0x03, IOHI)
					CreateByteField (BUF1, \_SB.PCI0.UAR1._CRS._Y03._MAX, IORL)  // _MAX: Maximum Base Address
					CreateByteField (BUF1, 0x05, IORH)
					CreateWordField (BUF1, \_SB.PCI0.UAR1._CRS._Y04._INT, IRQW)  // _INT: Interrupts
					ENFG ()
					Store (0x01, LDN)
					Store (IOAL, IOLO)
					Store (IOAL, IORL)
					Store (IOAH, IOHI)
					Store (IOAH, IORH)
					Store (One, Local0)
					ShiftLeft (Local0, INTR, IRQW)
					EXFG ()
					Return (BUF1)
				}

				Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
				{
					StartDependentFnNoPri ()
					{
						IO (Decode16,
							0x03F8,             // Range Minimum
							0x03F8,             // Range Maximum
							0x01,               // Alignment
							0x08,               // Length
							)
						IRQNoFlags ()
							{3,4,5,7,9,10,11,12}
					}
					StartDependentFnNoPri ()
					{
						IO (Decode16,
							0x02F8,             // Range Minimum
							0x02F8,             // Range Maximum
							0x01,               // Alignment
							0x08,               // Length
							)
						IRQNoFlags ()
							{3,4,5,7,9,10,11,12}
					}
					StartDependentFnNoPri ()
					{
						IO (Decode16,
							0x03E8,             // Range Minimum
							0x03E8,             // Range Maximum
							0x01,               // Alignment
							0x08,               // Length
							)
						IRQNoFlags ()
							{3,4,5,7,9,10,11,12}
					}
					StartDependentFnNoPri ()
					{
						IO (Decode16,
							0x02E8,             // Range Minimum
							0x02E8,             // Range Maximum
							0x01,               // Alignment
							0x08,               // Length
							)
						IRQNoFlags ()
							{3,4,5,7,9,10,11,12}
					}
					EndDependentFn ()
				})
				Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
				{
					CreateByteField (Arg0, 0x02, IOLO)
					CreateByteField (Arg0, 0x03, IOHI)
					CreateWordField (Arg0, 0x02, IOAD)
					CreateWordField (Arg0, 0x09, IRQW)
					ENFG ()
					Store (0x01, LDN)
					Store (One, ACTR)
					Store (IOLO, IOAL)
					Store (IOHI, IOAH)
					FindSetRightBit (IRQW, Local0)
					Subtract (Local0, 0x01, INTR)
					EXFG ()
					CKIO (IOAD, 0x00)
				}
			}

			OperationRegion (KBCT, SystemIO, 0x60, 0x05)
			Field (KBCT, ByteAcc, NoLock, Preserve)
			{
				P060,   8, 
				Offset (0x04), 
				P064,   8
			}

			Device (PS2M)
			{
				Name (_HID, EisaId ("PNP0F13"))  // _HID: Hardware ID
				Method (_STA, 0, NotSerialized)  // _STA: Status
				{
					If (LEqual (PS2F, 0x00))
					{
						Return (0x0F)
					}
					Else
					{
						Return (0x00)
					}
				}

				Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
				{
					Name (BUF1, ResourceTemplate ()
					{
						IRQNoFlags ()
							{12}
					})
					Name (BUF2, ResourceTemplate ()
					{
						IO (Decode16,
							0x0060,             // Range Minimum
							0x0060,             // Range Maximum
							0x01,               // Alignment
							0x01,               // Length
							)
						IO (Decode16,
							0x0064,             // Range Minimum
							0x0064,             // Range Maximum
							0x01,               // Alignment
							0x01,               // Length
							)
						IRQNoFlags ()
							{12}
					})
					If (LEqual (KBDI, 0x01))
					{
						If (LEqual (OSFL, 0x02))
						{
							Return (BUF1)
						}

						If (LEqual (OSFL, 0x01))
						{
							Return (BUF1)
						}
						Else
						{
							Return (BUF2)
						}
					}
					Else
					{
						Return (BUF1)
					}
				}
			}

			Device (PS2K)
			{
				Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
				Method (_STA, 0, NotSerialized)  // _STA: Status
				{
					If (LEqual (KBDI, 0x01))
					{
						Return (0x00)
					}
					Else
					{
						Return (0x0F)
					}
				}

				Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
				{
					IO (Decode16,
						0x0060,             // Range Minimum
						0x0060,             // Range Maximum
						0x01,               // Alignment
						0x01,               // Length
						)
					IO (Decode16,
						0x0064,             // Range Minimum
						0x0064,             // Range Maximum
						0x01,               // Alignment
						0x01,               // Length
						)
					IRQNoFlags ()
						{1}
				})
			}

			Device (PSMR)
			{
				Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
				Name (_UID, 0x03)  // _UID: Unique ID
				Method (_STA, 0, NotSerialized)  // _STA: Status
				{
					If (LEqual (KBDI, 0x00))
					{
						Return (0x00)
					}

					If (LEqual (PS2F, 0x00))
					{
						If (LEqual (OSFL, 0x02))
						{
							Return (0x0F)
						}

						If (LEqual (OSFL, 0x01))
						{
							Return (0x0F)
						}

						Return (0x00)
					}

					Return (0x00)
				}

				Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
				{
					IO (Decode16,
						0x0060,             // Range Minimum
						0x0060,             // Range Maximum
						0x01,               // Alignment
						0x01,               // Length
						)
					IO (Decode16,
						0x0064,             // Range Minimum
						0x0064,             // Range Maximum
						0x01,               // Alignment
						0x01,               // Length
						)
				})
			}

			Scope (\)
			{
				Method (SLD1, 1, NotSerialized)
				{
					ENFG ()
					Store (0x07, LDN)
					SSRG (0xF8, 0x10)
					SSRG (0xF9, 0x01)
					And (0x20, 0x0F, Local0)
					ShiftLeft (0x01, Local0, Local0)
					And (0x20, 0xF0, Local1)
					ShiftRight (Local1, 0x04, Local1)
					Add (Local1, 0xAF, Local1)
					Store (GSRG (Local1), Local2)
					Or (Local2, Local0, Local2)
					Not (Local0, Local0)
					If (LLess (Arg0, 0x08))
					{
						SSRG (0xF9, Arg0)
					}

					If (LEqual (Arg0, 0x08))
					{
						SSRG (0xF8, 0x00)
						And (Local2, Local0, Local2)
						SSRG (Local1, Local2)
					}

					If (LGreater (Arg0, 0x08))
					{
						SSRG (0xF8, 0x00)
						SSRG (Local1, Local2)
					}

					EXFG ()
				}
			}

			Method (\_SB.PCI0.PS2M._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
			{
				Return (Package (0x02)
				{
					0x03, 
					0x05
				})
			}

			Method (\_SB.PCI0.PS2K._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
			{
				Return (Package (0x02)
				{
					0x03, 
					0x05
				})
			}

			Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
			{
				Return (Package (0x02)
				{
					0x04, 
					0x05
				})
			}
		}

		Device (MEM)
		{
			Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
			Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
			{
				Name (BUF0, ResourceTemplate ()
				{
					Memory32Fixed (ReadWrite,
						0x000F0000,         // Address Base
						0x00004000,         // Address Length
						_Y06)
					Memory32Fixed (ReadWrite,
						0x000F4000,         // Address Base
						0x00004000,         // Address Length
						_Y07)
					Memory32Fixed (ReadWrite,
						0x000F8000,         // Address Base
						0x00004000,         // Address Length
						_Y08)
					Memory32Fixed (ReadWrite,
						0x000FC000,         // Address Base
						0x00004000,         // Address Length
						_Y09)
					Memory32Fixed (ReadWrite,
						0x00000000,         // Address Base
						0x00060000,         // Address Length
						_Y05)
					Memory32Fixed (ReadWrite,
						0xFFFF0000,         // Address Base
						0x00010000,         // Address Length
						)
					Memory32Fixed (ReadWrite,
						0x00000000,         // Address Base
						0x000A0000,         // Address Length
						)
					Memory32Fixed (ReadWrite,
						0x00100000,         // Address Base
						0x00000000,         // Address Length
						_Y0A)
					Memory32Fixed (ReadWrite,
						0x00000000,         // Address Base
						0x00000000,         // Address Length
						_Y0B)
					Memory32Fixed (ReadWrite,
						0x00000000,         // Address Base
						0x00000000,         // Address Length
						_Y0C)
					Memory32Fixed (ReadWrite,
						0xFEC00000,         // Address Base
						0x00001000,         // Address Length
						)
					Memory32Fixed (ReadWrite,
						0xFEE00000,         // Address Base
						0x00001000,         // Address Length
						)
					Memory32Fixed (ReadWrite,
						0xFFF80000,         // Address Base
						0x00070000,         // Address Length
						)
				})
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y05._BAS, ACMM)  // _BAS: Base Address
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y06._BAS, RMA1)  // _BAS: Base Address
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y06._LEN, RSS1)  // _LEN: Length
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y07._BAS, RMA2)  // _BAS: Base Address
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y07._LEN, RSS2)  // _LEN: Length
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y08._BAS, RMA3)  // _BAS: Base Address
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y08._LEN, RSS3)  // _LEN: Length
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y09._BAS, RMA4)  // _BAS: Base Address
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y09._LEN, RSS4)  // _LEN: Length
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y0A._LEN, EXTM)  // _LEN: Length
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y0B._BAS, USMA)  // _BAS: Base Address
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y0B._LEN, USMS)  // _LEN: Length
				Add (AMEM, 0x00060000, USMA)
				Add (USMS, 0x00100000, USMS)
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y0C._BAS, TSMA)  // _BAS: Base Address
				CreateDWordField (BUF0, \_SB.MEM._CRS._Y0C._LEN, TSMS)  // _LEN: Length
				Add (AMEM, 0x00060000, TSMA)
				Add (TSMA, 0x00100000, TSMA)
				Add (TSMS, 0x00100000, TSMS)
				Subtract (AMEM, 0x00100000, EXTM)
				If (LNotEqual (ROM1, Zero))
				{
					Store (RMA1, RMA2)
					ShiftLeft (ROM1, 0x08, Local0)
					Store (Local0, RMA1)
					ShiftLeft (RMS1, 0x08, Local0)
					Store (Local0, RSS1)
					Store (0x8000, RSS2)
				}

				If (LNotEqual (ROM2, Zero))
				{
					Store (RMA2, RMA3)
					ShiftLeft (ROM2, 0x08, Local0)
					Store (Local0, RMA2)
					ShiftLeft (RMS2, 0x08, Local0)
					Store (Local0, RSS2)
					Store (0xC000, RSS3)
				}

				If (LNotEqual (ROM3, Zero))
				{
					Store (RMA3, RMA4)
					ShiftLeft (ROM3, 0x08, Local0)
					Store (Local0, RMA3)
					ShiftLeft (RMS3, 0x08, Local0)
					Store (Local0, RSS3)
					Store (0x00010000, RSS4)
				}

				Store (AMEM, ACMM)
				Return (BUF0)
			}
		}

		Device (\_SB.PCI0.EXPL)
		{
			Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
			Name (_UID, 0x04)  // _UID: Unique ID
			Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
			{
				Name (BUF0, ResourceTemplate ()
				{
					Memory32Fixed (ReadWrite,
						0xE0000000,         // Address Base
						0x10000000,         // Address Length
						)
				})
				Return (BUF0)
			}
		}
	}
}

