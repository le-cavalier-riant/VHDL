library ieee;
use ieee.std_logic_1164.all;

entity withXXSelect_tb is end withXXSelect_tb;

architecture behavior of withXXSelect_tb is

	component withXXSelect
		port (
			a : in std_logic;
			b : in std_logic;
			c : in std_logic;
			d : in std_logic;
			control : in std_logic_vector (1 downto 0);
			y : out std_logic
		);
	end component;
	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal c : std_logic := '0';
	signal d : std_logic := '0';
	signal control : std_logic_vector (1 downto 0) := (others => '0');
	signal y : std_logic;

begin

	uut: withXXSelect port map (
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

end;