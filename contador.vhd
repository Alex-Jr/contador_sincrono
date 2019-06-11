library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador is

port (
		clock : in std_logic;
		LED_out : out std_logic_vector(0 to 6)
		);
		
end contador;

architecture comportamental of contador is 

signal q :std_logic_vector(3 downto 0);
signal clockcounter: integer range 0 to 10;

begin

	process (clock)
	variable contagem : std_logic_vector(3 downto 0);
	begin
		if (rising_edge(clock)) then
			if (clockcounter = 3) then
				clockcounter <= 0;
				contagem := contagem + 1;
			else
				clockcounter <= clockcounter + 1;
			end if;
		end if;
			
		q <= contagem;
	end process;

	process (q) is
		begin 
			case q is
				when "0000" => LED_out  <= "0000001"; -- 0
				when "0001" => LED_out  <= "1001111"; -- 1
				when "0010" => LED_out  <= "0010010"; -- 2
				when "0011" => LED_out  <= "0000110"; -- 3
				when "0100" => LED_out  <= "1000110"; -- 4
				when "0101" => LED_out  <= "0100100"; -- 5
				when "0110" => LED_out  <= "0100000"; -- 6
				when "0111" => LED_out  <= "0001111"; -- 7
				when "1000" => LED_out  <= "0000000"; -- 8
				when "1001" => LED_out  <= "0000100"; -- 9
				when "1010" => LED_out  <= "0000010"; -- A
				when "1011" => LED_out  <= "1100000"; -- B
				when "1100" => LED_out  <= "0110001"; -- C
				when "1101" => LED_out  <= "1000010"; -- D
				when "1110" => LED_out  <= "0110000"; -- E
				when "1111" => LED_out  <= "0111000"; -- F
			end case;
	end process;
	
end comportamental;

