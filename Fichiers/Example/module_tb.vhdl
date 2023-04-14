LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY module_tb IS
END module_tb;

ARCHITECTURE behavior OF module_tb IS

COMPONENT module

	PORT (

		entree1 : IN STD_LOGIC;
		entree2 : IN STD_LOGIC;

		sortie1 : OUT STD_LOGIC;
		sortie2 : OUT STD_LOGIC

	);

END COMPONENT;

signal entree1 : std_logic := '0';
signal entree2 : std_logic := '0';

signal sortie1 : std_logic;
signal sortie2 : std_logic;

BEGIN

	uut: module PORT MAP (

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

END;