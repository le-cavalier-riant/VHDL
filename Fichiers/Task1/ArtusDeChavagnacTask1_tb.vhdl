LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ArtusDeChavagnacTask1_tb IS
END ArtusDeChavagnacTask1_tb;

ARCHITECTURE behavior OF ArtusDeChavagnacTask1_tb IS

	COMPONENT ArtusDeChavagnacTask1

		PORT (

			Clock : IN std_logic;

			c1 : OUT std_logic;
			c2 : OUT std_logic

		);

	END COMPONENT;

	signal Clock : std_logic := '0';

	signal c1 : std_logic;
	signal c2 : std_logic;

	constant Clock_period : time := 10 ns;

BEGIN

	uut: ArtusDeChavagnacTask1 PORT MAP (

		Clock => Clock,
		c1 => c1,
		c2 => c2

	);

	Clock_process: process
	begin

		Clock <= '0';

		wait for Clock_period / 2;

		Clock <= '1';

		wait for Clock_period / 2;

		if NOW > 100 ns then

			wait;

		end if;

	end process;

END;