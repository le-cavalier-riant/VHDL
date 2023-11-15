library ieee;
use ieee.std_logic_1164.all;

entity task_1_tb is
end task_1_tb;

architecture behavior of task_1_tb is

component task_1

	port (

		B0 : in std_logic;
		B1 : in std_logic;
		B2 : in std_logic;

		G0 : out std_logic;
		G1 : out std_logic;
		G2 : out std_logic

		);

end component;

signal B0 : std_logic := '0';
signal B1 : std_logic := '0';
signal B2 : std_logic := '0';

signal G0 : std_logic;
signal G1 : std_logic;
signal G2 : std_logic;

begin

	uut: task_1 port map (

		B0 => B0,
		B1 => B1,
		B2 => B2,

		G0 => G0,
		G1 => G1,
		G2 => G2

	);

	stim_proc: process
	begin

		B0 <= '0';
		B1 <= '0';
		B2 <= '0';

		wait for 10 ns;

		B0 <= '0';
		B1 <= '0';
		B2 <= '1';

		wait for 10 ns;

		B0 <= '0';
		B1 <= '1';
		B2 <= '0';

		wait for 10 ns;

		B0 <= '0';
		B1 <= '1';
		B2 <= '1';

		wait for 10 ns;

		B0 <= '1';
		B1 <= '0';
		B2 <= '0';

		wait for 10 ns;

		B0 <= '1';
		B1 <= '0';
		B2 <= '1';

		wait for 10 ns;

		B0 <= '1';
		B1 <= '1';
		B2 <= '0';

		wait for 10 ns;

		B0 <= '1';
		B1 <= '1';
		B2 <= '1';

		wait for 10 ns;

		wait;

	end process;

end;
