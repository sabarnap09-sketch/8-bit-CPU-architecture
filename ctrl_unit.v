// Starter controller: timing and memory behavior must be verified in simulation.
module ctrl_unit(input clk,input reset,input [3:0] opcode,output reg pc_inc,ir_load,mar_load,a_load,b_load,out_load,mem_read,alu_to_a,output reg [2:0] alu_op,output reg halted);
localparam FETCH=0,DECODE=1,EXECUTE=2,STOP=3; reg [1:0] state;
always @* begin
pc_inc=0;ir_load=0;mar_load=0;a_load=0;b_load=0;out_load=0;mem_read=0;alu_to_a=0;alu_op=0;halted=0;
case(state)
FETCH: begin ir_load=1;pc_inc=1;end
DECODE: mar_load=1;
EXECUTE: case(opcode)
1:begin mem_read=1;a_load=1;end
2:begin mem_read=1;b_load=1;alu_op=0;alu_to_a=1;end
3:begin mem_read=1;b_load=1;alu_op=1;alu_to_a=1;end
4:out_load=1;15:halted=1;default:begin end endcase
STOP:halted=1;
endcase end
always @(posedge clk or posedge reset) if(reset) state<=FETCH; else case(state)
FETCH:state<=DECODE; DECODE:state<=EXECUTE; EXECUTE:state<=(opcode==15)?STOP:FETCH; default:state<=STOP; endcase
endmodule
