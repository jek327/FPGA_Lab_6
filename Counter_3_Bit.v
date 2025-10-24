`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 04:23:50 PM
// Design Name: 
// Module Name: Counter_3_Bit
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

module Counter_3_Bit(input clk, rstn, output Q1,Q2,Q3);

wire t1 = 1'b1;
wire t2 = Q1;
wire t3 = Q1 & Q2;

 T_FF num_1(.clk(clk), .rstn(rstn), .t(t1),.q(Q1));
 T_FF num_2(.clk(clk), .rstn(rstn), .t(t2),.q(Q2));
 T_FF num_3(.clk(clk), .rstn(rstn), .t(t3),.q(Q3));

endmodule
