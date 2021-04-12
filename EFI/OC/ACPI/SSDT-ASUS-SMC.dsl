// asus x550vc hot keys
DefinitionBlock ("", "SSDT", 2, "hack", "asmc", 0x00000000)
{
    External (_SB_.ATKD, DeviceObj)    // (from opcode)
    External (_SB_.ATKD.IANE, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.ATKP, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.WRAM, MethodObj)    // 2 Arguments (from opcode)
    External (ATKP, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    Scope (_SB.ATKD)
    {
        Method (SKBV, 1, NotSerialized)
        {
            \_SB.PCI0.LPCB.EC0.WRAM (0x044B, Arg0) //kbl for hm76
            Return (Arg0)
        }
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query fn+f3
        {
            If (ATKP)
            {
                \_SB.ATKD.IANE (0xC5)
            }
        }

        Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query fn+f4
        {
            If (ATKP)
            {
                \_SB.ATKD.IANE (0xC4)
            }
        }

        Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query fn+f5
        {
            If (ATKP)
            {
                \_SB.ATKD.IANE (0x20)
            }
        }

        Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query fn+f6
        {
            If (ATKP)
            {
                \_SB.ATKD.IANE (0x10)
            }
        }
    }
}

