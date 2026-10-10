module ALU(bus_out,c,z,A,B,SUB1,ADD1,ALO,FE,XRA,ANA,SHL1,SHR1);
output [7:0] bus_out;
output reg c,z;
input [7:0]A;
input [7:0]B;
input SUB1,ALO,FE,XRA,ANA,SHL1,SHR1,ADD1;
reg [8:0]result;
always @(*)
begin
result = 9'b0;
if(ADD1)
 result ={1'b0,A}+{1'b0,B};
else if(SUB1)
 result={1'b0,A}-{1'b0,B};
else if(ANA)
 result={1'b0,(A&B)};
else if(XRA)
 result={1'b0,(A^B)};
else if(SHL1)
 result = {A[7], A << 1};
else if(SHR1)
 result = {A[0], A >> 1};
end
assign bus_out=ALO?result[7:0]:8'bz;
always @(*)
begin
if(FE)
begin
c=result[8];
if(result[7:0]==8'b00000000)
z=1'b1;
else
z=1'b0;
end
else begin
c=1'b0;
z=1'b0;
end
end
endmodule
