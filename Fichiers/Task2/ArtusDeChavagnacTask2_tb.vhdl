library ieee;
use ieee.std_logic_1164.all;

entity ArtusDeChavagnacTask2_tb is
end ArtusDeChavagnacTask2_tb;

architecture behavior of ArtusDeChavagnacTask2_tb is

	component ArtusDeChavagnacTask2

		port (

			Clock : in std_logic;

			q : out std_logic;
			notq : out std_logic

		);

	end component;

	signal Clock : std_logic := '0';

	signal q : std_logic;
	signal notq : std_logic;

	constant Clock_period : time := 10 ns;

begin

	uut: ArtusDeChavagnacTask2 port map (

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

end;