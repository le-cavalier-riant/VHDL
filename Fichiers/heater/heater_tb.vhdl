library ieee;
use ieee.std_logic_1164.all;

entity heater_tb is
end heater_tb;

architecture behavior of heater_tb is

component heater

	port (

		a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		d : in std_logic;

		SW1 : out std_logic;
		SW2 : out std_logic;
		SW3 : out std_logic;
		SW4 : out std_logic

	);

end component;

signal a : std_logic := '0';
signal b : std_logic := '0';
signal c : std_logic := '0';
signal d : std_logic := '0';

signal SW1 : std_logic;
signal SW2 : std_logic;
signal SW3 : std_logic;
signal SW4 : std_logic;

begin

	uut: heater port map (

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

end;