LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY multiplexer_clock_tb IS
END multiplexer_clock_tb;

ARCHITECTURE behavior OF multiplexer_clock_tb IS

COMPONENT multiplexer_clock

	PORT(

		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;
		d : IN std_logic;
		Clock : IN std_logic;
		s : IN std_logic_vector(1 downto 0);

		f : OUT std_logic

	);

END COMPONENT;

signal a : std_logic := '0';
signal b : std_logic := '0';
signal c : std_logic := '0';
signal d : std_logic := '0';
signal Clock : std_logic := '0';
signal s : std_logic_vector(1 downto 0) := (others => '0');

signal f : std_logic;

constant Clock_period : time := 10 ns;

BEGIN

	uut: multiplexer_clock PORT MAP (

		a => a,
		b => b,
		c => c,
		d => d,
		s => s,
		Clock => Clock,

		f => f

	);

	Clock_process :process
	begin

		Clock <= '0';

		wait for Clock_period/2;

		Clock <= '1';

		wait for Clock_period/2;

		if NOW > 200 ns then

			wait;

		end if;

	end process;

	stim_proc: process
	begin

		wait for 3 ns;

		s <= "00";
		a <= '1';
		b <= '0';
		c <= '0';
		d <= '0';

		wait for 10 ns;

		a <= '0';

		wait for 10 ns;

		a <= '1';
		s <= "01";

		wait for 10 ns;

		b <= '0';

		wait for 10 ns;

		b <= '1';
		s <= "10";

		wait for 10 ns;

		c <= '0';

		wait for 10 ns;

		c <= '1';
		s <= "11";

		wait for 10 ns;

		d <= '0';

		wait for 10 ns;

		d <= '1';

		wait for 10 ns;
		
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';

		if NOW > 200 ns then

			wait;

		end if;

	end process;

END;