LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MealyMachine_tb IS
END MealyMachine_tb;

ARCHITECTURE behavior OF MealyMachine_tb IS

	COMPONENT MealyMachine

		PORT (

			a, b, clock, clear : IN std_logic;

			c : OUT std_logic

		);

	END COMPONENT;

	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal clock : std_logic := '0';
	signal clear : std_logic := '0';

	signal c : std_logic;

	constant clockPeriod : time := 10 ns;

BEGIN

	uut: MealyMachine PORT MAP (

		a => a,
		b => b,
		clock => clock,
		clear => clear,

		c => c

	);

	clockProcess : process
	begin

		clock <= '0';

		wait for clockPeriod / 2;

		clock <= '1';

		wait for clockPeriod / 2;

		if NOW > 200 ns then

			wait;

		end if;

	end process;

	stim_proc: process
	begin

		wait for 3 ns;

		a <= '0';
		b <= '0';
		clear <= '1';

		wait for 10 ns;

		a <= '0';
		b <= '0';
		clear <= '0';

		wait for 20 ns;

		a <= '1';
		b <= '0';

		wait for 20 ns;

		a <= '0';
		b <= '1';

		wait for 20 ns;

		a <= '1';
		b <= '1';

		wait for 20 ns;

		a <= '0';
		b <= '0';

		wait for 20 ns;

		a <= '1';
		b <= '0';

		wait for 20 ns;

		a <= '0';
		b <= '1';

		wait for 20 ns;

		a <= '1';
		b <= '1';

		wait for 20 ns;

		if NOW > 200 ns then

			wait;

		end if;

	end process;

END;
