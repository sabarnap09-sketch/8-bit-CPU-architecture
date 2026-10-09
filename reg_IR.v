module reg_IR(input clk,input reset,input load,input [7:0] data_in,output reg [7:0] instruction);
always @(posedge clk or posedge reset) if(reset) instruction<=0; else if(load) instruction<=data_in;
endmodule
