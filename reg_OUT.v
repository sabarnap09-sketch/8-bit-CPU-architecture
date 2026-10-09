module reg_OUT(input clk,input reset,input load,input [7:0] data_in,output reg [7:0] data_out);
always @(posedge clk or posedge reset) if(reset) data_out<=0; else if(load) data_out<=data_in;
endmodule
