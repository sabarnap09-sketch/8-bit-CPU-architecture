module PC(input clk,input reset,input enable,input load,input [3:0] load_value,output reg [3:0] pc);
always @(posedge clk or posedge reset) if(reset) pc<=0; else if(load) pc<=load_value; else if(enable) pc<=pc+1'b1;
endmodule
