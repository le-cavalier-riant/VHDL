library ieee;
use ieee.std_logic_1164.all;

entity JK_flip_flop_tb is
end JK_flip_flop_tb;

architecture behavior of JK_flip_flop_tb is

component JK_flip_flop

	port (

		CLOCK : in std_logic;
		J : in std_logic;
		K : in std_logic;

		Q : inout std_logic;
		NON_Q : inout std_logic

	);

end component;

signal CLOCK : std_logic := '0';
signal J : std_logic := '0';
signal K : std_logic := '0';

signal Q : std_logic;
signal NON_Q : std_logic;

constant CLOCK_period : time := 10 ns;

begin

	uut: JK_flip_flop port map (

			CLOCK => CLOCK,
			J => J,
			K => K,

			Q => Q,
			NON_Q => NON_Q

		);

	CLOCK_process: process
	begin

			CLOCK <= '0';

			wait for CLOCK_period/2;

			CLOCK <= '1';

			wait for CLOCK_period/2;

			wait;

	end process;

	stim_proc: process
	begin

		wait for 3 ns;

		J <= '0';
		K <= '0';

		wait for 10 ns;

		J <= '0';
		K <= '1';

		wait for 10 ns;

		J <= '1';
		K <= '0';

		wait for 10 ns;

		J <= '1';
		K <= '1';

		wait for 10 ns;

		wait;

	end process;

end;