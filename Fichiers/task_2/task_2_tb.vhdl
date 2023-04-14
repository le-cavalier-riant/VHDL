LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY task_2_tb IS
END task_2_tb;

ARCHITECTURE behavior OF task_2_tb IS

COMPONENT task_2

	PORT(

		sens_1 : IN STD_LOGIC;
		sens_2 : IN STD_LOGIC;
		sens_3 : IN STD_LOGIC;
		sens_4 : IN STD_LOGIC;

		turn : OUT STD_LOGIC;
		rotate : OUT STD_LOGIC

		);

END COMPONENT;

signal sens_1 : std_logic := '0';
signal sens_2 : std_logic := '0';
signal sens_3 : std_logic := '0';
signal sens_4 : std_logic := '0';

signal turn : std_logic;
signal rotate : std_logic;

BEGIN

	uut: task_2 PORT MAP (

		sens_1 => sens_1,
		sens_2 => sens_2,
		sens_3 => sens_3,
		sens_4 => sens_4,

		turn => turn,
		rotate => rotate

	);

	stim_proc: process
	begin

 --part 2: sensors 1 & 2

		sens_1 <= '0';
		sens_2 <= '0';

		wait for 10 ns;

		sens_1 <= '0';
		sens_2 <= '1';

		wait for 10 ns;

		sens_1 <= '1';
		sens_2 <= '0';

		wait for 10 ns;

		sens_1 <= '1';
		sens_2 <= '1';

		wait for 10 ns;

 --part 2: sensors 3 & 4, we wait longer than usual to see this separation on the graphs
		wait for 20 ns

		sens_3 <= '0';
		sens_4 <= '0';

		wait for 10 ns;

		sens_3 <= '0';
		sens_4 <= '1';

		wait for 10 ns;

		sens_3 <= '1';
		sens_4 <= '0';

		wait for 10 ns;

		sens_3 <= '1';
		sens_4 <= '1';

		wait for 10 ns;

		wait;

	end process;

END;
