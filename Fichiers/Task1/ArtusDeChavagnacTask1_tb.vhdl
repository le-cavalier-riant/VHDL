library ieee;
use ieee.std_logic_1164.all;

entity ArtusDeChavagnacTask1_tb is
end ArtusDeChavagnacTask1_tb;

architecture behavior of ArtusDeChavagnacTask1_tb is

	component ArtusDeChavagnacTask1

		port (

			Clock : in std_logic;

			c1 : out std_logic;
			c2 : out std_logic

		);

	end component;

	signal Clock : std_logic := '0';

	signal c1 : std_logic;
	signal c2 : std_logic;

	constant Clock_period : time := 10 ns;

begin

	uut: ArtusDeChavagnacTask1 port map (

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

end;