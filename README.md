Test bench and a set of DUTs are provided. 
Modify the test bench to find all the failing DUTs. 
To help you out, the DUTs are encrypted. They are black boxes. The working model is dut0.sv.

To start the assignment, open a terminal, and create a directory such as:

Note the period is important (It indicates the current directory)

./sv_uvm top.sv dut0.svh

Create a UVM sequence class. The class should be in file s0.svh You need to modify this class to create enough directed random tests to find all the failing DUTs.

change dut0.svh to dut1.svh to run the second dut, then dut2 and dut3

