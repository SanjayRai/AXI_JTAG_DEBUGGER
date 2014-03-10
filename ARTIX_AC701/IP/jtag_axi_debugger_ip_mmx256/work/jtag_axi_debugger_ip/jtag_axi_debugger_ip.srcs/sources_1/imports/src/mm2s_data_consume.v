// Created : 10:53:39, Mon Feb 4, 2013 : Sanjay Rai

`timescale 1ns/100fs

module mm2s_data_consume (
    input clk,

    output s_axis_mm2s_cmd_tvalid,
    input s_axis_mm2s_cmd_tready,
    output [71:0] s_axis_mm2s_cmd_tdata,
  
    input [31 : 0] m_axis_mm2s_tdata,
    input [3 : 0] m_axis_mm2s_tkeep,
    input m_axis_mm2s_tvalid,
    output m_axis_mm2s_tready,

    output wire mm2s_FIFO_TO_JTAG_DATA_valid,
    output reg [31:0] FIFO_TO_JTAG_DATA_VIO,
    output reg [3:0]  FIFO_TO_JTAG_TKEEP_VIO,
    input wire start_mm2s_xfer,
    input wire VIO_mm2s_FIFO_RESET_N,
    input wire mm2s_FIFO_TO_JTAG_READ_VIO,
    input wire [31:0] mm2s_start_address,
    input wire [15:0] mm2s_number_of_bytes_to_xfer

);



wire [63:0] reg_FIFO_TO_JTAG_DATA_VIO;

reg i1_mm2s_FIFO_TO_JTAG_READ_VIO = 1'b0;
reg i0_mm2s_FIFO_TO_JTAG_READ_VIO = 1'b0;
reg FIFO_TO_JTAG_DATA_read_strobe = 1'b0;

reg data_consume_fifo_reset_n;

reg i0_start_mm2s_xfer = 1'b0;
reg i1_start_mm2s_xfer = 1'b0;
reg i_s_axis_mm2s_cmd_tvalid = 1'b0;
reg i1_s_axis_mm2s_cmd_tvalid = 1'b0;
reg i_m_axis_mm2s_tvalid = 1'b0;


assign s_axis_mm2s_cmd_tvalid = i1_s_axis_mm2s_cmd_tvalid;


assign s_axis_mm2s_cmd_tdata = { 8'h00, mm2s_start_address, 2'b00, 6'b0000000, 1'b1, 7'b0000000, mm2s_number_of_bytes_to_xfer};

always @ (posedge clk)
begin
    i0_start_mm2s_xfer <= start_mm2s_xfer;
    i1_start_mm2s_xfer <= i0_start_mm2s_xfer;
    i_s_axis_mm2s_cmd_tvalid <= (~i0_start_mm2s_xfer & i1_start_mm2s_xfer);
    i1_s_axis_mm2s_cmd_tvalid <= i_s_axis_mm2s_cmd_tvalid;
end

always @ (posedge clk)
begin
    i0_mm2s_FIFO_TO_JTAG_READ_VIO <= mm2s_FIFO_TO_JTAG_READ_VIO;
    i1_mm2s_FIFO_TO_JTAG_READ_VIO <= i0_mm2s_FIFO_TO_JTAG_READ_VIO;
    FIFO_TO_JTAG_DATA_read_strobe <= (i0_mm2s_FIFO_TO_JTAG_READ_VIO ^ i1_mm2s_FIFO_TO_JTAG_READ_VIO);
end

always @ (posedge clk)
begin
    if (~data_consume_fifo_reset_n) begin
        FIFO_TO_JTAG_DATA_VIO <= 32'hBAD0FEED;
        FIFO_TO_JTAG_TKEEP_VIO <= 4'hF;
    end
    else if (FIFO_TO_JTAG_DATA_read_strobe) begin
        FIFO_TO_JTAG_DATA_VIO <= reg_FIFO_TO_JTAG_DATA_VIO[31:0];
        FIFO_TO_JTAG_TKEEP_VIO <= reg_FIFO_TO_JTAG_DATA_VIO[35:32]; 
    end
end

always @ (posedge clk)
begin
    data_consume_fifo_reset_n <= ~i_s_axis_mm2s_cmd_tvalid & VIO_mm2s_FIFO_RESET_N;
end
        
jtag_axi_debug_fifo_x64 u_jtag_axi_debug_fifo_x64 (
  .s_aclk(clk), // input s_aclk
  .s_aresetn(data_consume_fifo_reset_n), // input s_aresetn
  .s_axis_tvalid(m_axis_mm2s_tvalid), // input s_axis_tvalid
  .s_axis_tready(m_axis_mm2s_tready), // output s_axis_tready
  .s_axis_tdata({28'h0000000, m_axis_mm2s_tkeep, m_axis_mm2s_tdata}), // input [63 : 0] s_axis_tdata
  .m_axis_tvalid(mm2s_FIFO_TO_JTAG_DATA_valid), // output m_axis_tvalid
  .m_axis_tready(FIFO_TO_JTAG_DATA_read_strobe), // input m_axis_tready
  .m_axis_tdata(reg_FIFO_TO_JTAG_DATA_VIO), // output [63 : 0] m_axis_tdata
  .axis_data_count() // output [8 : 0] axis_data_count
);

endmodule
