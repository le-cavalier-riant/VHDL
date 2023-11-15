library ieee;
use ieee.std_logic_1164.all;

entity module_tb is
end module_tb;

architecture behavior of module_tb is

	component module

		port (
			entree1 : in std_logic;
			entree2 : in std_logic;
			sortie1 : out std_logic;
			sortie2 : out std_logic
		);

	end component;

	signal entree1 : std_logic := '0';
	signal entree2 : std_logic := '0';
	signal sortie1 : std_logic;
	signal sortie2 : std_logic;

begin

	uut: module port map (
		entree1 => entree1,
		entree2 => entree2,
		sortie1 => sortie1,
		sortie2 => sortie2
	);
	task1: process
	begin
		entree1 <= '0';
		entree2 <= '0';
		wait for 10 ns;
		entree1 <= '0';
		entree2 <= '1';
		wait for 10 ns;
		entree1 <= '1';
		entree2 <= '0';
		wait for 10 ns;
		entree1 <= '1';
		entree2 <= '1';
		wait for 10 ns;
		wait;
	end process;

end;