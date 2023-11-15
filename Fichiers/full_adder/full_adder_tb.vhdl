library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture behavior of full_adder_tb is

component full_adder

	port (

		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;

		s : out std_logic;
		cout : out std_logic

	);

end component;

signal a : std_logic := '0';
signal b : std_logic := '0';
signal cin : std_logic := '0';

signal s : std_logic;
signal cout : std_logic;

begin

	uut: full_adder port map (

		a => a,
		b => b,
		cin => cin,

		s => s,
		cout => cout

	);

	stim_proc: process
	begin

		a <= '0';
		b <= '0';
		cin <= '0';

		wait for 10 ns;

		a <= '1';
		b <= '0';
		cin <= '0';

		wait for 10 ns;

		a <= '0';
		b <= '1';
		cin <= '0';

		wait for 10 ns;

		a <= '1';
		b <= '1';
		cin <= '0';

		wait for 10 ns;

		a <= '0';
		b <= '0';
		cin <= '1';

		wait for 10 ns;

		a <= '1';
		b <= '0';
		cin <= '1';

		wait for 10 ns;

		a <= '0';
		b <= '1';
		cin <= '1';

		wait for 10 ns;

		a <= '1';
		b <= '1';
		cin <= '1';

		wait for 10 ns;

		wait;

	end process;

end;