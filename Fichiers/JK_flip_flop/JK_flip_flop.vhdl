library ieee;
use ieee.std_logic_1164.all;

entity JK_flip_flop is

	port (

		CLOCK : in std_logic;
		J : in std_logic;
		K : in std_logic;

		Q : inout std_logic;
		NON_Q : inout std_logic

	);

end JK_flip_flop;

architecture Behavioral of JK_flip_flop is
begin

	process (CLOCK) is

		variable vecteur : std_logic_vector (1 downto 0);

	begin

		vecteur := J & K;

		if (rising_edge(CLOCK)) then

			case vecteur is

				when "00" =>

					Q <= Q;
					NON_Q <= NON_Q;

				when "01" =>

					Q <= '0';
					NON_Q <= '1';

				when "10" =>

					Q <= '1';
					NON_Q <= '0';

				when "11" =>

					Q <= not(Q);
					NON_Q <= not(NON_Q);

				when others =>

					Q <= 'X';
					NON_Q <= 'X';

			end case;

		end if;

	end process;

end Behavioral;