# CUBEIDE_STM32G031C8

This is a starter project for the reverse engineering of the "Glo Hyper+" board.

What is on the board: <br>
1 - Hardware battery protection chip (3.7v) complete with two mosfets <br>
2 - Chip bq25898 battery charge (1S 3.7v), controlled from the main controller via I2C (there is a datasheet) <br>
3 - 2.5v micro-power stabilizer for the main microcontroller <br>
4 - 6.5v boost converter switched on by the foot of the microcontroller <br>
5 - Two power mosfets (25A, 60V) with individual drivers (powered by 6.5V) <br>
6 - Peripheral voltage stabilizer for 3.3v (LED power supply), powered by 6.5v <br>
7 - Thermal resistance No. 1, hardware connected to the battery chip (overheating protection) <br>
8 - Thermal resistance No. 2, connected to the microcontroller, I recommend for thermocouple compensation) <br>
9 - Thermal resistance No. 3, connected to the microcontroller, higher temperature inclusion <br>
10 - Dual operational amplifier for connecting two thermocouples to the controller <br>
11 - Central microcontroller STM32G031 (Arm® 32-bit up to 64 MHz,) (12-bit, 0.4 μs ADC). <br>
12 - The board has holes for soldering wires: programmer, uart, thermocouples, output mosfets. <br>
13 - A USB TypeC connector is installed on a short flexible cable for charging the battery and a vibration motor <br>
14 - Control button, connected to the input of the microcontroller <br>
15 - 4 white bright indicator LEDs connected to the outputs of the microcontroller, powered by 3.3V <br>
16 - Power current shunt with amplifier for measuring bipolar current, resolution about 120 at 1A <br>

Implemented in the starter project: <br>
blinking LEDs, <br>
polling the button <br>
polls all ADC inputs via DMA (all their values ​​are visible on the monitor in debug mode) <br>
outputs to the uart the values ​​of all ADC inputs in turn. <br>
