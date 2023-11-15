library ieee;
use ieee.std_logic_1164.all;

entity testBench is end testBench;

architecture behavior of testBench is

	component module
		port (
			a, horloge: in std_logic;
			s: out std_logic
		);
	end component;
	signal a: std_logic;
	signal horloge: std_logic := '0';
	signal s: std_logic;
	constant periodeHorloge: time := 20 ns;

begin

	uut: module port map (
		a => a,
		horloge => horloge,
		s => s
	);
	process
	begin
		horloge <= '0';
		wait for periodeHorloge / 2;
		horloge <= '1';
		wait for periodeHorloge / 2;
		if now > 2000 ns then wait;
		end if;
	end process;
	process
	begin
		wait for 100 ns;
		a <= '1';
		wait for 75 ns;
		a <= '0';
		if now > 2000 ns then wait;
		end if;
	end process;

end;