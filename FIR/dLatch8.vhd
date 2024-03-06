-- FPGA projects using VHDL/ VHDL 
-- fpga4student.com
-- VHDL code for D Flip FLop
-- VHDL code for rising edge D flip flop 
Library IEEE;
USE IEEE.Std_logic_1164.all;

entity RisingEdge_DFlipFlop is 
   port(
      Clk :in std_logic;
      Xout : out std_logic_vector(7 downto 0);    
      Xin :in  std_logic_vector(7 downto 0)   
   );
end RisingEdge_DFlipFlop;
architecture Behavioral of RisingEdge_DFlipFlop is  
begin  
 process(Clk)
 begin 
    if(rising_edge(Clk)) then
   Xout <= Xin;  
    end if;       
 end process;  
end Behavioral;