library ieee;
use ieee.std_logic_1164.all;

entity ArtusDeChavagnacTask2 is

	port (

		Clock: in std_logic;

		q, notq: out std_logic

	);

end ArtusDeChavagnacTask2;

architecture Behavioral of ArtusDeChavagnacTask2 is

	type state_type is (one, zero);
	signal previous_q: state_type;

begin

	process (Clock) is
	begin

		if (rising_edge(Clock)) then -- resest when b pressed

			if previous_q = one then

				q <= '0';
				previous_q <= zero;
				notq <= not('0'); -- I chose to put not('0') to show the negation

			else

				q <= '1';
				previous_q <= one;
				notq <= not('1'); -- I chose to put not('1') to show the negation

			end if;

		end if;

	end process;

end Behavioral;
