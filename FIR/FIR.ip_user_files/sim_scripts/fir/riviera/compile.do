vlib work
vlib riviera

vlib riviera/xbip_utils_v3_0_10
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_17
vlib riviera/xil_defaultlib
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_14

vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 riviera/mult_gen_v12_0_17
vmap xil_defaultlib riviera/xil_defaultlib
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 riviera/c_addsub_v12_0_14

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../FIR.gen/sources_1/bd/fir/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../FIR.gen/sources_1/bd/fir/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../FIR.gen/sources_1/bd/fir/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -93 \
"../../../../FIR.gen/sources_1/bd/fir/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/fir/ip/fir_mult_gen_0_0/sim/fir_mult_gen_0_0.vhd" \
"../../../bd/fir/ip/fir_mult_gen_0_1/sim/fir_mult_gen_0_1.vhd" \
"../../../bd/fir/ip/fir_mult_gen_1_0/sim/fir_mult_gen_1_0.vhd" \
"../../../bd/fir/ip/fir_mult_gen_2_0/sim/fir_mult_gen_2_0.vhd" \
"../../../bd/fir/ip/fir_mult_gen_3_0/sim/fir_mult_gen_3_0.vhd" \
"../../../bd/fir/ip/fir_mult_gen_4_0/sim/fir_mult_gen_4_0.vhd" \
"../../../bd/fir/ip/fir_mult_gen_5_0/sim/fir_mult_gen_5_0.vhd" \
"../../../bd/fir/ip/fir_mult_gen_6_0/sim/fir_mult_gen_6_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../FIR.gen/sources_1/bd/fir/ipshared/62b6" \
"../../../../FIR.gen/sources_1/bd/fir/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FIR.gen/sources_1/bd/fir/ipshared/62b6" \
"../../../bd/fir/ip/fir_blk_mem_gen_0_0/sim/fir_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/fir/ip/fir_mux2to1_0_0/sim/fir_mux2to1_0_0.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../FIR.gen/sources_1/bd/fir/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../FIR.gen/sources_1/bd/fir/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../FIR.gen/sources_1/bd/fir/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93 \
"../../../../FIR.gen/sources_1/bd/fir/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93 \
"../../../../FIR.gen/sources_1/bd/fir/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/fir/ip/fir_c_addsub_0_1/sim/fir_c_addsub_0_1.vhd" \
"../../../bd/fir/ip/fir_c_addsub_0_2/sim/fir_c_addsub_0_2.vhd" \
"../../../bd/fir/ip/fir_c_addsub_0_3/sim/fir_c_addsub_0_3.vhd" \
"../../../bd/fir/ip/fir_c_addsub_0_4/sim/fir_c_addsub_0_4.vhd" \
"../../../bd/fir/ip/fir_c_addsub_0_5/sim/fir_c_addsub_0_5.vhd" \
"../../../bd/fir/ip/fir_c_addsub_0_6/sim/fir_c_addsub_0_6.vhd" \
"../../../bd/fir/ip/fir_c_addsub_1_0/sim/fir_c_addsub_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FIR.gen/sources_1/bd/fir/ipshared/62b6" \
"../../../bd/fir/ip/fir_clk_wiz_0_0/fir_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/fir/ip/fir_clk_wiz_0_0/fir_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/fir/ip/fir_top_0_0/sim/fir_top_0_0.vhd" \
"../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_14_0/sim/fir_RisingEdge_DFlipFlop_14_0.vhd" \
"../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_20_0/sim/fir_RisingEdge_DFlipFlop_20_0.vhd" \
"../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_27_0/sim/fir_RisingEdge_DFlipFlop_27_0.vhd" \
"../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_2_0/sim/fir_RisingEdge_DFlipFlop_2_0.vhd" \
"../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_2_1/sim/fir_RisingEdge_DFlipFlop_2_1.vhd" \
"../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_5_0/sim/fir_RisingEdge_DFlipFlop_5_0.vhd" \
"../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_9_0/sim/fir_RisingEdge_DFlipFlop_9_0.vhd" \
"../../../bd/fir/ip/fir_selector_0_0/sim/fir_selector_0_0.vhd" \
"../../../bd/fir/sim/fir.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

