module MAR_reg(input clk,input reset,input load,input [3:0] data_in,output reg [3:0] address);
always @(posedge clk or posedge reset) if(reset) address<=0; else if(load) address<=data_in;
endmodule
