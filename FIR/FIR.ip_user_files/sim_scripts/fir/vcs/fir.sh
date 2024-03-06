#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2021.2 (64-bit)
#
# Filename    : fir.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Wed Jan 26 10:24:48 +0300 2022
# SW Build 3367213 on Tue Oct 19 02:48:09 MDT 2021
#
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved. 
#
# usage: fir.sh [-help]
# usage: fir.sh [-lib_map_path]
# usage: fir.sh [-noclean_files]
# usage: fir.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'fir.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Set vlogan compile options
vlogan_opts="-full64"

# Set vhdlan compile options
vhdlan_opts="-full64"

# Set vcs elaboration options
vcs_elab_opts="-full64 -debug_acc+pp+dmptf -t ps -licqueue -l elaborate.log"

# Set vcs simulation options
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xbip_utils_v3_0_10 xbip_pipe_v3_0_6 xbip_bram18k_v3_0_6 mult_gen_v12_0_17 xil_defaultlib blk_mem_gen_v8_4_5 c_reg_fd_v12_0_6 xbip_dsp48_wrapper_v3_0_4 xbip_dsp48_addsub_v3_0_6 xbip_addsub_v3_0_6 c_addsub_v12_0_14)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "fir.sh - Script generated by export_simulation (Vivado v2021.2 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  vhdlan -work xbip_utils_v3_0_10 $vhdlan_opts \
    "$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_pipe_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_bram18k_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work mult_gen_v12_0_17 $vhdlan_opts \
    "$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/fir/ip/fir_mult_gen_0_0/sim/fir_mult_gen_0_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_mult_gen_0_1/sim/fir_mult_gen_0_1.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_mult_gen_1_0/sim/fir_mult_gen_1_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_mult_gen_2_0/sim/fir_mult_gen_2_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_mult_gen_3_0/sim/fir_mult_gen_3_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_mult_gen_4_0/sim/fir_mult_gen_4_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_mult_gen_5_0/sim/fir_mult_gen_5_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_mult_gen_6_0/sim/fir_mult_gen_6_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work blk_mem_gen_v8_4_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/62b6" \
    "$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/62b6" \
    "$ref_dir/../../../bd/fir/ip/fir_blk_mem_gen_0_0/sim/fir_blk_mem_gen_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/fir/ip/fir_mux2to1_0_0/sim/fir_mux2to1_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_reg_fd_v12_0_6 $vhdlan_opts \
    "$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_wrapper_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_addsub_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_addsub_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_addsub_v12_0_14 $vhdlan_opts \
    "$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/fir/ip/fir_c_addsub_0_1/sim/fir_c_addsub_0_1.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_c_addsub_0_2/sim/fir_c_addsub_0_2.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_c_addsub_0_3/sim/fir_c_addsub_0_3.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_c_addsub_0_4/sim/fir_c_addsub_0_4.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_c_addsub_0_5/sim/fir_c_addsub_0_5.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_c_addsub_0_6/sim/fir_c_addsub_0_6.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_c_addsub_1_0/sim/fir_c_addsub_1_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FIR.gen/sources_1/bd/fir/ipshared/62b6" \
    "$ref_dir/../../../bd/fir/ip/fir_clk_wiz_0_0/fir_clk_wiz_0_0_clk_wiz.v" \
    "$ref_dir/../../../bd/fir/ip/fir_clk_wiz_0_0/fir_clk_wiz_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/fir/ip/fir_top_0_0/sim/fir_top_0_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_14_0/sim/fir_RisingEdge_DFlipFlop_14_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_20_0/sim/fir_RisingEdge_DFlipFlop_20_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_27_0/sim/fir_RisingEdge_DFlipFlop_27_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_2_0/sim/fir_RisingEdge_DFlipFlop_2_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_2_1/sim/fir_RisingEdge_DFlipFlop_2_1.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_5_0/sim/fir_RisingEdge_DFlipFlop_5_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_RisingEdge_DFlipFlop_9_0/sim/fir_RisingEdge_DFlipFlop_9_0.vhd" \
    "$ref_dir/../../../bd/fir/ip/fir_selector_0_0/sim/fir_selector_0_0.vhd" \
    "$ref_dir/../../../bd/fir/sim/fir.vhd" \
  2>&1 | tee -a vhdlan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log
}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.fir xil_defaultlib.glbl -o fir_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./fir_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./fir.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key fir_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc fir_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./fir.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: fir.sh [-help]\n\
Usage: fir.sh [-lib_map_path]\n\
Usage: fir.sh [-reset_run]\n\
Usage: fir.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
