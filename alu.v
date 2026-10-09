module alu(input [7:0] A,input [7:0] B,input [2:0] operation,output reg [7:0] result,output wire zero,output reg carry);
always @* begin result=0; carry=0; case(operation)
3'b000: {carry,result}={1'b0,A}+{1'b0,B};
3'b001: begin result=A-B; carry=(A>=B); end
3'b010: result=A&B; 3'b011: result=A^B; 3'b100: result=A|B;
3'b101: result=~A; 3'b110: result=A; default: result=0;
endcase end
assign zero=(result==0);
endmodule
