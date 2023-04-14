library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexex_clock is

	port(

		a,b,c,d: in std_logic;
		s: in std_logic_vector (1 downto 0);

		f: out std_logic;
		Clock: in std_logic

	);

end multiplexex_clock;

architecture Behavioral of multiplexex_clock is
begin

	process (Clock) is
	begin

		if (rising_edge(Clock)) then

			case clock_case is

				when "00" =>

					f <= a;

				when "01" =>

					f <= b;

				when "10" =>

					f <= c;

				when others =>

					f <= d;

			end case;

		end if;

	end process;

end Behavioral;