library ieee;
use ieee.std_logic_1164.all;

entity testBench is
end testBench;

architecture behavior of testBench is

	component module

		port (

			a : in std_logic;

			s : out std_logic

		);

	end component;

	--signal a : std_logic := '0';
	signal a : std_logic;

	signal s : std_logic;

begin

	uut: module port map (

		a => a,

		s => s

	);

	process
	begin

		wait for 10 ns;

		a <= '0';

		wait for 10 ns;

		a <= '1';

		wait for 10 ns;

		if now > 30 ns then

			wait;

		end if;

	end process;

end;