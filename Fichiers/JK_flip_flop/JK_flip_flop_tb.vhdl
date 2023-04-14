LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY JK_flip_flop_tb IS
END JK_flip_flop_tb;

ARCHITECTURE behavior OF JK_flip_flop_tb IS

COMPONENT JK_flip_flop

	PORT (

		CLOCK : IN std_logic;
		J : IN std_logic;
		K : IN std_logic;

		Q : INOUT std_logic;
		NON_Q : INOUT std_logic

	);

END COMPONENT;

signal CLOCK : std_logic := '0';
signal J : std_logic := '0';
signal K : std_logic := '0';

signal Q : std_logic;
signal NON_Q : std_logic;

constant CLOCK_period : time := 10 ns;

BEGIN

	uut: JK_flip_flop PORT MAP (

			CLOCK => CLOCK,
			J => J,
			K => K,

			Q => Q,
			NON_Q => NON_Q

		);

	CLOCK_process: process
	begin

			CLOCK <= '0';

			wait for CLOCK_period/2;

			CLOCK <= '1';

			wait for CLOCK_period/2;

			wait;

	end process;

	stim_proc: process
	begin	

		wait for 3 ns;

		J <= '0';
		K <= '0';

		wait for 10 ns;

		J <= '0';
		K <= '1';

		wait for 10 ns;

		J <= '1';
		K <= '0';

		wait for 10 ns;

		J <= '1';
		K <= '1';

		wait for 10 ns;

		wait;

	end process;

END;