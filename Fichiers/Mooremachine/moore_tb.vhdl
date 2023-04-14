LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY moore_tb IS
END moore_tb;

ARCHITECTURE behavior OF moore_tb IS

	COMPONENT moore

		PORT (

			clk : IN std_logic;
			clr : IN std_logic;

			a : IN std_logic_vector (1 downto 0);

			y : OUT std_logic_vector (1 downto 0)

		);

	END COMPONENT;

	signal clk : std_logic := '0';
	signal clr : std_logic := '0';

	signal a : std_logic_vector (1 downto 0) := "00";

	signal y : std_logic_vector (1 downto 0);

	constant clk_period : time := 50 ns;

BEGIN

	uut: moore PORT MAP (

		a => a,
		y => y,
		clk => clk,
		clr => clr

	);

	clk_process :process
	begin

		clk <= '0';

		wait for clk_period / 2;

		clk <= '1';

		wait for clk_period / 2;

	end process;

	reset_proc: process
	begin

		wait for clk_period / 2;

		clr <= '1';

		wait for clk_period / 2;

		clr <= '0';

		wait;

	end process;

	proc: process
	begin

		wait for 5 * clk_period;

		a <= "00";

		wait for 5 * clk_period;

		a <= "10";

		wait for 5 * clk_period

		a <= "11";

		wait for 5 * clk_period;

		a <= "01";

		wait;

	end process;

END;
