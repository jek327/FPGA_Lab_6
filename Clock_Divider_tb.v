`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 10:30:28 PM
// Design Name: 
// Module Name: Clock_Divider_tb
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


module Clock_Divider_tb;
reg clock_in;
wire clock_out;

Clock_Divider dut (.clock_in(clock_in), .clock_out(clock_out));
initial begin 
    clock_in = 0;
    
    forever #10 clock_in = ~clock_in;
end
endmodule

