LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder_tb IS
END full_adder_tb;

ARCHITECTURE behavior OF full_adder_tb IS

COMPONENT full_adder

	PORT(

		a : IN std_logic;
		b : IN std_logic;
		cin : IN std_logic;

		s : OUT std_logic;
		cout : OUT std_logic

	);

END COMPONENT;

signal a : std_logic := '0';
signal b : std_logic := '0';
signal cin : std_logic := '0';

signal s : std_logic;
signal cout : std_logic;

BEGIN

	uut: full_adder PORT MAP (

		a => a,
		b => b,
		cin => cin,

		s => s,
		cout => cout

	);

	stim_proc: process
	begin

		a <= '0';
		b <= '0';
		cin <= '0';

		wait for 10 ns;

		a <= '1';
		b <= '0';
		cin <= '0';

		wait for 10 ns;

		a <= '0';
		b <= '1';
		cin <= '0';

		wait for 10 ns;

		a <= '1';
		b <= '1';
		cin <= '0';

		wait for 10 ns;

		a <= '0';
		b <= '0';
		cin <= '1';

		wait for 10 ns;

		a <= '1';
		b <= '0';
		cin <= '1';

		wait for 10 ns;

		a <= '0';
		b <= '1';
		cin <= '1';

		wait for 10 ns;

		a <= '1';
		b <= '1';
		cin <= '1';

		wait for 10 ns;

		wait;

	end process;

END;