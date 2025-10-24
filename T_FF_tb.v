`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 01:24:40 PM
// Design Name: 
// Module Name: T_FF_tb
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


module T_FF_tb;
reg clk, t, rstn;
wire q;

T_FF dut(.t(t), .clk(clk), .rstn(rstn), .q(q));

// Generate clock
initial clk = 0;
always #10 clk = ~clk;
// Testcase
initial begin
    $dumpfile("tff.vcd");
    $dumpvars(0, T_FF_tb);
    
    rstn = 0; t = 0;
    #25 rstn = 1;
    
    #40 t = 1;
    #80 t = 0;
    #60 t = 1;
    #40 t = 0;
    #20 $finish;
 end
    

endmodule
