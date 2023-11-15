library ieee;
use ieee.std_logic_1164.all;

entity task_2_tb is
end task_2_tb;

architecture behavior of task_2_tb is

component task_2
	port (
		sens_1 : in std_logic;
		sens_2 : in std_logic;
		sens_3 : in std_logic;
		sens_4 : in std_logic;
		turn : out std_logic;
		rotate : out std_logic
	);
end component;
signal sens_1 : std_logic := '0';
signal sens_2 : std_logic := '0';
signal sens_3 : std_logic := '0';
signal sens_4 : std_logic := '0';
signal turn : std_logic;
signal rotate : std_logic;

begin

	uut: task_2 port map (
		sens_1 => sens_1,
		sens_2 => sens_2,
		sens_3 => sens_3,
		sens_4 => sens_4,
		turn => turn,
		rotate => rotate
	);
	stim_proc: process
	begin
		sens_1 <= '0';
		sens_2 <= '0';
		wait for 10 ns;
		sens_1 <= '0';
		sens_2 <= '1';
		wait for 10 ns;
		sens_1 <= '1';
		sens_2 <= '0';
		wait for 10 ns;
		sens_1 <= '1';
		sens_2 <= '1';
		wait for 10 ns;
		wait for 20 ns
		sens_3 <= '0';
		sens_4 <= '0';
		wait for 10 ns;
		sens_3 <= '0';
		sens_4 <= '1';
		wait for 10 ns;
		sens_3 <= '1';
		sens_4 <= '0';
		wait for 10 ns;
		sens_3 <= '1';
		sens_4 <= '1';
		wait for 10 ns;
		wait;
	end process;

end;
