module Register_File_Wrapper
#(
	parameter WIDTH = 32,
	parameter SELECTOR = 5
)
(
	input 						clk, 
	input 						rst, 
	input 						Reg_Write_i,
	input 	[SELECTOR-1:0]	Read_Register_1_i,
	input 	[SELECTOR-1:0]	Read_Register_2_i,
	input 	[SELECTOR-1:0]	Write_Register_i,
	input 	[WIDTH-1:0]		Write_Data_i,
	output 	[WIDTH-1:0]		Read_Data_1_o,
	output 	[WIDTH-1:0]		Read_Data_2_o
);

Register_File UUT(
	.clk(clk), 
	.rst(rst), 
	.Reg_Write_i(Reg_Write_i), 
	.Read_Register_1_i(Read_Register_1_i), 
	.Read_Register_2_i(Read_Register_2_i),
	.Write_Register_i(Write_Register_i), 
	.Write_Data_i(Write_Data_i), 
	.Read_Data_1_o(Read_Data_1_o), 
	.Read_Data_2_o(Read_Data_2_o) 
);

endmodule
