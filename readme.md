For this project I developed a simple LCD controller, test benches and a demonstration in verilog. I used a Terasic DE2 board for this project. The LCD on the board is a Crystalfotnz America CFAH1602B-TMC-JP LCD panel. The top level module provides a simple demonstration of functionality of this LCD controller and how it can be used with other projects. NOTE: THIS PROJECT IS BASED UPON A 50MHz CLOCK.

LCD CONTROLLER OPERATION:

This LCD controller is made up of two parts, the state machine that initializes the LCD and writes characters to it and a register file that acts as an external interface that is written to. After initialization, the state machine goes into an infinite loop that reads from register 0x00 to register 0x1F. At each register address, it takes the character code that is stored there and forwards that to the LCD controller to display.

The LCD controller is developed with the specific purpose in mind to be dropped into any project as an "off the shelf" part without any or few modifications from the user. To that end I have documented my code so that it can be used as easily as possible. The included demonstration (lcdControllerDemonstration) that shows how to integrate the LCD controller into a project. The demonstration takes in a 16 bit input from the switches on the DE2 board and displays it on the screen.
