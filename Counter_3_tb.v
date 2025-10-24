`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 04:08:28 PM
// Design Name: 
// Module Name: Counter_3_tb
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


module Counter_3_tb;
 reg clk, rstn;
 wire Q1;
 wire Q2;
 wire Q3;

Counter_3_Bit dut (.clk(clk), .rstn(rstn), .Q1(Q1), .Q2(Q2), .Q3(Q3));

initial clk = 0;
always #10 clk =~clk;

initial begin
    $dumpfile("counter3.vcd");
    $dumpvars(0, Counter_3_tb);
    
    rstn = 0; #25; rstn = 1;
    
    repeat (20) @(posedge clk);
    $finish;
end

endmodule
