LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY states_tb IS
END states_tb;

ARCHITECTURE behavior OF states_tb IS

	COMPONENT states

		PORT (

			clock : IN std_logic;
			clear : IN std_logic;

			a : IN std_logic_vector (1 downto 0);

			y : OUT std_logic_vector (1 downto 0)

		);

	END COMPONENT;

	signal clock : std_logic := '0';
	signal clear : std_logic := '0';

	signal a : std_logic_vector (1 downto 0) := "00";

	signal y : std_logic_vector (1 downto 0);

	constant clock_period : time := 50 ns;

BEGIN

	uut: states PORT MAP (

		clock => clock,
		clear => clear,

		a => a,

		y => y

	);

	clock_process :process
	begin

		clock <= '0';

		wait for clock_period / 2;

		clock <= '1';

		wait for clock_period / 2;

	end process;

	reset_proc: process
	begin

		wait for clock_period / 2;

		clear <= '1';

		wait for clock_period / 2;

		clear <= '0';

		wait;

	end process;

	proc: process
	begin

		wait for 5 * clock_period;

		a <= "00";

		wait for 5 * clock_period;

		a <= "10";

		wait for 5 * clock_period

		a <= "11";

		wait for 5 * clock_period;

		a <= "01";

		wait;

	end process;

END;
