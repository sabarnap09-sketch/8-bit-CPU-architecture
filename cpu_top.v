module cpu_top(input clk_100mhz,input reset,input [7:0] external_input,output [7:0] result,output [6:0] seg_hi,output [6:0] seg_lo,output halted);
wire slow_clk;
clk_div_100mhz_to_6hz divi(clk_100mhz,reset,slow_clk);
cpu_core core(slow_clk,reset,external_input,result,halted);
Out_display display(result,seg_hi,seg_lo);
endmodule
