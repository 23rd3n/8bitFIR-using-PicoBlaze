--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Wed Jan 26 10:24:33 2022
--Host        : DESKTOP-QT796O1 running 64-bit major release  (build 9200)
--Command     : generate_target fir_wrapper.bd
--Design      : fir_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fir_wrapper is
  port (
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    xn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    yn : out STD_LOGIC_VECTOR ( 22 downto 0 )
  );
end fir_wrapper;

architecture STRUCTURE of fir_wrapper is
  component fir is
  port (
    clk : in STD_LOGIC;
    yn : out STD_LOGIC_VECTOR ( 22 downto 0 );
    xn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component fir;
begin
fir_i: component fir
     port map (
      addr(7 downto 0) => addr(7 downto 0),
      clk => clk,
      wea(0) => wea(0),
      xn(7 downto 0) => xn(7 downto 0),
      yn(22 downto 0) => yn(22 downto 0)
    );
end STRUCTURE;
