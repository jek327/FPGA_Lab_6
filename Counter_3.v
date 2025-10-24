`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 04:03:35 PM
// Design Name: 
// Module Name: Counter_3
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


module Counters(input clk,output Q1,Q2,Q3);
 input clk;
 output Q1;
 output Q2;
 output Q3;
 wire tt2;
 wire tt3;

 T_FlipFlop num_1(.clk(clk),.T(1'b1),.Q(Q1));
 assign tt2 = Q1;
 T_FlipFlop num_2(.clk(clk),.T(tt2),.Q(Q2));
 assign tt3 = Q2& (Q1);
 T_FlipFlop num_3(.clk(clk),.T(tt3),.Q(Q3));

endmodule
