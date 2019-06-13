library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador is

port (
		clock : in std_logic;
		b_reset : in std_logic;
		s_stop : in std_logic;
		s_contagem : in std_logic;
		LED_stop : out std_logic;
		LED_contagem : out std_logic;
		LED00_out : out std_logic_vector(0 to 6);
		LED01_out : out std_logic_vector(0 to 6);
		LED10_out : out std_logic_vector(0 to 6);
		LED11_out : out std_logic_vector(0 to 6)
		);
		
end contador;

architecture comportamental of contador is 

signal contagem00 :std_logic_vector(3 downto 0); --Uma contagem para cada Display
signal contagem01 :std_logic_vector(3 downto 0);
signal contagem10 :std_logic_vector(3 downto 0);
signal contagem11 :std_logic_vector(3 downto 0);
signal clockcounter: integer range 0 to 24999999; --MAX 1 segundo

begin

process (clock)
	begin	
		if b_reset = '0' then 	-- RESET na contagem
				contagem00 <= "0000";
				contagem01 <= "0000";
				contagem10 <= "0000";
				contagem11 <= "0000";
		elsif s_stop = '1' then --STOP
			LED_stop <= '1';	--Indica que o STOP está ativo
		elsif rising_edge(clock)then -- Stop = 0 <=> Continue
			if (clockcounter = 1) then 	--Redutor do clock
				clockcounter <= 0;
				
				LED_stop <= '0'; -- Desativa a LED0 do STOP
				LED_contagem <= s_contagem; -- Ativa o LED9 da Contagem
				if s_contagem = '0'  then 	-- Contador Progressivo
					if contagem00 = "1111" then
						if contagem01 = "1111" then
							if contagem10 = "1111" then
								contagem11 <= contagem11 + '1';
								contagem10 <= "0000";
							end if;
							contagem10 <= contagem10 + '1';
							contagem01 <= "0000";
						end if;
						contagem01 <= contagem01 + '1';
						contagem00 <= "0000";
					end if;
					contagem00 <= contagem00 + '1'; 	-- Fim do Contador Progressivo
				else
					if contagem00 = "0000" then 	-- Contador Regressivo
						if contagem01 = "0000" then
							if contagem10 = "0000" then
								contagem11 <= contagem11 - '1';
								contagem10 <= "1111";
							end if;
							contagem10 <= contagem10 - '1';
							contagem01 <= "1111";
						end if;
						contagem01 <= contagem01 - '1';
						contagem00 <= "1111";
					end if;
					contagem00 <= contagem00 - '1'; 	-- Fim do Contador Regressivo
				end if;
					
				
				case contagem00 is 	--Ativa as LEDS
					when "0000" => LED00_out  <= "0000001"; -- 0
					when "0001" => LED00_out  <= "1001111"; -- 1
					when "0010" => LED00_out  <= "0010010"; -- 2
					when "0011" => LED00_out  <= "0000110"; -- 3
					when "0100" => LED00_out  <= "1000110"; -- 4
					when "0101" => LED00_out  <= "0100100"; -- 5
					when "0110" => LED00_out  <= "0100000"; -- 6
					when "0111" => LED00_out  <= "0001111"; -- 7
					when "1000" => LED00_out  <= "0000000"; -- 8
					when "1001" => LED00_out  <= "0000100"; -- 9
					when "1010" => LED00_out  <= "0000010"; -- A
					when "1011" => LED00_out  <= "1100000"; -- B
					when "1100" => LED00_out  <= "0110001"; -- C
					when "1101" => LED00_out  <= "1000010"; -- D
					when "1110" => LED00_out  <= "0110000"; -- E
					when "1111" => LED00_out  <= "0111000"; -- F
				end case;
			
				case contagem01 is	--Ativa as LEDS
					when "0000" => LED01_out  <= "0000001"; -- 0
					when "0001" => LED01_out  <= "1001111"; -- 1
					when "0010" => LED01_out  <= "0010010"; -- 2
					when "0011" => LED01_out  <= "0000110"; -- 3
					when "0100" => LED01_out  <= "1000110"; -- 4
					when "0101" => LED01_out  <= "0100100"; -- 5
					when "0110" => LED01_out  <= "0100000"; -- 6
					when "0111" => LED01_out  <= "0001111"; -- 7
					when "1000" => LED01_out  <= "0000000"; -- 8
					when "1001" => LED01_out  <= "0000100"; -- 9
					when "1010" => LED01_out  <= "0000010"; -- A
					when "1011" => LED01_out  <= "1100000"; -- B
					when "1100" => LED01_out  <= "0110001"; -- C
					when "1101" => LED01_out  <= "1000010"; -- D
					when "1110" => LED01_out  <= "0110000"; -- E
					when "1111" => LED01_out  <= "0111000"; -- F
				end case;
				
				case contagem10 is	--Ativa as LEDS
					when "0000" => LED10_out  <= "0000001"; -- 0
					when "0001" => LED10_out  <= "1001111"; -- 1
					when "0010" => LED10_out  <= "0010010"; -- 2
					when "0011" => LED10_out  <= "0000110"; -- 3
					when "0100" => LED10_out  <= "1000110"; -- 4
					when "0101" => LED10_out  <= "0100100"; -- 5
					when "0110" => LED10_out  <= "0100000"; -- 6
					when "0111" => LED10_out  <= "0001111"; -- 7
					when "1000" => LED10_out  <= "0000000"; -- 8
					when "1001" => LED10_out  <= "0000100"; -- 9
					when "1010" => LED10_out  <= "0000010"; -- A
					when "1011" => LED10_out  <= "1100000"; -- B
					when "1100" => LED10_out  <= "0110001"; -- C
					when "1101" => LED10_out  <= "1000010"; -- D
					when "1110" => LED10_out  <= "0110000"; -- E
					when "1111" => LED10_out  <= "0111000"; -- F
				end case;
				
				case contagem11 is	--Ativa as LEDS
					when "0000" => LED11_out  <= "0000001"; -- 0
					when "0001" => LED11_out  <= "1001111"; -- 1
					when "0010" => LED11_out  <= "0010010"; -- 2
					when "0011" => LED11_out  <= "0000110"; -- 3
					when "0100" => LED11_out  <= "1000110"; -- 4
					when "0101" => LED11_out  <= "0100100"; -- 5
					when "0110" => LED11_out  <= "0100000"; -- 6
					when "0111" => LED11_out  <= "0001111"; -- 7
					when "1000" => LED11_out  <= "0000000"; -- 8
					when "1001" => LED11_out  <= "0000100"; -- 9
					when "1010" => LED11_out  <= "0000010"; -- A
					when "1011" => LED11_out  <= "1100000"; -- B
					when "1100" => LED11_out  <= "0110001"; -- C
					when "1101" => LED11_out  <= "1000010"; -- D
					when "1110" => LED11_out  <= "0110000"; -- E
					when "1111" => LED11_out  <= "0111000"; -- F
				end case;
				
			else
				clockcounter <= clockcounter + 1;
			end if;
		end if;	
end process;
				
end comportamental;

