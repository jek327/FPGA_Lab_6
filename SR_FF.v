`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:12:33 PM
// Design Name: 
// Module Name: SR_FF
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SR_FF(input S, R, CLK, output reg Q, output QBAR);

    always @(posedge CLK) begin
        case ({S,R})
            2'b00: Q <= Q;
            2'b10: Q <= 1'b1;
            2'b01: Q <= 1'b0;
            2'b11: Q <= 1'bx;
        endcase
    end

    assign QBAR = ~Q;

endmodule
