library ieee;
use ieee.std_logic_1164.all;

entity flip_flop is

	port (

		D, clk, clr: in std_logic;

		q, noq: out std_logic

	);

end flip_flop;

architecture behavioral of flip_flop is
begin

	process (clr, clk, D)
	begin

		if (clr = '1') then

			q <='0';
			noq <='1';

		elsif (rising_edge(clk)) then

			q <= D;
			noq <= NOT D;

		end if;

	end process;

end behavioral;