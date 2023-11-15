library ieee;
use ieee.std_logic_1164.all;

entity states_tb is
end states_tb;

architecture behavior of states_tb is

	component states

		port (

			clock : in std_logic;
			clear : in std_logic;

			a : in std_logic_vector (1 downto 0);

			y : out std_logic_vector (1 downto 0)

		);

	end component;

	signal clock : std_logic := '0';
	signal clear : std_logic := '0';

	signal a : std_logic_vector (1 downto 0) := "00";

	signal y : std_logic_vector (1 downto 0);

	constant clock_period : time := 50 ns;

begin

	uut: states port map (

		clock => clock,
		clear => clear,

		a => a,

		y => y

	);

	clock_process :process
	begin

		clock <= '0';

		wait for clock_period / 2;

		clock <= '1';

		wait for clock_period / 2;

	end process;

	reset_proc: process
	begin

		wait for clock_period / 2;

		clear <= '1';

		wait for clock_period / 2;

		clear <= '0';

		wait;

	end process;

	proc: process
	begin

		wait for 5 * clock_period;

		a <= "00";

		wait for 5 * clock_period;

		a <= "10";

		wait for 5 * clock_period

		a <= "11";

		wait for 5 * clock_period;

		a <= "01";

		wait;

	end process;

end;
