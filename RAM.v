module RAM(input clk,input write_enable,input [3:0] address,input [7:0] data_in,output wire [7:0] data_out);
reg [7:0] mem[0:15];
always @(posedge clk) if(write_enable) mem[address]<=data_in;
assign data_out=mem[address];
endmodule
