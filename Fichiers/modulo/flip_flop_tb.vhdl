LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY flip_flop_tb IS
END flip_flop_tb;

ARCHITECTURE behavior OF flip_flop_tb IS

COMPONENT flip_flop

	PORT (

		D, clk, clr : IN std_logic;

		q, noq : OUT std_logic

	);

END COMPONENT;

signal D : std_logic := '0';
signal clk : std_logic := '0';
signal clr : std_logic := '0';

signal q : std_logic;
signal noq : std_logic;
constant clk_period : time := 10 ns;

BEGIN

	uut: flip_flop PORT MAP (

		D => D,
		clk => clk,
		clr => clr,

		q => q,
		noq => noq

	);

	clk_process :process
	begin

		clk <= '0';

		wait for clk_period/2;

		clk <= '1';

		wait for clk_period/2;

		if NOW > 200 ns then

			wait;

		end if;

	end process;

	stim_proc: process
	begin

		wait for 3 ns;

		clr <= '0';
		D <= '1';

		wait for 20 ns;

		clr <= '0';
		D <= '0'; 

		wait for 20 ns;

		clr <= '0';
		D <= '1';

		wait for 20 ns;

		clr <= '1';

		wait for 10 ns;

		if NOW > 200 ns then

			wait;

		end if;

	end process;

END;
