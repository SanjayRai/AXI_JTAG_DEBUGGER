// Created : 10:53:39, Mon Feb 4, 2013 : Sanjay Rai

`timescale 1ns/100fs

module s2mm_data_gen (
    input clk,

    output s_axis_s2mm_cmd_tvalid,
    input s_axis_s2mm_cmd_tready,
    output [71:0] s_axis_s2mm_cmd_tdata,
  
    output [31 : 0] s_axis_s2mm_tdata,
    output [3 : 0] s_axis_s2mm_tkeep,
    output s_axis_s2mm_tvalid,
    output s_axis_s2mm_tlast,
    input s_axis_s2mm_tready,

    input wire  start_s2mm_xfer,
    input wire  VIO_s2mm_FIFO_RESET_N,
    input wire  [15:0] s2mm_number_of_bytes_to_xfer,
    input wire  [31:0] s2mm_start_address,
    input wire  VIO_s2mm_FIFO_DATA_in_valid,
    input wire  [31:0] VIO_s2mm_FIFO_DATA_in,
    input wire  [3:0] VIO_s2mm_FIFO_TKEEP_in

);



wire  [63 : 0] i_s_axis_s2mm_tdata_tkeep;
wire  i_s_axis_s2mm_tvalid;
wire  i_s_axis_s2mm_tlast;
wire  i_s_axis_s2mm_tready;

reg i0_start_s2mm_xfer = 1'b0;
reg i1_start_s2mm_xfer = 1'b0;
reg i_s_axis_s2mm_cmd_tvalid = 1'b0;
reg i1_s_axis_s2mm_cmd_tvalid = 1'b0;
wire data_gen_fifo_reset_n;

reg [15:0] count = 16'hFFFF;
reg [15:0] i_number_of_bytes_to_xfer = 8'd0;


wire [39:0] s2mm_data_in_VIO;
reg i0_s_fifo_data_in_tvalid;
reg i1_s_fifo_data_in_tvalid;
reg s_fifo_data_in_tvalid;
wire enable_fifo_data_in_tvalid;
wire r_s_fifo_data_in_tvalid;

assign s_axis_s2mm_tdata = i_s_axis_s2mm_tdata_tkeep[31:0];
assign s_axis_s2mm_tkeep = i_s_axis_s2mm_tdata_tkeep[35:32];
assign s_axis_s2mm_tvalid = i_s_axis_s2mm_tvalid;
assign s_axis_s2mm_tlast = i_s_axis_s2mm_tlast;
assign i_s_axis_s2mm_tready = s_axis_s2mm_tready;

assign s_axis_s2mm_cmd_tvalid = i1_s_axis_s2mm_cmd_tvalid;

always @ (posedge clk)
begin
    i0_start_s2mm_xfer <= start_s2mm_xfer;
    i1_start_s2mm_xfer <= i0_start_s2mm_xfer;
    i_s_axis_s2mm_cmd_tvalid <= (~i0_start_s2mm_xfer & i1_start_s2mm_xfer & s_axis_s2mm_cmd_tready);
    i1_s_axis_s2mm_cmd_tvalid <= i_s_axis_s2mm_cmd_tvalid;
end

always @ (posedge clk)
begin
    if (i_s_axis_s2mm_cmd_tvalid) begin
        i_number_of_bytes_to_xfer <= s2mm_number_of_bytes_to_xfer;
    end
end

always @ (posedge clk)
begin
    if (i_s_axis_s2mm_cmd_tvalid)
        count <= 16'd4; 
    else if (i_s_axis_s2mm_tvalid && i_s_axis_s2mm_tready) begin
        count <= count + 4; //Since 4 bytes are transfered at a time (32 bit write)
    end
end
assign  i_s_axis_s2mm_tlast = (count == i_number_of_bytes_to_xfer);
assign  enable_fifo_data_in_tvalid = (count <= i_number_of_bytes_to_xfer);
assign r_s_fifo_data_in_tvalid = s_fifo_data_in_tvalid & enable_fifo_data_in_tvalid;

assign data_gen_fifo_reset_n = ~i0_start_s2mm_xfer & VIO_s2mm_FIFO_RESET_N;

jtag_axi_debug_fifo_x64 u_jtag_axi_debug_fifo_x64 (
  .s_aclk(clk), // input s_aclk
  .s_aresetn(data_gen_fifo_reset_n), // input s_aresetn
  .s_axis_tvalid(r_s_fifo_data_in_tvalid), // input s_axis_tvalid
  .s_axis_tready(), // output s_axis_tready
  .s_axis_tdata({28'h0000000, VIO_s2mm_FIFO_TKEEP_in, VIO_s2mm_FIFO_DATA_in}), // input [63 : 0] s_axis_tdata
  .m_axis_tvalid(i_s_axis_s2mm_tvalid), // output m_axis_tvalid
  .m_axis_tready(i_s_axis_s2mm_tready), // input m_axis_tready
  .m_axis_tdata(i_s_axis_s2mm_tdata_tkeep), // output [63 : 0] m_axis_tdata
  .axis_data_count() // output [8 : 0] axis_data_count
);


assign s_axis_s2mm_cmd_tdata = { 8'h00, s2mm_start_address, 2'b00, 6'b000000, 1'b1, 23'h7fffff};
always @ (posedge clk)
begin
    i0_s_fifo_data_in_tvalid <= VIO_s2mm_FIFO_DATA_in_valid; 
    i1_s_fifo_data_in_tvalid <= i0_s_fifo_data_in_tvalid; 
    s_fifo_data_in_tvalid <= i0_s_fifo_data_in_tvalid ^ i1_s_fifo_data_in_tvalid; 
end

endmodule
