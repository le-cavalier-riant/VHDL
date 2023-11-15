library ieee;
use ieee.std_logic_1164.all;

entity heater_case_when is

	port (

		a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		d : in std_logic;

		sw1 : out std_logic;
		sw2 : out std_logic;
		sw3 : out std_logic;
		sw4 : out std_logic

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