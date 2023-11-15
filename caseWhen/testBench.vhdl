library ieee;
use ieee.std_logic_1164.all;
entity testBench is end testBench;
architecture behavior of testBench is
	component module
		port (
			entree : in std_logic;
			sortie : out std_logic
		);
	end component;
	signal entree : std_logic;
	signal sortie : std_logic;
begin
	uut : module port map (
		entree => entree,
		sortie => sortie
	);
	process
	begin
		wait for 10 ns;
		entree <= '0';
		wait for 10 ns;
		entree <= '1';
		wait for 10 ns;
		if now > 30 ns then wait;
		end if;
	end process;
end;