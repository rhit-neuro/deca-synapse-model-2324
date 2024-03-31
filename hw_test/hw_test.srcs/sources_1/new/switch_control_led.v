`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2024 10:49:19 AM
// Design Name: 
// Module Name: switch_control_led
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


module switch_control_led(
    input[7:0] switches,
    output reg [7:0] leds
    );
    
    
 always @(switches) begin
    leds <= switches;
 end
    
endmodule
