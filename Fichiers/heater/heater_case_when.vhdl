library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity heater_case_when is

	Port (

		a : in STD_LOGIC;
		b : in STD_LOGIC;
		c : in STD_LOGIC;
		d : in STD_LOGIC;

		sw1 : out STD_LOGIC;
		sw2 : out STD_LOGIC;
		sw3 : out STD_LOGIC;
		sw4 : out STD_LOGIC

	);

end heater_case_when;

architecture Behavioral of heater_case_when is
begin

	process (a, b, c, d)

		variable temperature : std_logic_vector (3 downto 0);

	begin

		temperature := a & b & c & d;

		case temperature is

			when "0000" =>

				sw1 <= '1';
				sw2 <= '1';
				sw3 <= '0';
				sw4 <= '1';

			when "0001" =>

				sw1 <= '0';
				sw2 <= '1';
				sw3 <= '0';
				sw4 <= '0';

			when "0111" =>

				sw1 <= '1';
				sw2 <= '1';
				sw3 <= '1';
				sw4 <= '0';

			when "1111" =>

				sw1 <= '0';
				sw2 <= '0';
				sw3 <= '0';
				sw4 <= '0';

			when others =>

				sw1 <= 'X';
				sw2 <= 'X';
				sw3 <= 'X';
				sw4 <= 'X';

		end case;

	end process;

end Behavioral;