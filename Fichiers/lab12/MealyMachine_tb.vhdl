library ieee;
use ieee.std_logic_1164.all;

entity MealyMachine_tb is
end MealyMachine_tb;

architecture behavior of MealyMachine_tb is

	component MealyMachine

		port (

			a, b, clock, clear : in std_logic;

			c : out std_logic

		);

	end component;

	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal clock : std_logic := '0';
	signal clear : std_logic := '0';

	signal c : std_logic;

	constant clockPeriod : time := 10 ns;

begin

	uut: MealyMachine port map (

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

end;
