`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2025 06:02:47 PM
// Design Name: 
// Module Name: D_FF_tb
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


module D_FF_tb;
reg clk, d, rstn;
reg[2:0] delay;
wire q;
integer i;

D_FF dut(.d(d), .rstn(rstn), .clk(clk), .q(q));

// Generate clock
always #10 clk = ~clk;
// Testcase
initial begin
    clk <= 0;
    d <= 0;
    rstn <= 0;
    
    #15 d <= 1;
    #10 rstn <= 1;
    for (i = 0; i < 5; i = i+1) begin
        delay = $random;
        #(delay) d <= i;
    end
 end
    

endmodule
