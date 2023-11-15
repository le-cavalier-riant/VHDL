library ieee;
use ieee.std_logic_1164.all;

entity BCD_7segments_tb is
end BCD_7segments_tb;

architecture behavior of BCD_7segments_tb is

	component BCD_7segments
		port (
			V1 : in std_logic;
			V2 : in std_logic;
			V3 : in std_logic;
			V4 : in std_logic;
			a : out std_logic;
			b : out std_logic;
			c : out std_logic;
			d : out std_logic;
			e : out std_logic;
			f : out std_logic;
			g : out std_logic
		);
	end component;
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

begin

	uut: BCD_7segments port map (
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

end;