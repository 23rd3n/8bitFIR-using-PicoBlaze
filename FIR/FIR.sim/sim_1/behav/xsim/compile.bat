@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.2 (64-bit)
REM
REM Filename    : compile.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for compiling the simulation design source files
REM
REM Generated by Vivado on Wed Jan 26 13:40:23 +0300 2022
REM SW Build 3367213 on Tue Oct 19 02:48:09 MDT 2021
REM
REM IP Build 3369179 on Thu Oct 21 08:25:16 MDT 2021
REM
REM usage: compile.bat
REM
REM ****************************************************************************
REM compile Verilog/System Verilog design sources
echo "xvlog --incr --relax -prj sim_top_vlog.prj"
call xvlog  --incr --relax -prj sim_top_vlog.prj -log xvlog.log
call type xvlog.log > compile.log
REM compile VHDL design sources
echo "xvhdl --incr --relax -prj sim_top_vhdl.prj"
call xvhdl  --incr --relax -prj sim_top_vhdl.prj -log xvhdl.log
call type xvhdl.log >> compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
