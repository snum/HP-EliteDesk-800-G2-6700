// Maintained by: stevezhengshiqi
// Edited by: sakoula
// updated 20181228
// Reference: https://github.com/syscl/XPS9350-macOS/blob/master/DSDT/patches/syscl_DMAC.txt by syscl
// Add missing DMAC Device

DefinitionBlock ("", "SSDT", 2, "hack", "_DMAC", 0x00000000)
{
    Device (_SB.PCI0.LPCB.DMAC)
    {
        Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            IO (Decode16,
                0x0000,             // Range Minimum
                0x0000,             // Range Maximum
                0x01,               // Alignment
                0x20,               // Length
                )
            IO (Decode16,
                0x0081,             // Range Minimum
                0x0081,             // Range Maximum
                0x01,               // Alignment
                0x11,               // Length
                )
            IO (Decode16,
                0x0093,             // Range Minimum
                0x0093,             // Range Maximum
                0x01,               // Alignment
                0x0D,               // Length
                )
            IO (Decode16,
                0x00C0,             // Range Minimum
                0x00C0,             // Range Maximum
                0x01,               // Alignment
                0x20,               // Length
                )
            DMA (Compatibility, NotBusMaster, Transfer8_16, )
                {4}
        })
    }
}
