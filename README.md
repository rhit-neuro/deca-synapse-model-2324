# synaptic_events
This is a repo containing all the work related to implementing across board communication of synpatic events. As part of synaptic events, I proposed a new peripheral that is dedicated to calculating synaptic current. The information to calculate the synaptic current is the same for all synapses and only varies in terms of the parameters used for the calculation. Each synapse has its own set of parameters which need to be stored and accessed via an ID somehow.

By creating a synaptic current peripheral, less work done by the managment processor, allowing for increased instruction throughput. In designing the current peripheral, there are two possible ways to assess if this would be a worthwhile addition depending on the hardware available to you all.

## Software Used/Required
The design suite used for was Vivado 2023. We needed to upgrad our storage to have enough disk space. For any scripts any IDE will be fine for running them. I personally used VS code and didn't have any problems. For this section of the project, you could probably work using an older version of Vivado. I'd only imagine the version being a problem when you starting integrating this systme into Caravel. If you are a Noblitt we got the extra hard drive paid for by Noblitt. I think it is worth while to do this if you are Noblitt. 

## One ZedBoard Available 
If there is only one ZedBoard available, then you will be following the exact same design that I was trying to implement. A high level of the design can be described as follows:

Since we are trying to have to Neurons (FPGA's) communicate information, we need to have two FPGAs available. To get around the lack of hardware, an i2c_reflector has been created. The purpose of the i2c reflector is to simulate an i2c transaction with a peripheral module. The processing side (PS) will act as the controller and the i2c_reflector (PL side) have hardcoded data that is accessed via i2c requests. From there the parameters can be used in a C-based synapse model. The data for these paramters are initialized and stored in the block RAM (BRAM) The code the synapse model has not been created, but will exactly follow NeuroML documentation. More info can be found in my research memo. The  Here is the general data flow for the system.

### Data Flow

1. [PS] request synaptic parameters via i2c
2. [PL] data is received by i2c_reflector
3. [PL] sends needed parameters back via i2c_reflector
4. [PS] recieved parameters are inputting into the C synapse module
5. [PS] send calculations to i2c_reflector
6. [PL] stores recieved current calculation results

The i2c_reflector has been created and test in simulation using Verilog and Vivado. However, I am skeptical at best that the module will while running on a real FPGA. If the module doesn't work, you have two options. One is to debug it (not sure if it is worth the time) or adopt i2c slave module I linked below. From what I can tell, this should work for but you'll have to do some work to verify and integrate it.

i2c peripheral module: https://github.com/jiacaiyuan/i2c_slave/tree/master/FPGA_i2c_slave/i2c_slave

### Where to Start

1. Start with verifying the i2c_reflector works on an FPGA. I'd do this by setting up an i2c controller and connecting to sda and scl line to a scope. From there you can determine if the module works or decide to use the other one linked above. Lastly, package whatever module you decide to use into an IP.

2. Once the i2c module is sorted out, move on to configuring a ZedBoard PS to communicate with an i2c peripheral module. I'd test this using a tmp101 sensor. The configuration for i2c on the ZedBoard should be similar to the i2c lab done in Dr. Song's ECE 530 class.

3. Next, you need to create the C-based synapse model. This step should be straightforward. It will involve implementing the NeuroML expTwoSynapse model. It create this model so it is a standalone class that is callable. It will make integration easier on you.

        NeuroML Doc: https://docs.neuroml.org/Userdocs/Schemas/Synapses.html#exptwosynapse

4. With that completed all the subpieces are ready to be integrated to make the full teseting environment. Create a block design the consisting of an initialized BRAM (init_bram-already created as example), I2C controller configuration (you have to create) and the i2c_reflector (already made).

        BRAM Example Video: https://www.youtube.com/watch?v=kjPQw_iNN-8

    The values you initalize the BRAM with should come from the leech heart module Clark created in the previous groups. That way you have reference to check results against. The other thing to note with loading the BRAM is that you have to do it through a .coe file. You should be familiar with this from either ECE433 or ECE530 (can't remember which). The values to put into the .coe file need to be in IEEE 754 format (floating point notation). I created a basic script in Python that takes a CSV file and converts it into a .coe file (synaptic_parameters_converters.py). In addition, here is a video explaining the formating for IEEE 754.

        IEEE 754 Format: https://www.youtube.com/watch?v=8afbTaA-gOQ

5. After completing the block design, the reset of the work is in setting up the PS i2c and interfacing the synapse module correctly. If you look at the test plan section related to FPGA-FPGA communication, there should be an idea of some test to conduct. Truth be told, if you get all this down, you should be able to just use the AY 23-24 test plan as is.

6. If completed everything to this point, the next step is ideally to integrate this with the caravel architecture. This would allow you to understand the actual effect it has on the Caravel's processing speed. However, this is only possible if Caravel architecture is executable on a ZedBoard. As of writing this ReadMe, we can still not execute code through Caravel on a ZedBoard.

## Two Zedboards Available

This section wil be brief as I have not really thought much about this testing setup. With two FGPAs, the i2c_reflector is not necessay and all tests can be carried out using the PS side of the ZedBoard. However, down the line there will be a need for i2c module to run this on the Caravel architecture. For proof of concept you can do test the model using software-defined i2c modules, but for actual Caravel testing you need a hardware-defined i2c module.

## GitHub Vivado Projects Directories

| File name | Description|
|----------|----------|
|  arm_gpio         | diagnostic test using arm core gpio           | 
|  hw_test          | diagnostic test using verilog gpio            | 
|  i2c_reflector    | module created to interface two Zedboard      |
|  shared_init_bram | shared init Block RAM accessible from ARM Core| 
|  upload_test      | testing serial monitor over UART              | 
|  synaptic_parameters_converters.py| converting csv of floats to ieee745 format and places into a .coe file for initialzing BRAM|

