/*
 * This file is part of the coreboot project.
 *
 * Copyright (C) 2013 Sage Electronic Engineering, LLC
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

/* Like so? */
Scope(\)
{
	OperationRegion(WIN1, SystemIO, 0x2E, 0x02)
	Field(WIN1, ByteAcc, NoLock, Preserve)
	{
		INDP, 8,
		DATP, 8,
	}
	OperationRegion(GPIO, SystemIO, 0x0800, 0x05)
	Field(GPIO, ByteAcc, NoLock, Preserve)
	{
		GO01, 8,
		GO02, 8,
		GO03, 8,
		GO04, 8,
		GO05, 8,
	}
	IndexField(INDP, DATP, ByteAcc, NoLock, Preserve)
	{
		Offset(0x2),	//Offset(2),
		CFG, 8,
		Offset(0x7),	//Offset(7),
		LDN, 8,
		Offset(0x20),	//Offset(32),
		IDHI, 8,
		IDLO, 8,
		POWC, 8,
		Offset(0x30),	//Offset(48),
		ACTR, 8,
		Offset(0x60),	//Offset(96),
		IOAH, 8,
		IOAL, 8,
		IO2H, 8,
		IO2L, 8,
		Offset(0x70),	//Offset(112),
		INTR, 8,
		, 8,
		INT1, 8,
		, 8,
		DMCH, 8,
		Offset(0xC0),	//Offset(192),
		GP40, 8,
		Offset(0xF0),	//Offset(240),
		OPT1, 8,
		OPT2, 8,
		OPT3, 8,
		OPT4, 8,
	}
	Method(ENFG, 0, NotSerialized)
	{
		Store(0x87, INDP)
		Store(0x01, INDP)
		Store(0x55, INDP)
		Store(0x55, INDP)
	}
	Method(EXFG, 0, NotSerialized)
	{
		Store(0x02, CFG)
	}
	Method(GSRG, 1, NotSerialized)
	{
		Store(Arg0, INDP)
		Return(DATP)
	}
	Method(SSRG, 2, NotSerialized)
	{
		Store(Arg0, INDP)
		Store(Arg1, DATP)
	}
}
