library ieee;
use ieee.std_logic_1164.all;

entity ArtusDeChavagnacTask3_tb is
end ArtusDeChavagnacTask3_tb;

architecture behavior of ArtusDeChavagnacTask3_tb is

	component ArtusDeChavagnacTask3

		port (

			a : in std_logic;
			b : in std_logic;
			Clock : in std_logic;

			policeLights : out std_logic;
			siren : out std_logic

		);

	end component;

	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal Clock : std_logic := '0';

	signal policeLights : std_logic;
	signal siren : std_logic;

	constant Clock_period : time := 10 ns;

begin

	uut: ArtusDeChavagnacTask3 port map (

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

end;