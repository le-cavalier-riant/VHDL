library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArtusDeChavagnacTask1 is

	port (

		Clock: in std_logic;

		c1, c2: out std_logic

	);

end ArtusDeChavagnacTask1;

architecture Behavioral of ArtusDeChavagnacTask1 is
begin

	process (Clock) is

		variable vecteur : std_logic_vector (1 downto 0);

	begin

		vecteur := c1 & c2;

		if (rising_edge(Clock)) then

			case vecteur is

				when "00" =>

					c1 <= '0';
					c2 <= '1';

				when "01" =>

					c1 <= '1';
					c2 <= '0';

				when "10" =>

					c1 <= '1';
					c2 <= '1';

				when "11" => -- here we reste to 0 because we reach 4

					c1 <= '0';
					c2 <= '0';

				when others =>

					c1 <= 'X';
					c2 <= 'X';

			end case;

		end if;

	end process;

end Behavioral;
