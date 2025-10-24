`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 10:25:39 PM
// Design Name: 
// Module Name: Clock_Divider
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


module Clock_Divider(clock_in, clock_out);
input clock_in;

reg[1:0] counter = 2'd0;
output reg clock_out = 1'b0;

    always @(posedge clock_in) begin
        counter <= counter + 1;
        if (counter == 2'b01) begin
            clock_out <= ~clock_out;
            counter <= 0;
            end
   end
      
endmodule
