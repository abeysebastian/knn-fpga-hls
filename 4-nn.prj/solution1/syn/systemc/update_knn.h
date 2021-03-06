// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _update_knn_HH_
#define _update_knn_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct update_knn : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<49> > test_inst_V;
    sc_in< sc_lv<48> > train_inst_V;
    sc_out< sc_lv<6> > min_distances_V_address0;
    sc_out< sc_logic > min_distances_V_ce0;
    sc_out< sc_logic > min_distances_V_we0;
    sc_out< sc_lv<6> > min_distances_V_d0;
    sc_in< sc_lv<6> > min_distances_V_q0;
    sc_out< sc_lv<6> > min_distances_V_address1;
    sc_out< sc_logic > min_distances_V_ce1;
    sc_out< sc_logic > min_distances_V_we1;
    sc_out< sc_lv<6> > min_distances_V_d1;
    sc_in< sc_lv<4> > min_distances_V_offset;


    // Module declarations
    update_knn(sc_module_name name);
    SC_HAS_PROCESS(update_knn);

    ~update_knn();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<49> > r_V_fu_128_p2;
    sc_signal< sc_lv<49> > r_V_reg_228;
    sc_signal< sc_lv<6> > i_fu_144_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > dist_V_fu_161_p2;
    sc_signal< sc_lv<1> > exitcond_fu_138_p2;
    sc_signal< sc_lv<6> > min_distances_V_addr_reg_256;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > tmp_4_fu_172_p2;
    sc_signal< sc_lv<6> > min_distance_last_el_1_reg_261;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_6_fu_194_p2;
    sc_signal< sc_lv<1> > tmp_6_reg_267;
    sc_signal< sc_lv<6> > min_distances_V_addr_1_reg_271;
    sc_signal< sc_lv<2> > grp_fu_118_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<6> > min_distance_last_el_reg_84;
    sc_signal< sc_lv<6> > bvh_d_index_reg_95;
    sc_signal< sc_lv<2> > i1_reg_106;
    sc_signal< sc_lv<64> > tmp_1_fu_185_p1;
    sc_signal< sc_lv<64> > tmp_3_fu_207_p1;
    sc_signal< sc_lv<6> > temp_min_distance_la_fu_38;
    sc_signal< sc_lv<1> > tmp_9_fu_217_p2;
    sc_signal< sc_lv<49> > train_inst_V_cast_fu_124_p1;
    sc_signal< sc_lv<32> > index_assign_cast2_fu_134_p1;
    sc_signal< sc_lv<1> > tmp_5_fu_150_p3;
    sc_signal< sc_lv<6> > tmp_1_cast_fu_157_p1;
    sc_signal< sc_lv<6> > tmp_fu_178_p3;
    sc_signal< sc_lv<6> > tmp_2_fu_200_p3;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_31;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_dist_V_fu_161_p2();
    void thread_exitcond_fu_138_p2();
    void thread_grp_fu_118_p2();
    void thread_i_fu_144_p2();
    void thread_index_assign_cast2_fu_134_p1();
    void thread_min_distances_V_address0();
    void thread_min_distances_V_address1();
    void thread_min_distances_V_ce0();
    void thread_min_distances_V_ce1();
    void thread_min_distances_V_d0();
    void thread_min_distances_V_d1();
    void thread_min_distances_V_we0();
    void thread_min_distances_V_we1();
    void thread_r_V_fu_128_p2();
    void thread_tmp_1_cast_fu_157_p1();
    void thread_tmp_1_fu_185_p1();
    void thread_tmp_2_fu_200_p3();
    void thread_tmp_3_fu_207_p1();
    void thread_tmp_4_fu_172_p2();
    void thread_tmp_5_fu_150_p3();
    void thread_tmp_6_fu_194_p2();
    void thread_tmp_9_fu_217_p2();
    void thread_tmp_fu_178_p3();
    void thread_train_inst_V_cast_fu_124_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
