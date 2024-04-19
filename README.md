These are OpenSCAD design files that can be used for 3D printing a stand alone case for a 3D printer control board (SKR mini E3 V3) and LCD control panel (TFT35 E3 V3).  The control board and LCD panel specs can be found from the manufacturer, Bigtreetech:

http://bttwiki.com/SKR%20MINI%20E3.html

https://bttwiki.com/TFT35%20E3.html

After assembly and programming the microcontroller with Marlin firmware, this case provides a stand alone unit for controlling a 3D printer or CNC machine.

Key features of the case:

* opening for wires required to connect an external power supply, stepper motors, a bed heater, and other optional components on a 3D printer or CNC machine.
* slot to access micro SD card reader used for programming the microcontroller.
* opening for micro USB port that can be used for external control over serial communication from an attached computer.
* slot for accessing the standard SD card and USB-A port that allows control using g-code files.
* mounting points for two 40 mm fans for ventilation.

The image below is a rendering of the bottom part of the case. The "mouse ears" on the box corners aid in keeping the box corners from lifting during printing. The mouse ears can be cut off after printing.

![bottom box](https://github.com/matthew-yates/BTTskrE3v3_case/blob/main/bottom_box/skrMiniE3V3_bottom.png)

The image below is a rendering of the top box portion of the case. In addition to the "mouse ears" on the corner to aid in printing, there are thin rectangular supports on each of the four corners that aid in 3D printing.  The mouse ears and supports can be cut off the part after printing.

![top box](https://github.com/matthew-yates/BTTskrE3v3_case/blob/main/top_box/skrMiniE3V3_top.png)

The image below is a rendering of an exploded view of the completed case after removing printer supports, mounting the TFT35 E3 V3 board to the top portion of the case, and mounting the SKR Mini E3 V3 board to the bottom portion of the case.  The case is colored blue and the Bigtreetech components are colored gray.

![complete case exploded](https://github.com/matthew-yates/BTTskrE3v3_case/blob/main/completedCaseImages/skrMiniE3V3_complete1.png)

The image below is a rendering of the completed case after assembly.  The top part of the case is mounted to the bottom part using M3 screws 8 mm in length.

![complete case assembled](https://github.com/matthew-yates/BTTskrE3v3_case/blob/main/completedCaseImages/skrMiniE3V3_complete2.png)

For assembly:

* remove printing supports and mouse ears from corners using a sharp blade.
* ream open the four mounting holes on the corners of the top part of the case to allow an M3 screw to pass through.  A 1/8 inch drill bit can be used.
* PCB stand offs as well as the bottom part of the case are printed with holes that allow normal M3 screws to be used (self tapping screws are not needed).
* M3 screws with a pitch of 0.5 mm and length of 8 mm can be used for all PCB mounting holes.
* 40 mm fans must be selected that operate on the same voltage as the external DC power supply.  For most 3D printers, this is 24 Volts.

Below is a photograph of the assembled case with the fans and circuit boards mounted inside:

![complete case photo](https://github.com/matthew-yates/BTTskrE3v3_case/blob/main/completedCaseImages/skrMiniE3V3_complete3.jpg)
