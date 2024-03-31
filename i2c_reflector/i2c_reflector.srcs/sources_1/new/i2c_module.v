`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 10:11:39 PM
// Design Name: 
// Module Name: i2c_module
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

`define READ_BIT            0
`define ACK                 0   


module i2c_module(
    input rst,
    inout sda,
    input scl
    );
    
parameter STATE_SIZE = 3; // log of num of states
parameter IDLE = 0,
          ADDR_MATCH = 1,
          ADDR_ACK = 2,
          READ_DATA = 3,
          WRITE_DATA = 4,
          DATA_ACK = 5,
          STOP = 6;
       
       
reg [STATE_SIZE-1:0] current_state;
reg [STATE_SIZE-1:0] next_state;


// i2c variables start
parameter PACKET_SIZE_LOG = 3;
parameter PACKET_SIZE = 8;          //bits

parameter DATA_SIZE_LOG = 6;
parameter DATA_SIZE = 32;
parameter I2C_ADDR = 7'b110_1001;
parameter REFLECT_DATA = 8'hAF;

reg[PACKET_SIZE_LOG:0] temp_count;
reg[PACKET_SIZE_LOG:0] data_count;
reg[DATA_SIZE_LOG-1:0] bytes_count;

reg[PACKET_SIZE-1:0] rcv_addr;   // also contains the read write bit in index 0
reg[PACKET_SIZE-1:0] rcv_data;

reg drive_sda;
reg sda_val;

assign sda = (drive_sda)? sda_val: 1'bz; 
          
initial begin
    current_state <= IDLE;
    next_state <= IDLE;
        
    data_count <= 8'b0;
    bytes_count <= 8'b0;

    rcv_addr <= 8'b0;
    rcv_data <= 8'b0;

    drive_sda = 1'b0;
    sda_val = 1'b0;
end
          
// handles sda line and logic for a given state          
always @ (negedge scl) begin
    if (current_state == ADDR_MATCH) begin
        drive_sda <= 1'b0;
        rcv_addr[PACKET_SIZE - data_count - 1] <= sda;
        data_count <= data_count + 1;
    end
    else if (current_state == ADDR_ACK) begin
        drive_sda <= 1'b1;
        sda_val <= `ACK;
        data_count <= 0;
    end
    else if (current_state == READ_DATA) begin
        drive_sda <= 1'b0;
        rcv_data[PACKET_SIZE - data_count - 1] <= sda;
        data_count <= data_count + 1;
    end
    else if (current_state == WRITE_DATA) begin
        drive_sda <= 1'b1;
        sda_val <= REFLECT_DATA[PACKET_SIZE - data_count-1];
        data_count <= data_count + 1;
    end
    else if (current_state == DATA_ACK) begin
        if (!rcv_addr[`READ_BIT]) begin
            drive_sda <= 1'b1;
            sda_val <= `ACK;
        end
        else begin
            drive_sda <= 1'b0;
        end
        data_count <= 0;
    end
    else if (current_state == STOP) begin
        drive_sda <= 1'b0;
        data_count <= 4'b0; 
    end
end         


always @ (posedge scl or posedge rst) begin
    if (rst) begin 
        current_state <= IDLE;
        next_state <= IDLE;
            
        data_count <= 8'b0;
        bytes_count <= 8'b0;
    
        rcv_addr <= 8'b1111_1111;
        rcv_data <= 8'b0;
    
        drive_sda = 1'b0;
        sda_val = 1'b0;
    end 
    else begin
        current_state <= next_state;
    end
end


// start condition
always @ (negedge sda) begin
    if (current_state == IDLE) begin
        data_count <= 8'b0;
        bytes_count <= 8'b0;
    
        rcv_addr <= 8'b0;
        rcv_data <= 8'b0;
        next_state <= ADDR_MATCH;  
    end    
end


always @ (*) begin
    case(current_state)
        ADDR_MATCH:     next_state <= (data_count >= PACKET_SIZE) ? ADDR_ACK : ADDR_MATCH;
        ADDR_ACK:       begin 
                          if (rcv_addr[PACKET_SIZE-1:1] != I2C_ADDR) next_state <= IDLE;
                          else if (rcv_addr[`READ_BIT]) next_state <= WRITE_DATA;
                          else next_state <= READ_DATA;
                        end
        READ_DATA:      next_state <= (data_count >= PACKET_SIZE - 1) ? DATA_ACK: READ_DATA;
        WRITE_DATA:     next_state <= (data_count >= PACKET_SIZE - 1) ? DATA_ACK: WRITE_DATA; 
        DATA_ACK:       next_state <= STOP;
        STOP:           next_state <= IDLE;
    endcase
end



           
    
    
endmodule
