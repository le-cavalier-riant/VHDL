library ieee;
use ieee.std_logic_1164.all;

entity heater_case_when_tb is
end heater_case_when_tb;

architecture behavior of heater_case_when_tb is

component heater_case_when

	port (

		a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		d : in std_logic;

		sw1 : out std_logic;
		sw2 : out std_logic;
		sw3 : out std_logic;
		sw4 : out std_logic

	);

end component;

signal a : std_logic := '0';
signal b : std_logic := '0';
signal c : std_logic := '0';
signal d : std_logic := '0';

signal sw1 : std_logic;
signal sw2 : std_logic;
signal sw3 : std_logic;
signal sw4 : std_logic;

begin

	uut: heater_case_when port map (

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

end;