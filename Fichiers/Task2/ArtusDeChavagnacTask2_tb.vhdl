LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ArtusDeChavagnacTask2_tb IS
END ArtusDeChavagnacTask2_tb;

ARCHITECTURE behavior OF ArtusDeChavagnacTask2_tb IS

	COMPONENT ArtusDeChavagnacTask2

		PORT (

			Clock : IN std_logic;

			q : OUT std_logic;
			notq : OUT std_logic

		);

	END COMPONENT;

	signal Clock : std_logic := '0';

	signal q : std_logic;
	signal notq : std_logic;

	constant Clock_period : time := 10 ns;

BEGIN

	uut: ArtusDeChavagnacTask2 PORT MAP (

		Clock => Clock,
		q => q,
		notq => notq

	);

	Clock_process: process
	begin

		Clock <= '0';

		wait for Clock_period / 2;

		Clock <= '1';

		wait for Clock_period / 2;

		if NOW > 200 ns then

			wait;

		end if;

	end process;

END;