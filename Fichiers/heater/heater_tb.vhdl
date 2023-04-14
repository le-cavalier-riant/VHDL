LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY heater_tb IS
END heater_tb;

ARCHITECTURE behavior OF heater_tb IS

COMPONENT heater

	PORT (

		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;
		d : IN std_logic;

		SW1 : OUT std_logic;
		SW2 : OUT std_logic;
		SW3 : OUT std_logic;
		SW4 : OUT std_logic

	);

END COMPONENT;

signal a : std_logic := '0';
signal b : std_logic := '0';
signal c : std_logic := '0';
signal d : std_logic := '0';

signal SW1 : std_logic;
signal SW2 : std_logic;
signal SW3 : std_logic;
signal SW4 : std_logic;

BEGIN

	uut: heater PORT MAP (

		a => a,
		b => b,
		c => c,
		d => d,

		SW1 => SW1,
		SW2 => SW2,
		SW3 => SW3,
		SW4 => SW4

	);

	stim_proc: process
	Begin

		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';

		wait for 10 ns;

		a <= '0';
		b <= '0';
		c <= '0';
		d <= '1';

		wait for 10 ns;

		a <= '0';
		b <= '0';
		c <= '1';
		d <= '1';

		wait for 10 ns;

		a <= '0';
		b <= '1';
		c <= '1';
		d <= '1';

		wait for 10 ns;

		a <= '1';
		b <= '1';
		c <= '1';
		d <= '1';

		wait for 10 ns;

		wait;

	end process;

END;