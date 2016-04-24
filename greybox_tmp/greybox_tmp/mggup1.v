//altsyncram ADDRESS_ACLR_A="NONE" ADDRESS_ACLR_B="NONE" ADDRESS_REG_B="CLOCK0" BYTE_SIZE=8 BYTEENA_ACLR_A="NONE" CBX_SINGLE_OUTPUT_FILE="ON" INDATA_ACLR_A="NONE" INTENDED_DEVICE_FAMILY="Cyclone" LPM_TYPE="altsyncram" NUMWORDS_A=64 NUMWORDS_B=64 OPERATION_MODE="DUAL_PORT" OUTDATA_ACLR_B="NONE" OUTDATA_REG_B="CLOCK0" POWER_UP_UNINITIALIZED="FALSE" RDCONTROL_ACLR_B="NONE" RDCONTROL_REG_B="CLOCK0" READ_DURING_WRITE_MODE_MIXED_PORTS="DONT_CARE" WIDTH_A=8 WIDTH_B=8 WIDTH_BYTEENA_A=1 WIDTH_BYTEENA_B=1 WIDTH_ECCSTATUS=3 WIDTHAD_A=6 WIDTHAD_B=6 WRCONTROL_ACLR_A="NONE" address_a address_b byteena_a clock0 data_a q_b rden_b wren_a
//VERSION_BEGIN 13.0 cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratixii 2013:06:12:18:03:43:SJ cbx_util_mgl 2013:06:12:18:03:43:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2013 Altera Corporation
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, Altera MegaCore Function License 
//  Agreement, or other applicable license agreement, including, 
//  without limitation, that your use is for the sole purpose of 
//  programming logic devices manufactured by Altera and sold by 
//  Altera or its authorized distributors.  Please refer to the 
//  applicable agreement for further details.



//synthesis_resources = altsyncram 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mggup1
	( 
	address_a,
	address_b,
	byteena_a,
	clock0,
	data_a,
	q_b,
	rden_b,
	wren_a) /* synthesis synthesis_clearbox=1 */;
	input   [5:0]  address_a;
	input   [5:0]  address_b;
	input   [0:0]  byteena_a;
	input   clock0;
	input   [7:0]  data_a;
	output   [7:0]  q_b;
	input   rden_b;
	input   wren_a;

	wire  [7:0]   wire_mgl_prim1_q_b;

	altsyncram   mgl_prim1
	( 
	.address_a(address_a),
	.address_b(address_b),
	.byteena_a(byteena_a),
	.clock0(clock0),
	.data_a(data_a),
	.q_b(wire_mgl_prim1_q_b),
	.rden_b(rden_b),
	.wren_a(wren_a));
	defparam
		mgl_prim1.address_aclr_a = "NONE",
		mgl_prim1.address_aclr_b = "NONE",
		mgl_prim1.address_reg_b = "CLOCK0",
		mgl_prim1.byte_size = 8,
		mgl_prim1.byteena_aclr_a = "NONE",
		mgl_prim1.indata_aclr_a = "NONE",
		mgl_prim1.intended_device_family = "Cyclone",
		mgl_prim1.lpm_type = "altsyncram",
		mgl_prim1.numwords_a = 64,
		mgl_prim1.numwords_b = 64,
		mgl_prim1.operation_mode = "DUAL_PORT",
		mgl_prim1.outdata_aclr_b = "NONE",
		mgl_prim1.outdata_reg_b = "CLOCK0",
		mgl_prim1.power_up_uninitialized = "FALSE",
		mgl_prim1.rdcontrol_aclr_b = "NONE",
		mgl_prim1.rdcontrol_reg_b = "CLOCK0",
		mgl_prim1.read_during_write_mode_mixed_ports = "DONT_CARE",
		mgl_prim1.width_a = 8,
		mgl_prim1.width_b = 8,
		mgl_prim1.width_byteena_a = 1,
		mgl_prim1.width_byteena_b = 1,
		mgl_prim1.width_eccstatus = 3,
		mgl_prim1.widthad_a = 6,
		mgl_prim1.widthad_b = 6,
		mgl_prim1.wrcontrol_aclr_a = "NONE";
	assign
		q_b = wire_mgl_prim1_q_b;
endmodule //mggup1
//VALID FILE
