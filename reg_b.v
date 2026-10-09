module reg_b(input clk,input reset,input load,input [7:0] data_in,output reg [7:0] B);
always @(posedge clk or posedge reset) if(reset) B<=0; else if(load) B<=data_in;
endmodule
