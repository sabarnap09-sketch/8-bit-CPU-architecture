module flag_reg(input clk,input reset,input load,input zero_in,input carry_in,output reg zero_flag,output reg carry_flag);
always @(posedge clk or posedge reset) if(reset) begin zero_flag<=0; carry_flag<=0; end
else if(load) begin zero_flag<=zero_in; carry_flag<=carry_in; end
endmodule
