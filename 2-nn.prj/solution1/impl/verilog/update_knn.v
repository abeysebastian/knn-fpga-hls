// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module update_knn (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        test_inst_V,
        train_inst_V,
        min_distances_V_address0,
        min_distances_V_ce0,
        min_distances_V_we0,
        min_distances_V_d0,
        min_distances_V_q0,
        min_distances_V_address1,
        min_distances_V_ce1,
        min_distances_V_we1,
        min_distances_V_d1,
        min_distances_V_offset
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [48:0] test_inst_V;
input  [47:0] train_inst_V;
output  [4:0] min_distances_V_address0;
output   min_distances_V_ce0;
output   min_distances_V_we0;
output  [5:0] min_distances_V_d0;
input  [5:0] min_distances_V_q0;
output  [4:0] min_distances_V_address1;
output   min_distances_V_ce1;
output   min_distances_V_we1;
output  [5:0] min_distances_V_d1;
input  [3:0] min_distances_V_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] min_distances_V_address0;
reg min_distances_V_ce0;
reg min_distances_V_we0;
reg[5:0] min_distances_V_d0;
reg min_distances_V_ce1;
reg min_distances_V_we1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [4:0] min_distances_V_addr_reg_184;
reg   [4:0] min_distances_V_addr_1_reg_189;
wire   [48:0] r_V_fu_134_p2;
reg   [48:0] r_V_reg_195;
wire   [5:0] i_fu_150_p2;
wire    ap_CS_fsm_state2;
wire   [5:0] dist_V_fu_167_p2;
wire   [0:0] exitcond_fu_144_p2;
reg   [5:0] min_distances_V_load_reg_213;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_6_fu_173_p2;
reg   [0:0] tmp_6_reg_219;
reg   [5:0] min_distance_last_el_reg_78;
reg   [5:0] bvh_d_index_reg_91;
wire   [63:0] tmp_3_fu_121_p3;
wire   [63:0] tmp_1_fu_110_p1;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_9_fu_179_p2;
wire   [4:0] tmp_fu_102_p3;
wire   [4:0] tmp_2_fu_115_p2;
wire   [48:0] train_inst_V_cast_fu_130_p1;
wire   [31:0] index_assign_cast1_fu_140_p1;
wire   [0:0] tmp_4_fu_156_p3;
wire   [5:0] tmp_1_cast_fu_163_p1;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        bvh_d_index_reg_91 <= i_fu_150_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bvh_d_index_reg_91 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        min_distance_last_el_reg_78 <= dist_V_fu_167_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        min_distance_last_el_reg_78 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        min_distances_V_addr_1_reg_189[4 : 1] <= tmp_1_fu_110_p1[4 : 1];
        min_distances_V_addr_reg_184[4 : 1] <= tmp_3_fu_121_p3[4 : 1];
        r_V_reg_195 <= r_V_fu_134_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        min_distances_V_load_reg_213 <= min_distances_V_q0;
        tmp_6_reg_219 <= tmp_6_fu_173_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_6_fu_173_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        min_distances_V_address0 = min_distances_V_addr_1_reg_189;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((tmp_6_fu_173_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        min_distances_V_address0 = min_distances_V_addr_reg_184;
    end else begin
        min_distances_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((tmp_6_fu_173_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((tmp_6_fu_173_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        min_distances_V_ce0 = 1'b1;
    end else begin
        min_distances_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        min_distances_V_ce1 = 1'b1;
    end else begin
        min_distances_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        min_distances_V_d0 = min_distances_V_q0;
    end else if (((tmp_6_fu_173_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        min_distances_V_d0 = min_distance_last_el_reg_78;
    end else begin
        min_distances_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_9_fu_179_p2 == 1'd1) & (tmp_6_reg_219 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((tmp_6_fu_173_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        min_distances_V_we0 = 1'b1;
    end else begin
        min_distances_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_9_fu_179_p2 == 1'd1) & (tmp_6_reg_219 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        min_distances_V_we1 = 1'b1;
    end else begin
        min_distances_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign dist_V_fu_167_p2 = (min_distance_last_el_reg_78 + tmp_1_cast_fu_163_p1);

assign exitcond_fu_144_p2 = ((bvh_d_index_reg_91 == 6'd49) ? 1'b1 : 1'b0);

assign i_fu_150_p2 = (bvh_d_index_reg_91 + 6'd1);

assign index_assign_cast1_fu_140_p1 = bvh_d_index_reg_91;

assign min_distances_V_address1 = min_distances_V_addr_1_reg_189;

assign min_distances_V_d1 = min_distances_V_load_reg_213;

assign r_V_fu_134_p2 = (train_inst_V_cast_fu_130_p1 ^ test_inst_V);

assign tmp_1_cast_fu_163_p1 = tmp_4_fu_156_p3;

assign tmp_1_fu_110_p1 = tmp_fu_102_p3;

assign tmp_2_fu_115_p2 = (tmp_fu_102_p3 | 5'd1);

assign tmp_3_fu_121_p3 = {{59'd0}, {tmp_2_fu_115_p2}};

assign tmp_4_fu_156_p3 = r_V_reg_195[index_assign_cast1_fu_140_p1];

assign tmp_6_fu_173_p2 = ((min_distance_last_el_reg_78 < min_distances_V_q0) ? 1'b1 : 1'b0);

assign tmp_9_fu_179_p2 = ((min_distances_V_load_reg_213 < min_distances_V_q0) ? 1'b1 : 1'b0);

assign tmp_fu_102_p3 = {{min_distances_V_offset}, {1'd0}};

assign train_inst_V_cast_fu_130_p1 = train_inst_V;

always @ (posedge ap_clk) begin
    min_distances_V_addr_reg_184[0] <= 1'b1;
    min_distances_V_addr_1_reg_189[0] <= 1'b0;
end

endmodule //update_knn