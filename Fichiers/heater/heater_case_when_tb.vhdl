LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY heater_case_when_tb IS
END heater_case_when_tb;

ARCHITECTURE behavior OF heater_case_when_tb IS

COMPONENT heater_case_when

	PORT(

		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;
		d : IN std_logic;

		sw1 : OUT std_logic;
		sw2 : OUT std_logic;
		sw3 : OUT std_logic;
		sw4 : OUT std_logic

	);

END COMPONENT;

signal a : std_logic := '0';
signal b : std_logic := '0';
signal c : std_logic := '0';
signal d : std_logic := '0';

signal sw1 : std_logic;
signal sw2 : std_logic;
signal sw3 : std_logic;
signal sw4 : std_logic;

BEGIN

	uut: heater_case_when PORT MAP (

		a => a,
		b => b,
		c => c,
		d => d,

		sw1 => sw1,
		sw2 => sw2,
		sw3 => sw3,
		sw4 => sw4

	);

	stim_proc: process
	begin

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