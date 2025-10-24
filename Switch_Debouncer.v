`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 10:57:20 PM
// Design Name: 
// Module Name: Switch_Debouncer
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


module Switch_Debouncer(clk, noisy, clean);
input clk;          
input noisy;        
output reg clean;   

reg [19:0] count;   
reg new_signal;

always @(posedge clk) begin
    new_signal <= noisy;    

    
    if (new_signal != clean)
        count <= count + 1;
    else
        count <= 0;

    if (count == 20'hFFFFF)
        clean <= new_signal;
end
endmodule
