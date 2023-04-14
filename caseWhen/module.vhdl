library ieee;
use ieee.std_logic_1164.all;

entity module is

	port (

		a : in std_logic;

		s : out std_logic

	);

end module;

architecture Behavioral of module is
begin

	process (a)
	begin

		case a is

			when '0' =>

				s <= '1';

			when '1' =>

				s <= '0';

			when others =>

				s <= 'X';

		end case;

	end process;

end Behavioral;