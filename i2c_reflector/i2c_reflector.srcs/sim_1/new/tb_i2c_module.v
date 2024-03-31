`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Sean Hyacinthe
// 
// Create Date: 01/25/2024
// Module Name: tb_i2c_module.v
// Project Name: i2c_peripheral_module
// Target Devices: ZedBoard
// Description: test bench to simulate i2c transactoin between i2c_peripheral and 
//              controller module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module i2c_module_tb();

`define HALF_T                      6
`define FULL_T                      2*(`HALF_T) 
`define QUART_T                      (`HALF_T)/2 

`define PERIPHERAL_ADDR             7'b110_1001
`define PERIPHERAL_ADDR_WIDTH       7    

`define CONTROL_DATA                8'hAA
`define FRAME_WIDTH                 8

integer phase = 0;

reg tb_clk;
reg tb_rst;
reg tb_scl;
wire tb_sda;
reg tb_sda_val;             
reg tb_drive_sda;  

reg[`FRAME_WIDTH-1:0] tb_slave_data;        

//wire[`FRAME_WIDTH-1:0] dut_counter;
wire[`FRAME_WIDTH-1:0] dut_current;
wire[`FRAME_WIDTH-1:0] dut_next;
wire[`FRAME_WIDTH-1:0] dut_rcv_addr;
wire[`FRAME_WIDTH-1:0] dut_rcv_data;
wire[`FRAME_WIDTH-1:0] dut_data_count;

wire dut_sda_val;

//wire[`FRAME_WIDTH-1:0] dut_rcv_addr_frame;
//wire[`FRAME_WIDTH-1:0] dut_rcv_data;

pullup(tb_sda);

i2c_module dut(
    .rst(tb_rst),
    .sda(tb_sda),
    .scl(tb_scl)
);

// internal signlas 
assign dut_current = dut.current_state;
assign dut_next = dut.next_state;
assign dut_rcv_addr = dut.rcv_addr; 
assign dut_rcv_data = dut.rcv_data;
assign dut_data_count = dut.data_count;


assign dut_sda_val = dut.sda;
assign dut_drive_sda = dut.drive_sda;

assign tb_sda = (tb_drive_sda)? tb_sda_val : 1'bz;

always #(`HALF_T) tb_clk <= ~tb_clk;

initial begin  
    tb_clk <= 0;
    tb_rst <= 0;
    tb_drive_sda <= 1'b1;
    tb_scl <= 1'b1;
    tb_sda_val <= 1'b1; 
    tb_slave_data  = 8'b0;
end


initial begin 
    #(`FULL_T);
//    start;
    #(`QUART_T); //to have the sda change inbetween clock pulses
//    tb_send_data({`PERIPHERAL_ADDR, 1'b0});
//    phase = phase + 1;
//    tb_send_data(`CONTROL_DATA);
//    phase = phase + 1;
//    stop;
    
////    reset_module;
    
    start;
    phase = phase + 1;
    tb_send_data({`PERIPHERAL_ADDR, 1'b1});
    phase = phase + 1;
    tb_rcv_data;
    phase = phase + 1;
    #(`FULL_T);
    $finish;    
end


task reset_module;
    begin
        force tb_scl = 1'b1;
        tb_rst <= 1'b1;
        tb_drive_sda <= 1'b1;
        tb_sda_val <= 1'b1; 
        tb_slave_data  = 8'b0;
        #(4*(`FULL_T));
        tb_rst <= 1'b0;
    end
endtask


task tb_send_data;
    input integer controller_data;
    integer cc;
    begin
        force tb_scl = tb_clk;
        tb_drive_sda <= 1'b1;
        for (cc = 0; cc < `FRAME_WIDTH; cc = cc + 1) begin 
            tb_drive_sda <= 1'b1;
            tb_sda_val <= controller_data[(`FRAME_WIDTH-1) - cc];
            #(`FULL_T);
        end  
    rcv_ack;
    end
endtask


task tb_rcv_data;
    integer cc;
    begin
        force tb_scl = tb_clk;
        tb_drive_sda <= 1'b0;
        #(`FULL_T);
        for (cc = 0; cc < `FRAME_WIDTH; cc = cc + 1) begin 
            tb_slave_data[(`FRAME_WIDTH-1) - cc] <= tb_sda;
            #(`FULL_T);
        end  
    tx_ack;
    end
endtask

task rcv_ack;
    begin
        tb_drive_sda <= 1'b0;
        tb_sda_val <= 1'b0; 
        #(`FULL_T);
    end
endtask


task tx_ack;
    begin
        tb_drive_sda <= 1'b1;
        tb_sda_val <= 1'b0; 
        #(`FULL_T);
    end
endtask


task start;
    //pulls both lines low to signal start of transmission
    begin
        tb_drive_sda <= 1'b1;
        tb_sda_val <= 1'b0; 
        #(`FULL_T);
    end
endtask


task stop;
    //pulls both lines high to signal end of transmission
    begin
        tb_drive_sda <= 1'b1;
        tb_sda_val <= 1'b1; 
    end
endtask 

endmodule
