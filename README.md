# Distributed-Arithmetic-Convolution-FPGA

This is my code for my undergraduated thesis.
I tried to implement CNN accelerator on end device using FPGA.
And then I explore the hardware design to check the trade off on accuracy, power consumption and speed by changing number of process element and width of data.
I didn't include the result of the research in here, but if you interested in my research, feel free to contact me on: naufal.ti@outlook.com

Create a convolutional sub processing unit to accelrate convolutional process using FPGA.
There are  variation fo using only 1 Element Process (EP) up until 6 EP for core of the convolustion.
In 1 EP, there are variation of data from 16 bit up until 256 bit of data

All operation is signed integer operation
