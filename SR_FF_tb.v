`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2025 04:42:03 PM
// Design Name: 
// Module Name: SR_FF_tb
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


module SR_FF_tb();
reg S,R,CLK;
wire Q, QBAR;

SR_FF dut(.Q(Q), .QBAR(QBAR), .S(S), .R(R), .CLK(CLK)); 

// apply test vectors
initial begin
    CLK = 0;
    forever #10 CLK = ~CLK;
end
    
initial begin
    S=1; R=0;
    #100; S=0; R=1;
    #100; S=0; R=0;
    #100; S=1; R=1;
end

endmodule
