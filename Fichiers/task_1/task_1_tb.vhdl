LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY task_1_tb IS
END task_1_tb;

ARCHITECTURE behavior OF task_1_tb IS

COMPONENT task_1

	PORT(

		B0 : IN STD_LOGIC;
		B1 : IN STD_LOGIC;
		B2 : IN STD_LOGIC;

		G0 : OUT STD_LOGIC;
		G1 : OUT STD_LOGIC;
		G2 : OUT STD_LOGIC

		);

END COMPONENT;

signal B0 : std_logic := '0';
signal B1 : std_logic := '0';
signal B2 : std_logic := '0';

signal G0 : std_logic;
signal G1 : std_logic;
signal G2 : std_logic;

BEGIN

	uut: task_1 PORT MAP (

		B0 => B0,
		B1 => B1,
		B2 => B2,

		G0 => G0,
		G1 => G1,
		G2 => G2

	);

	stim_proc: process
	begin

		B0 <= '0';
		B1 <= '0';
		B2 <= '0';

		wait for 10 ns;

		B0 <= '0';
		B1 <= '0';
		B2 <= '1';

		wait for 10 ns;
		
		B0 <= '0';
		B1 <= '1';
		B2 <= '0';

		wait for 10 ns;
		
		B0 <= '0';
		B1 <= '1';
		B2 <= '1';

		wait for 10 ns;
		
		B0 <= '1';
		B1 <= '0';
		B2 <= '0';

		wait for 10 ns;
		
		B0 <= '1';
		B1 <= '0';
		B2 <= '1';

		wait for 10 ns;
		
		B0 <= '1';
		B1 <= '1';
		B2 <= '0';

		wait for 10 ns;
		
		B0 <= '1';
		B1 <= '1';
		B2 <= '1';

		wait for 10 ns;

		wait;

	end process;

END;
