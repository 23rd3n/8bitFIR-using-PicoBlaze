
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_top is
end sim_top;

architecture Behavioral of sim_top is
component fir_wrapper is
    Port ( addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
            clk : in STD_LOGIC;
            wea : in STD_LOGIC_VECTOR ( 0 to 0 );
            xn : in STD_LOGIC_VECTOR ( 7 downto 0 ));
end component fir_wrapper;

signal clk :  STD_LOGIC;
signal addr:STD_LOGIC_VECTOR ( 7 downto 0 );
signal xn:STD_LOGIC_VECTOR ( 7 downto 0 );
signal wea : STD_LOGIC_VECTOR ( 0 to 0 );

begin

uut: fir_wrapper port map(

                addr => addr,
                clk => clk,
                wea => wea,
                xn=>xn
               
                
);
process
begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
end process;


-- negatif xn sayilari icin process
P_STIMULI : process begin

addr 	<= "00011111"; --1f
xn	    <= "11111111"; -- -1
wea(0)		<= '1';
wait for 10ns;
addr 	<= "00100000"; -- 0x1f
xn	    <= "00000010"; -- 2
wait for 10ns;
addr 	<= "00100001"; -- 0x20
xn	    <= "11111101"; -- -3
wait for 10ns;
addr 	<= "00100010";-- 0x21
xn	    <= "00000100"; -- 4
wait for 10ns;
addr 	<= "00100011";-- 0x22
xn	    <= "11111011"; -- -5
wait for 10ns;
addr 	<= "00100100";-- 0x23
xn	    <= "00000110";-- 6
wait for 10ns;
addr 	<= "00100101"; -- 0x24
xn	    <= "11111001"; --- -7
wait for 10ns;
addr 	<= "00101101";-- 0x2c 
xn	    <= "00000000"; -- 
wait for 10ns;
wea(0) <='0';
wait for 10000000ns;

end process P_STIMULI;

end Behavioral;
