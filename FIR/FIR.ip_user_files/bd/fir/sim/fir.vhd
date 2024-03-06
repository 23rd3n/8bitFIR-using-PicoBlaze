--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Wed Jan 26 10:24:33 2022
--Host        : DESKTOP-QT796O1 running 64-bit major release  (build 9200)
--Command     : generate_target fir.bd
--Design      : fir
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fir is
  port (
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    xn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    yn : out STD_LOGIC_VECTOR ( 22 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of fir : entity is "fir,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fir,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=27,numReposBlks=27,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of fir : entity is "fir.hwdef";
end fir;

architecture STRUCTURE of fir is
  component fir_mult_gen_0_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component fir_mult_gen_0_0;
  component fir_mult_gen_0_1 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component fir_mult_gen_0_1;
  component fir_mult_gen_1_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component fir_mult_gen_1_0;
  component fir_mult_gen_2_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component fir_mult_gen_2_0;
  component fir_mult_gen_3_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component fir_mult_gen_3_0;
  component fir_mult_gen_4_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component fir_mult_gen_4_0;
  component fir_mult_gen_5_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component fir_mult_gen_5_0;
  component fir_mult_gen_6_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component fir_mult_gen_6_0;
  component fir_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fir_blk_mem_gen_0_0;
  component fir_mux2to1_0_0 is
  port (
    simulation : in STD_LOGIC_VECTOR ( 7 downto 0 );
    picoblaze : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s : in STD_LOGIC;
    ram_giris : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fir_mux2to1_0_0;
  component fir_c_addsub_0_1 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 20 downto 0 );
    S : out STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  end component fir_c_addsub_0_1;
  component fir_c_addsub_0_2 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 19 downto 0 );
    S : out STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  end component fir_c_addsub_0_2;
  component fir_c_addsub_0_3 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 18 downto 0 );
    S : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component fir_c_addsub_0_3;
  component fir_c_addsub_0_4 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  end component fir_c_addsub_0_4;
  component fir_c_addsub_0_5 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  end component fir_c_addsub_0_5;
  component fir_c_addsub_0_6 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  end component fir_c_addsub_0_6;
  component fir_c_addsub_1_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 21 downto 0 );
    S : out STD_LOGIC_VECTOR ( 22 downto 0 )
  );
  end component fir_c_addsub_1_0;
  component fir_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component fir_clk_wiz_0_0;
  component fir_RisingEdge_DFlipFlop_14_0 is
  port (
    Clk : in STD_LOGIC;
    Xout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Xin : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fir_RisingEdge_DFlipFlop_14_0;
  component fir_RisingEdge_DFlipFlop_20_0 is
  port (
    Clk : in STD_LOGIC;
    Xout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Xin : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fir_RisingEdge_DFlipFlop_20_0;
  component fir_RisingEdge_DFlipFlop_27_0 is
  port (
    Clk : in STD_LOGIC;
    Xout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Xin : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fir_RisingEdge_DFlipFlop_27_0;
  component fir_RisingEdge_DFlipFlop_2_0 is
  port (
    Clk : in STD_LOGIC;
    Xout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Xin : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fir_RisingEdge_DFlipFlop_2_0;
  component fir_RisingEdge_DFlipFlop_2_1 is
  port (
    Clk : in STD_LOGIC;
    Xout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Xin : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fir_RisingEdge_DFlipFlop_2_1;
  component fir_RisingEdge_DFlipFlop_5_0 is
  port (
    Clk : in STD_LOGIC;
    Xout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Xin : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fir_RisingEdge_DFlipFlop_5_0;
  component fir_RisingEdge_DFlipFlop_9_0 is
  port (
    Clk : in STD_LOGIC;
    Xout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Xin : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fir_RisingEdge_DFlipFlop_9_0;
  component fir_selector_0_0 is
  port (
    port_id_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_port_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a8 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a7 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    X_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    write : in STD_LOGIC
  );
  end component fir_selector_0_0;
  component fir_top_0_0 is
  port (
    clk : in STD_LOGIC;
    in_port : in STD_LOGIC_VECTOR ( 7 downto 0 );
    port_id : out STD_LOGIC_VECTOR ( 7 downto 0 );
    write_strobe : out STD_LOGIC;
    read_strobe : out STD_LOGIC;
    out_port : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fir_top_0_0;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal Net2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RisingEdge_DFlipFlop_14_Xout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RisingEdge_DFlipFlop_20_Xout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RisingEdge_DFlipFlop_27_Xout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RisingEdge_DFlipFlop_2_Xout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RisingEdge_DFlipFlop_3_Xout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RisingEdge_DFlipFlop_5_Xout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RisingEdge_DFlipFlop_9_Xout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal addr_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal c_addsub_1_S : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal c_addsub_2_S : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal c_addsub_3_S : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal c_addsub_4_S : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal c_addsub_5_S : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal c_addsub_6_S : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal c_addsub_7_S : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal dina_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mult_gen_0_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mult_gen_1_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mult_gen_2_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mult_gen_3_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mult_gen_4_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mult_gen_5_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mult_gen_6_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mult_gen_7_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mux2to1_0_ram_giris : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal selector_0_a1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal selector_0_a2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal selector_0_a3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal selector_0_a4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal selector_0_a5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal selector_0_a6 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal selector_0_a7 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal selector_0_a8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_0_out_port : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_0_port_id : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_0_read_strobe : STD_LOGIC;
  signal top_0_write_strobe : STD_LOGIC;
  signal wea_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of yn : signal is "xilinx.com:signal:data:1.0 DATA.YN DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of yn : signal is "XIL_INTERFACENAME DATA.YN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 23} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 23}";
begin
  Net1 <= clk;
  addr_1(7 downto 0) <= addr(7 downto 0);
  dina_0_1(7 downto 0) <= xn(7 downto 0);
  wea_0_1(0) <= wea(0);
  yn(22 downto 0) <= c_addsub_7_S(22 downto 0);
RisingEdge_DFlipFlop_14: component fir_RisingEdge_DFlipFlop_14_0
     port map (
      Clk => Net,
      Xin(7 downto 0) => RisingEdge_DFlipFlop_9_Xout(7 downto 0),
      Xout(7 downto 0) => RisingEdge_DFlipFlop_14_Xout(7 downto 0)
    );
RisingEdge_DFlipFlop_2: component fir_RisingEdge_DFlipFlop_2_0
     port map (
      Clk => Net,
      Xin(7 downto 0) => RisingEdge_DFlipFlop_3_Xout(7 downto 0),
      Xout(7 downto 0) => RisingEdge_DFlipFlop_2_Xout(7 downto 0)
    );
RisingEdge_DFlipFlop_20: component fir_RisingEdge_DFlipFlop_20_0
     port map (
      Clk => Net,
      Xin(7 downto 0) => RisingEdge_DFlipFlop_14_Xout(7 downto 0),
      Xout(7 downto 0) => RisingEdge_DFlipFlop_20_Xout(7 downto 0)
    );
RisingEdge_DFlipFlop_27: component fir_RisingEdge_DFlipFlop_27_0
     port map (
      Clk => Net,
      Xin(7 downto 0) => RisingEdge_DFlipFlop_20_Xout(7 downto 0),
      Xout(7 downto 0) => RisingEdge_DFlipFlop_27_Xout(7 downto 0)
    );
RisingEdge_DFlipFlop_3: component fir_RisingEdge_DFlipFlop_2_1
     port map (
      Clk => Net,
      Xin(7 downto 0) => Net2(7 downto 0),
      Xout(7 downto 0) => RisingEdge_DFlipFlop_3_Xout(7 downto 0)
    );
RisingEdge_DFlipFlop_5: component fir_RisingEdge_DFlipFlop_5_0
     port map (
      Clk => Net,
      Xin(7 downto 0) => RisingEdge_DFlipFlop_2_Xout(7 downto 0),
      Xout(7 downto 0) => RisingEdge_DFlipFlop_5_Xout(7 downto 0)
    );
RisingEdge_DFlipFlop_9: component fir_RisingEdge_DFlipFlop_9_0
     port map (
      Clk => Net,
      Xin(7 downto 0) => RisingEdge_DFlipFlop_5_Xout(7 downto 0),
      Xout(7 downto 0) => RisingEdge_DFlipFlop_9_Xout(7 downto 0)
    );
blk_mem_gen_0: component fir_blk_mem_gen_0_0
     port map (
      addra(7 downto 0) => mux2to1_0_ram_giris(7 downto 0),
      clka => Net1,
      dina(7 downto 0) => dina_0_1(7 downto 0),
      douta(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      wea(0) => wea_0_1(0)
    );
c_addsub_1: component fir_c_addsub_0_1
     port map (
      A(15 downto 0) => mult_gen_1_P(15 downto 0),
      B(20 downto 0) => c_addsub_2_S(20 downto 0),
      S(21 downto 0) => c_addsub_1_S(21 downto 0)
    );
c_addsub_2: component fir_c_addsub_0_2
     port map (
      A(15 downto 0) => mult_gen_2_P(15 downto 0),
      B(19 downto 0) => c_addsub_3_S(19 downto 0),
      S(20 downto 0) => c_addsub_2_S(20 downto 0)
    );
c_addsub_3: component fir_c_addsub_0_3
     port map (
      A(15 downto 0) => mult_gen_3_P(15 downto 0),
      B(18 downto 0) => c_addsub_4_S(18 downto 0),
      S(19 downto 0) => c_addsub_3_S(19 downto 0)
    );
c_addsub_4: component fir_c_addsub_0_4
     port map (
      A(15 downto 0) => mult_gen_4_P(15 downto 0),
      B(17 downto 0) => c_addsub_5_S(17 downto 0),
      S(18 downto 0) => c_addsub_4_S(18 downto 0)
    );
c_addsub_5: component fir_c_addsub_0_5
     port map (
      A(15 downto 0) => mult_gen_5_P(15 downto 0),
      B(16 downto 0) => c_addsub_6_S(16 downto 0),
      S(17 downto 0) => c_addsub_5_S(17 downto 0)
    );
c_addsub_6: component fir_c_addsub_0_6
     port map (
      A(15 downto 0) => mult_gen_6_P(15 downto 0),
      B(15 downto 0) => mult_gen_7_P(15 downto 0),
      S(16 downto 0) => c_addsub_6_S(16 downto 0)
    );
c_addsub_7: component fir_c_addsub_1_0
     port map (
      A(15 downto 0) => mult_gen_0_P(15 downto 0),
      B(21 downto 0) => c_addsub_1_S(21 downto 0),
      S(22 downto 0) => c_addsub_7_S(22 downto 0)
    );
clk_wiz_0: component fir_clk_wiz_0_0
     port map (
      clk_in1 => Net1,
      clk_out1 => Net
    );
mult_gen_0: component fir_mult_gen_0_0
     port map (
      A(7 downto 0) => selector_0_a8(7 downto 0),
      B(7 downto 0) => Net2(7 downto 0),
      CLK => Net,
      P(15 downto 0) => mult_gen_0_P(15 downto 0)
    );
mult_gen_1: component fir_mult_gen_0_1
     port map (
      A(7 downto 0) => selector_0_a7(7 downto 0),
      B(7 downto 0) => RisingEdge_DFlipFlop_3_Xout(7 downto 0),
      CLK => Net,
      P(15 downto 0) => mult_gen_1_P(15 downto 0)
    );
mult_gen_2: component fir_mult_gen_1_0
     port map (
      A(7 downto 0) => selector_0_a6(7 downto 0),
      B(7 downto 0) => RisingEdge_DFlipFlop_2_Xout(7 downto 0),
      CLK => Net,
      P(15 downto 0) => mult_gen_2_P(15 downto 0)
    );
mult_gen_3: component fir_mult_gen_2_0
     port map (
      A(7 downto 0) => selector_0_a5(7 downto 0),
      B(7 downto 0) => RisingEdge_DFlipFlop_5_Xout(7 downto 0),
      CLK => Net,
      P(15 downto 0) => mult_gen_3_P(15 downto 0)
    );
mult_gen_4: component fir_mult_gen_3_0
     port map (
      A(7 downto 0) => selector_0_a4(7 downto 0),
      B(7 downto 0) => RisingEdge_DFlipFlop_9_Xout(7 downto 0),
      CLK => Net,
      P(15 downto 0) => mult_gen_4_P(15 downto 0)
    );
mult_gen_5: component fir_mult_gen_4_0
     port map (
      A(7 downto 0) => selector_0_a3(7 downto 0),
      B(7 downto 0) => RisingEdge_DFlipFlop_14_Xout(7 downto 0),
      CLK => Net,
      P(15 downto 0) => mult_gen_5_P(15 downto 0)
    );
mult_gen_6: component fir_mult_gen_5_0
     port map (
      A(7 downto 0) => selector_0_a2(7 downto 0),
      B(7 downto 0) => RisingEdge_DFlipFlop_20_Xout(7 downto 0),
      CLK => Net,
      P(15 downto 0) => mult_gen_6_P(15 downto 0)
    );
mult_gen_7: component fir_mult_gen_6_0
     port map (
      A(7 downto 0) => selector_0_a1(7 downto 0),
      B(7 downto 0) => RisingEdge_DFlipFlop_27_Xout(7 downto 0),
      CLK => Net,
      P(15 downto 0) => mult_gen_7_P(15 downto 0)
    );
mux2to1_0: component fir_mux2to1_0_0
     port map (
      picoblaze(7 downto 0) => top_0_port_id(7 downto 0),
      ram_giris(7 downto 0) => mux2to1_0_ram_giris(7 downto 0),
      s => top_0_read_strobe,
      simulation(7 downto 0) => addr_1(7 downto 0)
    );
selector_0: component fir_selector_0_0
     port map (
      X_out(7 downto 0) => Net2(7 downto 0),
      a1(7 downto 0) => selector_0_a1(7 downto 0),
      a2(7 downto 0) => selector_0_a2(7 downto 0),
      a3(7 downto 0) => selector_0_a3(7 downto 0),
      a4(7 downto 0) => selector_0_a4(7 downto 0),
      a5(7 downto 0) => selector_0_a5(7 downto 0),
      a6(7 downto 0) => selector_0_a6(7 downto 0),
      a7(7 downto 0) => selector_0_a7(7 downto 0),
      a8(7 downto 0) => selector_0_a8(7 downto 0),
      clk => Net1,
      out_port_in(7 downto 0) => top_0_out_port(7 downto 0),
      port_id_in(7 downto 0) => top_0_port_id(7 downto 0),
      write => top_0_write_strobe
    );
top_0: component fir_top_0_0
     port map (
      clk => Net1,
      in_port(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      out_port(7 downto 0) => top_0_out_port(7 downto 0),
      port_id(7 downto 0) => top_0_port_id(7 downto 0),
      read_strobe => top_0_read_strobe,
      write_strobe => top_0_write_strobe
    );
end STRUCTURE;
