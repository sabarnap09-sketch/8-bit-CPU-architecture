module Clk_Div (
    output reg clkf,
    input reset,
    input clk
);

    reg [23:0] counter;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 24'd0;
            clkf    <= 1'b0;
        end
        else begin
            if (counter == 24'd8_333_332) begin
                counter <= 24'd0;
                clkf    <= ~clkf;
            end
            else begin
                counter <= counter + 1'b1;
            end
        end
    end

endmodule
