# LimeSDR-USB FPGA gateware

This repository contains the FPGA gateware project for the [USB 3.0 LimeSDR](https://github.com/myriadrf/LimeSDR-USB) board.

The gateware can be built with the free version of the Altera Quartus tools.

## Branches

This branch, named [fusesoc-nios](https://github.com/cairo-caplan/LimeSDR-USB_GW/tree/fusesoc-nios) contains a FuseSoC proposal for the original LimeSDR-USB FPGA gateware, still based on a NIOS II CPU. 

It can be built after installing fusesoc and running the following code:

```bash
fusesoc --cores-root .  build limesdr-usb_gw
```

However it fails on the pin and IO bank assignements for now.

## Licensing

Please see the COPYING file(s). However, please note that the license terms stated do not extend to any files provided with the Altera design tools and see the relevant files for the associated terms and conditions.
