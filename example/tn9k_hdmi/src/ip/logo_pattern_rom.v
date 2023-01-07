//Copyright (C)2014-2019 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.2.02Beta
//Part Number: GW1N-LV1QN48C6/I5
//Created Time: Mon Feb 10 05:35:32 2020

module logo_pattern_rom (dout, clk, oce, ce, reset, ad);

output [0:0] dout;
input clk;
input oce;
input ce;
input reset;
input [15:0] ad;

wire [0:0] rrom_inst_0_dout;
wire [0:0] rrom_inst_1_dout;
wire [0:0] rrom_inst_2_dout;
wire dff_q_0;
wire dff_q_1;
wire mux_o_0;
wire gw_gnd;

assign gw_gnd = 1'b0;

rROM rrom_inst_0 (
    .DO(rrom_inst_0_dout[0]),
    .CLK(clk),
    .OCE(oce),
    .CE(ce),
    .RESET(reset),
    .BLKSEL({gw_gnd,ad[15],ad[14]}),
    .AD(ad[13:0])
);

defparam rrom_inst_0.READ_MODE = 1'b0;
defparam rrom_inst_0.BIT_WIDTH = 1;
defparam rrom_inst_0.BLK_SEL = 3'b000;
defparam rrom_inst_0.RESET_MODE = "SYNC";
defparam rrom_inst_0.INIT_RAM_00 = 256'h00000000FFFFFFFFFFFFFFFC00000000001FFFFFFFFFFFFFFFFFFFFFFFC00000;
defparam rrom_inst_0.INIT_RAM_01 = 256'h0000003FFFFFFFFFFFFFFFFE00000000001FFFFFFFFFFFFFFFFFFFFFFFC00000;
defparam rrom_inst_0.INIT_RAM_02 = 256'h000003FFFFFFFFFFFFFFFFFF00000000001FFFFFFFFFFFFFFFFFFFFFFFC00000;
defparam rrom_inst_0.INIT_RAM_03 = 256'h00001FFFFFFFFFFFFFFFFFFF00000000003FFFFFFFFFFFFFFFFFFFFFFFE00000;
defparam rrom_inst_0.INIT_RAM_04 = 256'h00007FFFFFFFFFFFFFFFFFFF80000000003FFFFFFFFFFFFFFFFFFFFFFFE00000;
defparam rrom_inst_0.INIT_RAM_05 = 256'h0001FFFFFFFFFFFFFFFFFFFFC0000000003FFFFFFFFFFFFFFFFFFFFFFFE00000;
defparam rrom_inst_0.INIT_RAM_06 = 256'h0007FFFFFFFFFFFFFFFFFFFFE0000000007FFFFFFFFFFFFFFFFFFFFFFFE00000;
defparam rrom_inst_0.INIT_RAM_07 = 256'h000FFFFFFFFFFFFFFFFFFFFFF0000000007FFFFFFFFFFFFFFFFFFFFFFFF00000;
defparam rrom_inst_0.INIT_RAM_08 = 256'h003FFFFFFFFFFFFFFFFFFFFFF0000000007FFFFFFFFFFFFFFFFFFFFFFFF00000;
defparam rrom_inst_0.INIT_RAM_09 = 256'h007FFFFFFFFFFFFFFFFFFFFFF8000000007FFFFFFFFFFFFFFFFFFFFFFFF00000;
defparam rrom_inst_0.INIT_RAM_0A = 256'h00FFFFFFFFFFFFFFFFFFFFFFFC00000000FFFFFFFFFFFFFFFFFFFFFFFFF00000;
defparam rrom_inst_0.INIT_RAM_0B = 256'h01FFFFFFFFFFFFFFFFFFFFFFFE00000000FFFFFFFFFFFFFFFFFFFFFFFFF00000;
defparam rrom_inst_0.INIT_RAM_0C = 256'h03FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFF80000;
defparam rrom_inst_0.INIT_RAM_0D = 256'h07FFFFFFFFFFFFFFFFFFFFFFFF00000001FFFFFFFFFFFFFFFFFFFFFFFFF80000;
defparam rrom_inst_0.INIT_RAM_0E = 256'h0FFFFFFFFFC000000001FFFFFF80000001FFFFFFFFFFFFFFFFFFE00000000000;
defparam rrom_inst_0.INIT_RAM_0F = 256'h0FFFFFFFF80000000000FFFFFFC0000001FFFFFFFFFFFFFFE000000000000000;
defparam rrom_inst_0.INIT_RAM_10 = 256'h1FFFFFFFE000000000007FFFFFE0000003FFFFFFFFFFFFFF0000000000000000;
defparam rrom_inst_0.INIT_RAM_11 = 256'h3FFFFFFF8000000000003FFFFFF0000003FFFFFFFFFFFFFC0000000000000000;
defparam rrom_inst_0.INIT_RAM_12 = 256'h3FFFFFFE0000000000003FFFFFF0000003FFFFFFFFFFFFF80000000000000000;
defparam rrom_inst_0.INIT_RAM_13 = 256'h3FFFFFFC000000FFFFFF9FFFFFF8000007FFFFFFFFFFFFF0000003FFFFFC0000;
defparam rrom_inst_0.INIT_RAM_14 = 256'h7FFFFFF8000000FFFFFF8FFFFFFC000007FFFFFFFFFFFFE0000007FFFFFE0000;
defparam rrom_inst_0.INIT_RAM_15 = 256'h7FFFFFF0000000FFFFFFC7FFFFFE000007FFFFFFFFFFFFC0000003FFFFFE0000;
defparam rrom_inst_0.INIT_RAM_16 = 256'h7FFFFFE00000007FFFFFC3FFFFFF000007FFFFF7FFFFFF80000003FFFFFE0000;
defparam rrom_inst_0.INIT_RAM_17 = 256'hFFFFFFE00000007FFFFFC1FFFFFF00000FFFFFF7FFFFFF80000003FFFFFF0000;
defparam rrom_inst_0.INIT_RAM_18 = 256'hFFFFFFC00000007FFFFFC0FFFFFF80000FFFFFE7FFFFFF00000001FFFFFF0000;
defparam rrom_inst_0.INIT_RAM_19 = 256'hFFFFFFC00000007FFFFFE07FFFFFC0000FFFFFE7FFFFFF00000001FFFFFF0000;
defparam rrom_inst_0.INIT_RAM_1A = 256'hFFFFFFC00000003FFFFFE03FFFFFE0001FFFFFE7FFFFFF00000001FFFFFF0000;
defparam rrom_inst_0.INIT_RAM_1B = 256'hFFFFFF800000003FFFFFE01FFFFFF0001FFFFFC7FFFFFF00000001FFFFFF8000;
defparam rrom_inst_0.INIT_RAM_1C = 256'hFFFFFF800000003FFFFFE01FFFFFF0001FFFFFC7FFFFFE00000000FFFFFF8000;
defparam rrom_inst_0.INIT_RAM_1D = 256'hFFFFFF800000003FFFFFE00FFFFFF8003FFFFFC7FFFFFE00000000FFFFFF8000;
defparam rrom_inst_0.INIT_RAM_1E = 256'hFFFFFFC00000001FFFFFF007FFFFFC003FFFFF87FFFFFF00000000FFFFFF8000;
defparam rrom_inst_0.INIT_RAM_1F = 256'hFFFFFFC00000001FFFFFF003FFFFFE003FFFFF87FFFFFF00000000FFFFFFC000;
defparam rrom_inst_0.INIT_RAM_20 = 256'hFFFFFFC00000001FFFFFF001FFFFFF007FFFFF87FFFFFF000000007FFFFFC000;
defparam rrom_inst_0.INIT_RAM_21 = 256'hFFFFFFC00000001FFFFFF000FFFFFF007FFFFF07FFFFFF000000007FFFFFC000;
defparam rrom_inst_0.INIT_RAM_22 = 256'h7FFFFFE00000000FFFFFF8007FFFFF807FFFFF07FFFFFF800000007FFFFFC000;
defparam rrom_inst_0.INIT_RAM_23 = 256'h7FFFFFE00000000FFFFFF8003FFFFFC07FFFFE03FFFFFF800000007FFFFFC000;
defparam rrom_inst_0.INIT_RAM_24 = 256'h7FFFFFF00000000FFFFFF8001FFFFFE0FFFFFE03FFFFFFC00000003FFFFFE000;
defparam rrom_inst_0.INIT_RAM_25 = 256'h3FFFFFF00000000FFFFFF8001FFFFFF0FFFFFE03FFFFFFC00000003FFFFFE000;
defparam rrom_inst_0.INIT_RAM_26 = 256'h3FFFFFF80000000FFFFFFC000FFFFFF0FFFFFC01FFFFFFE00000003FFFFFE000;
defparam rrom_inst_0.INIT_RAM_27 = 256'h1FFFFFFC00000007FFFFFC0007FFFFF9FFFFFC01FFFFFFF00000003FFFFFE000;
defparam rrom_inst_0.INIT_RAM_28 = 256'h1FFFFFFE00000007FFFFFC0003FFFFFDFFFFFC00FFFFFFF80000001FFFFFF000;
defparam rrom_inst_0.INIT_RAM_29 = 256'h0FFFFFFF00000007FFFFFC0001FFFFFFFFFFF800FFFFFFFC0000001FFFFFF000;
defparam rrom_inst_0.INIT_RAM_2A = 256'h0FFFFFFF80000007FFFFFE0000FFFFFFFFFFF8007FFFFFFE0000001FFFFFF000;
defparam rrom_inst_0.INIT_RAM_2B = 256'h07FFFFFFE0000003FFFFFE00007FFFFFFFFFF8003FFFFFFF8000001FFFFFF000;
defparam rrom_inst_0.INIT_RAM_2C = 256'h03FFFFFFF8000003FFFFFE00003FFFFFFFFFF0003FFFFFFFE000000FFFFFF800;
defparam rrom_inst_0.INIT_RAM_2D = 256'h01FFFFFFFC000003FFFFFE00001FFFFFFFFFF0001FFFFFFFF000000FFFFFF800;
defparam rrom_inst_0.INIT_RAM_2E = 256'h00FFFFFFFF800003FFFFFF00001FFFFFFFFFE0000FFFFFFFFE00000FFFFFF800;
defparam rrom_inst_0.INIT_RAM_2F = 256'h007FFFFFFFF00001FFFFFF00000FFFFFFFFFE00007FFFFFFFFC0000FFFFFF800;
defparam rrom_inst_0.INIT_RAM_30 = 256'h003FFFFFFFFE0001FFFFFF000007FFFFFFFFE00001FFFFFFFFFC0007FFFFFC00;
defparam rrom_inst_0.INIT_RAM_31 = 256'h001FFFFFFFFFFFFFFFFFFF000003FFFFFFFFC00000FFFFFFFFFFFFFFFFFFFC00;
defparam rrom_inst_0.INIT_RAM_32 = 256'h000FFFFFFFFFFFFFFFFFFF000001FFFFFFFFC000007FFFFFFFFFFFFFFFFFFC00;
defparam rrom_inst_0.INIT_RAM_33 = 256'h0007FFFFFFFFFFFFFFFFFF800000FFFFFFFFC000001FFFFFFFFFFFFFFFFFFC00;
defparam rrom_inst_0.INIT_RAM_34 = 256'h0001FFFFFFFFFFFFFFFFFF8000007FFFFFFF80000007FFFFFFFFFFFFFFFFFC00;
defparam rrom_inst_0.INIT_RAM_35 = 256'h0000FFFFFFFFFFFFFFFFFF8000003FFFFFFF80000003FFFFFFFFFFFFFFFFFE00;
defparam rrom_inst_0.INIT_RAM_36 = 256'h00003FFFFFFFFFFFFFFFFF8000001FFFFFFF800000007FFFFFFFFFFFFFFFFE00;
defparam rrom_inst_0.INIT_RAM_37 = 256'h00000FFFFFFFFFFFFFFFFFC000001FFFFFFF000000001FFFFFFFFFFFFFFFFE00;
defparam rrom_inst_0.INIT_RAM_38 = 256'h000003FFFFFFFFFFFFFFFFC000000FFFFFFF0000000007FFFFFFFFFFFFFFFE00;
defparam rrom_inst_0.INIT_RAM_39 = 256'h000000FFFFFFFFFFFFFFFFC0000007FFFFFE0000000000FFFFFFFFFFFFFFFF00;
defparam rrom_inst_0.INIT_RAM_3A = 256'h0000003FFFFFFFFFFFFFFFC0000003FFFFFE00000000000FFFFFFFFFFFFFFF00;
defparam rrom_inst_0.INIT_RAM_3B = 256'h00000007FFFFFFFFFFFFFFE0000001FFFFFE000000000000FFFFFFFFFFFFFF00;
defparam rrom_inst_0.INIT_RAM_3C = 256'h000000007FFFFFFFFFFFFFE0000000FFFFFC0000000000000FFFFFFFFFFFFF00;
defparam rrom_inst_0.INIT_RAM_3D = 256'h0000000007FFFFFFFFFFFFE00000007FFFFC000000000000003FFFFFFFFFFF80;
defparam rrom_inst_0.INIT_RAM_3E = 256'h00000000003FFFFFFFFFFFE00000003FFFFC00000000000000003FFFFFFFFF80;
defparam rrom_inst_0.INIT_RAM_3F = 256'h0000000000000000000000000000001FFFF800000000000000000001FFFFFE00;

rROM rrom_inst_1 (
    .DO(rrom_inst_1_dout[0]),
    .CLK(clk),
    .OCE(oce),
    .CE(ce),
    .RESET(reset),
    .BLKSEL({gw_gnd,ad[15],ad[14]}),
    .AD(ad[13:0])
);

defparam rrom_inst_1.READ_MODE = 1'b0;
defparam rrom_inst_1.BIT_WIDTH = 1;
defparam rrom_inst_1.BLK_SEL = 3'b001;
defparam rrom_inst_1.RESET_MODE = "SYNC";
defparam rrom_inst_1.INIT_RAM_00 = 256'h0000000000000000000000000000001FFFF80000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_01 = 256'h0000000000000000000000000000000FFFF00000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_02 = 256'h00000000000000000000000000000007FFF00000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_03 = 256'h00000000000000000000000000000003FFF00000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_04 = 256'h00000000000000000000000000000001FFE00000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_05 = 256'h00000000000000000000000000000000FFE00000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_06 = 256'h000000000000000000000000000000007FE00000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_07 = 256'h000000000000000000000000000000003FC00000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_08 = 256'h000000000000000000000000000000001FC00000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_09 = 256'h000000000000000000000000000000001FC00000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_0A = 256'h000000000000000000000000000000000F800000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_0B = 256'h0000000000000000000000000000000007800000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_0C = 256'h0000000000000000000000000000000003000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_0D = 256'h0000000000000000000000000000000001000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_0E = 256'h000000000000000000000000000000FFFFFFFC00000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_0F = 256'h00000000000000000000000FFFFFFFFFFFFFFFFFFFFFC0000000000000000000;
defparam rrom_inst_1.INIT_RAM_10 = 256'h0000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000;
defparam rrom_inst_1.INIT_RAM_11 = 256'h00000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000;
defparam rrom_inst_1.INIT_RAM_12 = 256'h00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000;
defparam rrom_inst_1.INIT_RAM_13 = 256'h000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000;
defparam rrom_inst_1.INIT_RAM_14 = 256'h00000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000;
defparam rrom_inst_1.INIT_RAM_15 = 256'h000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000;
defparam rrom_inst_1.INIT_RAM_16 = 256'h00000000FFFFFFFFFFFFFFFFFFFFFFFF8000FFFFFFFFFFFFFFFFFFFFFFFC0000;
defparam rrom_inst_1.INIT_RAM_17 = 256'h0000000FFFFFFFFFFFFFFFFFFFFFFE000000001FFFFFFFFFFFFFFFFFFFFFC000;
defparam rrom_inst_1.INIT_RAM_18 = 256'h000000FFFFFFFFFFFFFFFFFFFFFF800000000000FFFFFFFFFFFFFFFFFFFFF800;
defparam rrom_inst_1.INIT_RAM_19 = 256'h000007FFFFFFFFFFFFFFFFFFFFF80000000000000FFFFFFFFFFFFFFFFFFFFF00;
defparam rrom_inst_1.INIT_RAM_1A = 256'h00001FFFFFFFFFFFFFFFFFFFFFC000000000000001FFFFFFFFFFFFFFFFFFFFE0;
defparam rrom_inst_1.INIT_RAM_1B = 256'h00007FFFFFFFFFFFFFFFFFFFFF00000000000000007FFFFFFFFFFFFFFFFFFFF8;
defparam rrom_inst_1.INIT_RAM_1C = 256'h0001FFFFFFFFFFFFFFFFFFFFFE00000000000000001FFFFFFFFFFFFFFFFFFFFC;
defparam rrom_inst_1.INIT_RAM_1D = 256'h0003FFFFFFFFFFFFFFFFFFFFFC00000000000000001FFFFFFFFFFFFFFFFFFFFE;
defparam rrom_inst_1.INIT_RAM_1E = 256'h0003FFFFFFFFFFFFFFFFFFFFF800000000000000000FFFFFFFFFFFFFFFFFFFFF;
defparam rrom_inst_1.INIT_RAM_1F = 256'h0007FFFFFFFFFFFFFFFFFFFFFC00000000000000001FFFFFFFFFFFFFFFFFFFFF;
defparam rrom_inst_1.INIT_RAM_20 = 256'h0007FFFFFFFFFFFFFFFFFFFFFC00000000000000001FFFFFFFFFFFFFFFFFFFFF;
defparam rrom_inst_1.INIT_RAM_21 = 256'h0003FFFFFFFFFFFFFFFFFFFFFF00000000000000007FFFFFFFFFFFFFFFFFFFFE;
defparam rrom_inst_1.INIT_RAM_22 = 256'h0001FFFFFFFFFFFFFFFFFFFFFFC000000000000001FFFFFFFFFFFFFFFFFFFFFC;
defparam rrom_inst_1.INIT_RAM_23 = 256'h0000FFFFFFFFFFFFFFFFFFFFFFF80000000000000FFFFFFFFFFFFFFFFFFFFFF8;
defparam rrom_inst_1.INIT_RAM_24 = 256'h00003FFFFFFFFFFFFFFFFFFFFFFF800000000000FFFFFFFFFFFFFFFFFFFFFFE0;
defparam rrom_inst_1.INIT_RAM_25 = 256'h00000FFFFFFFFFFFFFFFFFFFFFFFFC000000001FFFFFFFFFFFFFFFFFFFFFFF80;
defparam rrom_inst_1.INIT_RAM_26 = 256'h000001FFFFFFFFFFFFFFFFFFFFFFFFFF00007FFFFFFFFFFFFFFFFFFFFFFFFC00;
defparam rrom_inst_1.INIT_RAM_27 = 256'h0000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000;
defparam rrom_inst_1.INIT_RAM_28 = 256'h00000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000;
defparam rrom_inst_1.INIT_RAM_29 = 256'h000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000;
defparam rrom_inst_1.INIT_RAM_2A = 256'h0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000;
defparam rrom_inst_1.INIT_RAM_2B = 256'h000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000;
defparam rrom_inst_1.INIT_RAM_2C = 256'h00000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000;
defparam rrom_inst_1.INIT_RAM_2D = 256'h0000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000;
defparam rrom_inst_1.INIT_RAM_2E = 256'h0000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000;
defparam rrom_inst_1.INIT_RAM_2F = 256'h0000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFE000000000000000000;
defparam rrom_inst_1.INIT_RAM_30 = 256'h000000000000000000000000000FFFFFFFFFFFFFC00000000000000000000000;
defparam rrom_inst_1.INIT_RAM_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam rrom_inst_1.INIT_RAM_3B = 256'h000000000000003FFE0000007FFFFF80000003FFF80003F0001FC0003F800000;
defparam rrom_inst_1.INIT_RAM_3C = 256'h00000000000001FFFFC000007FFFFF8000003FFFF80003F0000FE0007F000000;
defparam rrom_inst_1.INIT_RAM_3D = 256'h00000000000007FFFFF000007FFFFF800000FFFFF80003F0000FE000FF000000;
defparam rrom_inst_1.INIT_RAM_3E = 256'h0000000000000FFFFFF800007FFFFF800003FFFFF80003F00007F000FE000000;
defparam rrom_inst_1.INIT_RAM_3F = 256'h0000000000001FF007FC000000007F800007FC01F80003F00007F001FE000000;

rROM rrom_inst_2 (
    .DO(rrom_inst_2_dout[0]),
    .CLK(clk),
    .OCE(oce),
    .CE(ce),
    .RESET(reset),
    .BLKSEL({gw_gnd,ad[15],ad[14]}),
    .AD(ad[13:0])
);

defparam rrom_inst_2.READ_MODE = 1'b0;
defparam rrom_inst_2.BIT_WIDTH = 1;
defparam rrom_inst_2.BLK_SEL = 3'b010;
defparam rrom_inst_2.RESET_MODE = "SYNC";
defparam rrom_inst_2.INIT_RAM_00 = 256'h0000000000003FC001FE000000007F80000FF001F80003F00003F801FC000000;
defparam rrom_inst_2.INIT_RAM_01 = 256'h0000000000007F80007F000000007F80001FE001F80003F00003F803F8000000;
defparam rrom_inst_2.INIT_RAM_02 = 256'h0000000000007F00007F800000007F80003FC001F80003F00001FC03F8000000;
defparam rrom_inst_2.INIT_RAM_03 = 256'h000000000000FE00003F800000007F80003F8001F80003F00000FC07F0000000;
defparam rrom_inst_2.INIT_RAM_04 = 256'h000000000000FE00001F80003FFFFF80007F8001F80003F00000FE07F0000000;
defparam rrom_inst_2.INIT_RAM_05 = 256'h000000000000FE00001FC0003FFFFF80007F0001F80003F000007E0FE0000000;
defparam rrom_inst_2.INIT_RAM_06 = 256'h000000000000FE00001FC0003FFFFF80007F0001F80003F000007F0FE0000000;
defparam rrom_inst_2.INIT_RAM_07 = 256'h000000000000FE00001FC0003FFFFF80007F0001F80003F000003F1FC0000000;
defparam rrom_inst_2.INIT_RAM_08 = 256'h000000000000FE00001F800000007F80007F0001F80003F000003F9FC0000000;
defparam rrom_inst_2.INIT_RAM_09 = 256'h000000000000FE00003F800000007F80007F8001F80003F000001FBF80000000;
defparam rrom_inst_2.INIT_RAM_0A = 256'h000000000000FF00003F800000007F80003F8001F80003F000001FFF80000000;
defparam rrom_inst_2.INIT_RAM_0B = 256'h0000000000007F80007F000000007F80003FC001F80003F000000FFF00000000;
defparam rrom_inst_2.INIT_RAM_0C = 256'h0000000000003FC000FF000000007F80001FE001F80003F0000007FE00000000;
defparam rrom_inst_2.INIT_RAM_0D = 256'h0000000000003FF003FE000000007F80000FF801F80003F0000007FE00000000;
defparam rrom_inst_2.INIT_RAM_0E = 256'h0000000000001FFFFFFC00007FFFFF800007FFFFF80003F0000003FC00000000;
defparam rrom_inst_2.INIT_RAM_0F = 256'h00000000000007FFFFF000007FFFFF800001FFFFF80003F0000003FC00000000;
defparam rrom_inst_2.INIT_RAM_10 = 256'h00000000000003FFFFE000007FFFFF8000007FFFF80003F0000001F800000000;
defparam rrom_inst_2.INIT_RAM_11 = 256'h00000000000000FFFF8000007FFFFF8000001FFFF80003F0000001F800000000;
defparam rrom_inst_2.INIT_RAM_12 = 256'h000000000000000FF8000000000000000000000000000000000000F000000000;
defparam rrom_inst_2.INIT_RAM_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

DFFE dff_inst_0 (
  .Q(dff_q_0),
  .D(ad[15]),
  .CLK(clk),
  .CE(ce)
);
DFFE dff_inst_1 (
  .Q(dff_q_1),
  .D(ad[14]),
  .CLK(clk),
  .CE(ce)
);
MUX2 mux_inst_0 (
  .O(mux_o_0),
  .I0(rrom_inst_0_dout[0]),
  .I1(rrom_inst_1_dout[0]),
  .S0(dff_q_1)
);
MUX2 mux_inst_2 (
  .O(dout[0]),
  .I0(mux_o_0),
  .I1(rrom_inst_2_dout[0]),
  .S0(dff_q_0)
);
endmodule //logo_pattern_rom