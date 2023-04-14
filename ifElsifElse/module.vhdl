library ieee;
use ieee.std_logic_1164.all;

entity module is

	port (

		a: in std_logic;

		s: out std_logic

	);

end module;

architecture behavioral of module is
begin

	process (a)
	begin

		if (a = '0') then

			s <= '1';

		elsif (a = '1') then

			s <= '0';

		else

			s <= 'X';

		end if;

	end process;

end behavioral;