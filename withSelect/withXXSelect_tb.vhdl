LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY withXXSelect_tb IS
END withXXSelect_tb;

ARCHITECTURE behavior OF withXXSelect_tb IS

	COMPONENT withXXSelect

		PORT (

			a : IN std_logic;
			b : IN std_logic;
			c : IN std_logic;
			d : IN std_logic;

			control : in STD_logic_vector (1 downto 0);

			y : OUT std_logic

		);

	END COMPONENT;

	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal c : std_logic := '0';
	signal d : std_logic := '0';

	signal control : std_logic_vector (1 downto 0) := (others => '0');

	signal y : std_logic;

BEGIN

	uut: withXXSelect PORT MAP (

		a => a,
		b => b,
		c => c,
		d => d,

		control => control,

		y => y

	);

	stim_proc: process
	begin

		wait for 100 ns;

		control <= "00";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 100 ns;

		control <= "00";
		a <= '1';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 100 ns;

		control <= "01";
		a <= '0';
		b <= '1';
		c <= '1';
		d <= '1';
		
		wait for 100 ns;

		control <= "01";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 100 ns;

		control <= "11";
		a <= '1';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 100 ns;

		control <= "11";
		a <= '0';
		b <= '1';
		c <= '1';
		d <= '1';

		wait;

	end process;

END;