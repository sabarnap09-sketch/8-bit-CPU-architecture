module clk_div_100mhz_to_6hz(input clk_100mhz,input reset,output reg clk_6hz);
localparam HALF_PERIOD=8333333; reg [23:0] count;
always @(posedge clk_100mhz or posedge reset) begin
 if(reset) begin count<=0; clk_6hz<=0; end
 else if(count==HALF_PERIOD-1) begin count<=0; clk_6hz<=~clk_6hz; end
 else count<=count+1'b1;
end endmodule
