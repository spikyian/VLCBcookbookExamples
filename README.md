# VLCBcookbookExamples
Source code for the examples used in VLCBlib_PIC cookbook

| Folder | Cookbook section | What it adds |
|---|---|---|
| Blink | 6.1 | MNS and CAN services, a LED on channel 1 blinking once a second |
| BlinkNV | 6.2 | NV service: NV1 sets the blink period in 100 ms steps |
| BlinkNVevent | 6.3 | Event teach and simple event consumer: a taught ON/OFF event turns blinking on and off |
| BlinkSave | 6.4 | The on/off state saved in EEPROM, so it survives a power cycle |

Each folder is an MPLAB X project. Clone this repository beside VLCB-defs and VLCBlib_PIC, as the projects refer to `../../VLCB-defs` and `../../VLCBlib_PIC`.


Please refer to the [cookbook](https://docs.google.com/document/d/1Xav2T7j1k5-6ccKphfmucKoAQ-LffJq_Z7kPcFBp0HU/edit)

The VLCBlib_PIC can be found [VLCBlib_PIC](https://github.com/spikyian/VLCBlib_PIC.git)
