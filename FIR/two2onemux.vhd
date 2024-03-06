library ieee;
use ieee.std_logic_1164.all; 

entity mux2to1 is
  port (simulation: in std_logic_vector(7 downto 0);
        picoblaze: in std_logic_vector(7 downto 0); 
        s : in std_logic;
        ram_giris : out std_logic_vector(7 downto 0)); 
end mux2to1;

architecture behaviour of mux2to1 is 
begin
  process (simulation, picoblaze, s)
  begin
    if s = '0' then
      ram_giris <= simulation;
    else
      ram_giris <= picoblaze;
    end if;
  end process;
end behaviour;