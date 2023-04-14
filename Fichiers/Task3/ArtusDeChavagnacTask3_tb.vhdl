LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ArtusDeChavagnacTask3_tb IS
END ArtusDeChavagnacTask3_tb;

ARCHITECTURE behavior OF ArtusDeChavagnacTask3_tb IS

	COMPONENT ArtusDeChavagnacTask3

		PORT (

			a : IN std_logic;
			b : IN std_logic;
			Clock : IN std_logic;

			policeLights : OUT std_logic;
			siren : OUT std_logic

		);

	END COMPONENT;

	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal Clock : std_logic := '0';

	signal policeLights : std_logic;
	signal siren : std_logic;

	constant Clock_period : time := 10 ns;

BEGIN

	uut: ArtusDeChavagnacTask3 PORT MAP (

		a => a,
		b => b,
		Clock => Clock,

		policeLights => policeLights,
		siren => siren

	);

	Clock_process: process
	begin

		Clock <= '0';

		wait for Clock_period / 2;

		Clock <= '1';

		wait for Clock_period / 2;

		if NOW > 260 ns then

			wait;

		end if;

	end process;

	stim_proc: process
	begin

		wait for 3 ns;

		a <= '0';
		b <= '0';

		wait for 20 ns;

		a <= '1';

		wait for 20 ns;

		a <= '0';

		wait for 20 ns;

		a <= '1';

		wait for 20 ns;

		a <= '0';

		wait for 40 ns;

		a <= '1';

		wait for 20 ns;

		a <= '0';

		wait for 20 ns;

		a <= '1';

		wait for 20 ns;

		a <= '0';

		wait for 20 ns;

		a <= '1';
		b <= '1'; -- reset

		wait for 20 ns;

		a <= '0';
		b <= '0';

		wait for 20 ns;

		a <= '1';

		wait for 20 ns;

		a <= '0';

		wait for 17 ns;

		if NOW > 260 ns then

			wait;

		end if;

	end process;

END;