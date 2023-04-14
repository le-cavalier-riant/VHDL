LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BCD_7segments_tb IS
END BCD_7segments_tb;

ARCHITECTURE behavior OF BCD_7segments_tb IS

COMPONENT BCD_7segments

	PORT(

		V1 : IN std_logic;
		V2 : IN std_logic;
		V3 : IN std_logic;
		V4 : IN std_logic;

		a : OUT std_logic;
		b : OUT std_logic;
		c : OUT std_logic;
		d : OUT std_logic;
		e : OUT std_logic;
		f : OUT std_logic;
		g : OUT std_logic

	);

END COMPONENT;

signal V1 : std_logic := '0';
signal V2 : std_logic := '0';
signal V3 : std_logic := '0';
signal V4 : std_logic := '0';

signal a : std_logic;
signal b : std_logic;
signal c : std_logic;
signal d : std_logic;
signal e : std_logic;
signal f : std_logic;
signal g : std_logic;

BEGIN

	uut: BCD_7segments PORT MAP (

		V1 => V1,
		V2 => V2,
		V3 => V3,
		V4 => V4,

		a => a,
		b => b,
		c => c,
		d => d,
		e => e,
		f => f,
		g => g

	);

	stim_proc: process
	begin

		wait for 100 ns;

		V1 <= '0';
		V2 <= '0';
		V3 <= '0';
		V4 <= '0';

		wait for 100 ns;

		V1 <= '1';
		V2 <= '0';
		V3 <= '0';
		V4 <= '0';

		wait for 100 ns;

		V1 <= '0';
		V2 <= '1';
		V3 <= '0';
		V4 <= '0';

		wait for 100 ns;
		V1 <= '1';
		V2 <= '1';
		V3 <= '0';
		V4 <= '0';

		wait for 100 ns;

		V1 <= '0';
		V2 <= '0';
		V3 <= '1';
		V4 <= '0';

		wait for 100 ns;

		V1 <= '1';
		V2 <= '0';
		V3 <= '1';
		V4 <= '0';

		wait for 100 ns;

		V1 <= '0';
		V2 <= '1';
		V3 <= '1';
		V4 <= '0';

		wait for 100 ns;

		V1 <= '1';
		V2 <= '1';
		V3 <= '1';
		V4 <= '0';

		wait for 100 ns;

		V1 <= '0';
		V2 <= '0';
		V3 <= '0';
		V4 <= '1';

		wait for 100 ns;

		V1 <= '1';
		V2 <= '0';
		V3 <= '0';
		V4 <= '1';

		wait for 100 ns;

		V1 <= '0';
		V2 <= '0';
		V3 <= '0';
		V4 <= '0';

		wait;

	end process;

END;