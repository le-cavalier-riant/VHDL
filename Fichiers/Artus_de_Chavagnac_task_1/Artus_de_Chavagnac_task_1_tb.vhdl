LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Artus_de_Chavagnac_task_1_tb IS
END Artus_de_Chavagnac_task_1_tb;

ARCHITECTURE behavior OF Artus_de_Chavagnac_task_1_tb IS

COMPONENT Artus_de_Chavagnac_task_1

	PORT(

		G0 : IN STD_LOGIC;
		G1 : IN STD_LOGIC;
		G2 : IN STD_LOGIC;

		B0 : OUT STD_LOGIC;
		B1 : OUT STD_LOGIC;
		B2 : OUT STD_LOGIC

	);

END COMPONENT;

signal G0 : std_logic := '0';
signal G1 : std_logic := '0';
signal G2 : std_logic := '0';

signal B0 : std_logic;
signal B1 : std_logic;
signal B2 : std_logic;

BEGIN

	uut: Artus_de_Chavagnac_task_1 PORT MAP (

		B0 => B0,
		B1 => B1,
		B2 => B2,

		G0 => G0,
		G1 => G1,
		G2 => G2

	);

	stim_proc: process
	begin

		G0 <= '0';
		G1 <= '0';
		G2 <= '0';

		wait for 10 ns;

		G0 <= '0';
		G1 <= '0';
		G2 <= '1';

		wait for 10 ns;
		
		G0 <= '0';
		G1 <= '1';
		G2 <= '1';

		wait for 10 ns;
		
		G0 <= '0';
		G1 <= '1';
		G2 <= '0';

		wait for 10 ns;
		
		G0 <= '1';
		G1 <= '1';
		G2 <= '0';

		wait for 10 ns;
		
		G0 <= '1';
		G1 <= '1';
		G2 <= '1';

		wait for 10 ns;
		
		G0 <= '1';
		G1 <= '0';
		G2 <= '1';

		wait for 10 ns;
		
		G0 <= '1';
		G1 <= '0';
		G2 <= '0';

		wait for 10 ns;

		wait;

	end process;

END;