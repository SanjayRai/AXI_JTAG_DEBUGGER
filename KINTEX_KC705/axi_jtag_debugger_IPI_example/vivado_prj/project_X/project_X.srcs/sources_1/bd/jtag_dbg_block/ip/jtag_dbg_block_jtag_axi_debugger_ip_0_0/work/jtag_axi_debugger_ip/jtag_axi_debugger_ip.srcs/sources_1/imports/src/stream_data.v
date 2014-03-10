module stream_data (
    input clk,
    output data_mover_aresetn,

    output wire [31:0]GP_OUT_32_A,
    output wire [31:0]GP_OUT_32_B,
    input  wire [31:0]GP_IN_32_A,
    input  wire [31:0]GP_IN_32_B,
// axi4_lite
    output axi4_lite_s_axis_mm2s_cmd_tvalid,
    input axi4_lite_s_axis_mm2s_cmd_tready,
    output [71:0] axi4_lite_s_axis_mm2s_cmd_tdata,
  
    input [31 : 0] axi4_lite_m_axis_mm2s_tdata,
    input [3 : 0] axi4_lite_m_axis_mm2s_tkeep,
    input axi4_lite_m_axis_mm2s_tvalid,
    output axi4_lite_m_axis_mm2s_tready,

    output axi4_lite_s_axis_s2mm_cmd_tvalid,
    input axi4_lite_s_axis_s2mm_cmd_tready,
    output [71:0] axi4_lite_s_axis_s2mm_cmd_tdata,
  
    output [31 : 0] axi4_lite_s_axis_s2mm_tdata,
    output [3 : 0] axi4_lite_s_axis_s2mm_tkeep,
    output axi4_lite_s_axis_s2mm_tvalid,
    output axi4_lite_s_axis_s2mm_tlast,
    input axi4_lite_s_axis_s2mm_tready,

// axi4_mm
    output axi4_s_axis_mm2s_cmd_tvalid,
    input axi4_s_axis_mm2s_cmd_tready,
    output [71:0] axi4_s_axis_mm2s_cmd_tdata,
  
    input [31 : 0] axi4_m_axis_mm2s_tdata,
    input [3 : 0] axi4_m_axis_mm2s_tkeep,
    input axi4_m_axis_mm2s_tvalid,
    output axi4_m_axis_mm2s_tready,

    output axi4_s_axis_s2mm_cmd_tvalid,
    input axi4_s_axis_s2mm_cmd_tready,
    output [71:0] axi4_s_axis_s2mm_cmd_tdata,
  
    output [31 : 0] axi4_s_axis_s2mm_tdata,
    output [3 : 0] axi4_s_axis_s2mm_tkeep,
    output axi4_s_axis_s2mm_tvalid,
    output axi4_s_axis_s2mm_tlast,
    input axi4_s_axis_s2mm_tready
);


(* dont_touch = "true" *)wire axi4_mm2s_FIFO_TO_JTAG_DATA_valid;
(* dont_touch = "true" *)wire [31:0] axi4_mm2s_FIFO_TO_JTAG_DATA_VIO;
(* dont_touch = "true" *)wire [3:0] axi4_mm2s_FIFO_TO_JTAG_TKEEP_VIO;
(* dont_touch = "true" *)wire axi4_start_mm2s_xfer;
(* dont_touch = "true" *)wire axi4_VIO_mm2s_FIFO_RESET_N;
(* dont_touch = "true" *)wire axi4_mm2s_FIFO_TO_JTAG_READ_VIO;
(* dont_touch = "true" *)wire [31:0] axi4_mm2s_start_address;
(* dont_touch = "true" *)wire [15:0] axi4_mm2s_number_of_bytes_to_xfer;

(* dont_touch = "true" *)wire  axi4_start_s2mm_xfer;
(* dont_touch = "true" *)wire  axi4_VIO_s2mm_FIFO_RESET_N;
(* dont_touch = "true" *)wire  [15:0] axi4_s2mm_number_of_bytes_to_xfer;
(* dont_touch = "true" *)wire  [31:0] axi4_s2mm_start_address;
(* dont_touch = "true" *)wire  axi4_VIO_s2mm_FIFO_DATA_in_valid;
(* dont_touch = "true" *)wire  [31:0] axi4_VIO_s2mm_FIFO_DATA_in;
(* dont_touch = "true" *)wire  [3:0] axi4_VIO_s2mm_FIFO_TKEEP_in;

(* dont_touch = "true" *)wire axi4_lite_mm2s_FIFO_TO_JTAG_DATA_valid;
(* dont_touch = "true" *)wire [31:0] axi4_lite_mm2s_FIFO_TO_JTAG_DATA_VIO;
(* dont_touch = "true" *)wire [3:0] axi4_lite_mm2s_FIFO_TO_JTAG_TKEEP_VIO;
(* dont_touch = "true" *)wire axi4_lite_start_mm2s_xfer;
(* dont_touch = "true" *)wire axi4_lite_VIO_mm2s_FIFO_RESET_N;
(* dont_touch = "true" *)wire axi4_lite_mm2s_FIFO_TO_JTAG_READ_VIO;
(* dont_touch = "true" *)wire [31:0] axi4_lite_mm2s_start_address;
(* dont_touch = "true" *)wire [15:0] axi4_lite_mm2s_number_of_bytes_to_xfer;

(* dont_touch = "true" *)wire  axi4_lite_start_s2mm_xfer;
(* dont_touch = "true" *)wire  axi4_lite_VIO_s2mm_FIFO_RESET_N;
(* dont_touch = "true" *)wire  [15:0] axi4_lite_s2mm_number_of_bytes_to_xfer;
(* dont_touch = "true" *)wire  [31:0] axi4_lite_s2mm_start_address;
(* dont_touch = "true" *)wire  axi4_lite_VIO_s2mm_FIFO_DATA_in_valid;
(* dont_touch = "true" *)wire  [31:0] axi4_lite_VIO_s2mm_FIFO_DATA_in;
(* dont_touch = "true" *)wire  [3:0] axi4_lite_VIO_s2mm_FIFO_TKEEP_in;

(* dont_touch = "true" *)wire i_data_mover_aresetn;

(* dont_touch = "true" *)wire [31:0]GPIO_OUT_A;
(* dont_touch = "true" *)wire [31:0]GPIO_OUT_B;
(* dont_touch = "true" *)reg [31:0]GPIO_IN_A;
(* dont_touch = "true" *)reg [31:0]GPIO_IN_B;


assign data_mover_aresetn = i_data_mover_aresetn;

s2mm_data_gen u_s2mm_data_gen_axi4_lite (
    .clk(clk),
    .s_axis_s2mm_cmd_tvalid(axi4_lite_s_axis_s2mm_cmd_tvalid),
    .s_axis_s2mm_cmd_tready(axi4_lite_s_axis_s2mm_cmd_tready),
    .s_axis_s2mm_cmd_tdata(axi4_lite_s_axis_s2mm_cmd_tdata),
    .s_axis_s2mm_tdata(axi4_lite_s_axis_s2mm_tdata),
    .s_axis_s2mm_tkeep(axi4_lite_s_axis_s2mm_tkeep),
    .s_axis_s2mm_tvalid(axi4_lite_s_axis_s2mm_tvalid),
    .s_axis_s2mm_tlast(axi4_lite_s_axis_s2mm_tlast),
    .s_axis_s2mm_tready(axi4_lite_s_axis_s2mm_tready),
    .start_s2mm_xfer(axi4_lite_start_s2mm_xfer),
    .VIO_s2mm_FIFO_RESET_N(axi4_lite_VIO_s2mm_FIFO_RESET_N),
    .s2mm_number_of_bytes_to_xfer(axi4_lite_s2mm_number_of_bytes_to_xfer),
    .s2mm_start_address(axi4_lite_s2mm_start_address),
    .VIO_s2mm_FIFO_DATA_in_valid(axi4_lite_VIO_s2mm_FIFO_DATA_in_valid),
    .VIO_s2mm_FIFO_DATA_in(axi4_lite_VIO_s2mm_FIFO_DATA_in),
    .VIO_s2mm_FIFO_TKEEP_in(axi4_lite_VIO_s2mm_FIFO_TKEEP_in));

mm2s_data_consume u_mm2s_data_consume_axi4_lite (
    .clk(clk),
    .s_axis_mm2s_cmd_tvalid(axi4_lite_s_axis_mm2s_cmd_tvalid),
    .s_axis_mm2s_cmd_tready(axi4_lite_s_axis_mm2s_cmd_tready),
    .s_axis_mm2s_cmd_tdata(axi4_lite_s_axis_mm2s_cmd_tdata),
    .m_axis_mm2s_tdata(axi4_lite_m_axis_mm2s_tdata),
    .m_axis_mm2s_tkeep(axi4_lite_m_axis_mm2s_tkeep),
    .m_axis_mm2s_tvalid(axi4_lite_m_axis_mm2s_tvalid),
    .m_axis_mm2s_tready(axi4_lite_m_axis_mm2s_tready),
    .mm2s_FIFO_TO_JTAG_DATA_valid(axi4_lite_mm2s_FIFO_TO_JTAG_DATA_valid),
    .FIFO_TO_JTAG_DATA_VIO(axi4_lite_mm2s_FIFO_TO_JTAG_DATA_VIO),
    .FIFO_TO_JTAG_TKEEP_VIO(axi4_lite_mm2s_FIFO_TO_JTAG_TKEEP_VIO),
    .start_mm2s_xfer(axi4_lite_start_mm2s_xfer),
    .VIO_mm2s_FIFO_RESET_N(axi4_lite_VIO_mm2s_FIFO_RESET_N),
    .mm2s_FIFO_TO_JTAG_READ_VIO(axi4_lite_mm2s_FIFO_TO_JTAG_READ_VIO),
    .mm2s_start_address(axi4_lite_mm2s_start_address),
    .mm2s_number_of_bytes_to_xfer(axi4_lite_mm2s_number_of_bytes_to_xfer));

s2mm_data_gen u_s2mm_data_gen_axi4 (
    .clk(clk),
    .s_axis_s2mm_cmd_tvalid(axi4_s_axis_s2mm_cmd_tvalid),
    .s_axis_s2mm_cmd_tready(axi4_s_axis_s2mm_cmd_tready),
    .s_axis_s2mm_cmd_tdata(axi4_s_axis_s2mm_cmd_tdata),
    .s_axis_s2mm_tdata(axi4_s_axis_s2mm_tdata),
    .s_axis_s2mm_tkeep(axi4_s_axis_s2mm_tkeep),
    .s_axis_s2mm_tvalid(axi4_s_axis_s2mm_tvalid),
    .s_axis_s2mm_tlast(axi4_s_axis_s2mm_tlast),
    .s_axis_s2mm_tready(axi4_s_axis_s2mm_tready),
    .start_s2mm_xfer(axi4_start_s2mm_xfer),
    .VIO_s2mm_FIFO_RESET_N(axi4_VIO_s2mm_FIFO_RESET_N),
    .s2mm_number_of_bytes_to_xfer(axi4_s2mm_number_of_bytes_to_xfer),
    .s2mm_start_address(axi4_s2mm_start_address),
    .VIO_s2mm_FIFO_DATA_in_valid(axi4_VIO_s2mm_FIFO_DATA_in_valid),
    .VIO_s2mm_FIFO_DATA_in(axi4_VIO_s2mm_FIFO_DATA_in),
    .VIO_s2mm_FIFO_TKEEP_in(axi4_VIO_s2mm_FIFO_TKEEP_in));

mm2s_data_consume u_mm2s_data_consume_axi4 (
    .clk(clk),
    .s_axis_mm2s_cmd_tvalid(axi4_s_axis_mm2s_cmd_tvalid),
    .s_axis_mm2s_cmd_tready(axi4_s_axis_mm2s_cmd_tready),
    .s_axis_mm2s_cmd_tdata(axi4_s_axis_mm2s_cmd_tdata),
    .m_axis_mm2s_tdata(axi4_m_axis_mm2s_tdata),
    .m_axis_mm2s_tkeep(axi4_m_axis_mm2s_tkeep),
    .m_axis_mm2s_tvalid(axi4_m_axis_mm2s_tvalid),
    .m_axis_mm2s_tready(axi4_m_axis_mm2s_tready),
    .mm2s_FIFO_TO_JTAG_DATA_valid(axi4_mm2s_FIFO_TO_JTAG_DATA_valid),
    .FIFO_TO_JTAG_DATA_VIO(axi4_mm2s_FIFO_TO_JTAG_DATA_VIO),
    .FIFO_TO_JTAG_TKEEP_VIO(axi4_mm2s_FIFO_TO_JTAG_TKEEP_VIO),
    .start_mm2s_xfer(axi4_start_mm2s_xfer),
    .VIO_mm2s_FIFO_RESET_N(axi4_VIO_mm2s_FIFO_RESET_N),
    .mm2s_FIFO_TO_JTAG_READ_VIO(axi4_mm2s_FIFO_TO_JTAG_READ_VIO),
    .mm2s_start_address(axi4_mm2s_start_address),
    .mm2s_number_of_bytes_to_xfer(axi4_mm2s_number_of_bytes_to_xfer));

vio_axi_jtag_dbg U_vio_axi_jtag_dbg (
  .clk(clk), // input CLK
  .probe_in0(axi4_mm2s_FIFO_TO_JTAG_DATA_valid), // input [0 : 0]
  .probe_in1(axi4_mm2s_FIFO_TO_JTAG_DATA_VIO), // input [31 : 0]
  .probe_in2(axi4_mm2s_FIFO_TO_JTAG_TKEEP_VIO), // input [3 : 0]
  .probe_in3(axi4_lite_mm2s_FIFO_TO_JTAG_DATA_valid), // input [0 : 0]
  .probe_in4(axi4_lite_mm2s_FIFO_TO_JTAG_DATA_VIO), // input [31 : 0]
  .probe_in5(axi4_lite_mm2s_FIFO_TO_JTAG_TKEEP_VIO), // input [3 : 0]
  .probe_in6(GPIO_IN_A), // input [31 : 0]
  .probe_in7(GPIO_IN_B), // input [31 : 0]
  .probe_out0(axi4_start_mm2s_xfer), // output [0 : 0]
  .probe_out1(axi4_start_s2mm_xfer), // output [0 : 0]
  .probe_out2(axi4_VIO_mm2s_FIFO_RESET_N), // output [0 : 0]
  .probe_out3(axi4_VIO_s2mm_FIFO_RESET_N), // output [0 : 0]
  .probe_out4(axi4_mm2s_FIFO_TO_JTAG_READ_VIO), // output [0 : 0]
  .probe_out5(axi4_VIO_s2mm_FIFO_DATA_in_valid), // output [0 : 0]
  .probe_out6(axi4_mm2s_number_of_bytes_to_xfer), // output [15 : 0]
  .probe_out7(axi4_s2mm_number_of_bytes_to_xfer), // output [15 : 0]
  .probe_out8(axi4_mm2s_start_address), // output [31 : 0]
  .probe_out9(axi4_s2mm_start_address), // output [31 : 0]
  .probe_out10(axi4_VIO_s2mm_FIFO_DATA_in), // output [31 : 0]
  .probe_out11(axi4_VIO_s2mm_FIFO_TKEEP_in), // output [3 : 0]
  .probe_out12(axi4_lite_start_mm2s_xfer), // output [0 : 0]
  .probe_out13(axi4_lite_start_s2mm_xfer), // output [0 : 0]
  .probe_out14(axi4_lite_VIO_mm2s_FIFO_RESET_N), // output [0 : 0]
  .probe_out15(axi4_lite_VIO_s2mm_FIFO_RESET_N), // output [0 : 0]
  .probe_out16(axi4_lite_mm2s_FIFO_TO_JTAG_READ_VIO), // output [0 : 0]
  .probe_out17(axi4_lite_VIO_s2mm_FIFO_DATA_in_valid), // output [0 : 0]
  .probe_out18(axi4_lite_mm2s_number_of_bytes_to_xfer), // output [15 : 0]
  .probe_out19(axi4_lite_s2mm_number_of_bytes_to_xfer), // output [15 : 0]
  .probe_out20(axi4_lite_mm2s_start_address), // output [31 : 0]
  .probe_out21(axi4_lite_s2mm_start_address), // output [31 : 0]
  .probe_out22(axi4_lite_VIO_s2mm_FIFO_DATA_in), // output [31 : 0]
  .probe_out23(axi4_lite_VIO_s2mm_FIFO_TKEEP_in), // output [3 : 0]
  .probe_out24(i_data_mover_aresetn), // output [0 : 0]
  .probe_out25(GPIO_OUT_A), // output [31 : 0]
  .probe_out26(GPIO_OUT_B) // output [31 : 0]
);

assign GP_OUT_32_A = GPIO_OUT_A;
assign GP_OUT_32_B = GPIO_OUT_B;

always @ (posedge clk)
begin
    GPIO_IN_A <= GP_IN_32_A;
    GPIO_IN_B <= GP_IN_32_B;
end

endmodule
