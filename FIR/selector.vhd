library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;


entity selector is
Port ( 
       port_id_in : in std_logic_vector(7 downto 0);
       out_port_in : in std_logic_vector(7 downto 0);
       a8 : out std_logic_vector(7 downto 0):="00000000";
       a7 : out std_logic_vector(7 downto 0):="00000000";
       a6 : out std_logic_vector(7 downto 0):="00000000";
       a5 : out std_logic_vector(7 downto 0):="00000000";
       a4 : out std_logic_vector(7 downto 0):="00000000";
       a3 : out std_logic_vector(7 downto 0):="00000000";
       a2 : out std_logic_vector(7 downto 0):="00000000";
       a1 : out std_logic_vector(7 downto 0):="00000000";     
       X_out : out std_logic_vector(7 downto 0):="00000000";      
       clk : in std_logic;
       write : in std_logic);
end selector;

architecture Behavioral of selector is
signal x   :  std_logic_vector(7 downto 0):="00000000";
begin

process(clk)
begin
if (rising_edge(clk)) then
    if (write = '1') then
        if   (port_id_in = "11111111") then --0xff
        a8 <= out_port_in;
        elsif(port_id_in = "11111110") then --0xfe
        a7 <= out_port_in;
        elsif(port_id_in = "11111101") then --0xfd
        a6 <= out_port_in;
        elsif(port_id_in = "11111100") then --0xfc
        a5 <= out_port_in;
        elsif(port_id_in = "11111011") then --0xfb
        a4 <= out_port_in;
        elsif(port_id_in = "11111010") then --0xfa
        a3 <= out_port_in;
        elsif(port_id_in = "11111001") then --0xf9
        a2 <= out_port_in;
        elsif(port_id_in = "11111000") then --0xf8
        a1 <= out_port_in;
        elsif(port_id_in ="00000000") then
        X_out <=out_port_in;
        x <= out_port_in;
        else
        X_out <= x;
        end if; 
    else
        X_out <= x;
    end if;    
end if;
end process;
end Behavioral;














