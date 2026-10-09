module reg_a(input clk,input reset,input load,input [7:0] data_in,output reg [7:0] A);
always @(posedge clk or posedge reset) if(reset) A<=0; else if(load) A<=data_in;
endmodule
