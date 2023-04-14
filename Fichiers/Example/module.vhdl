library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity module is

	Port (

		entree1 : in STD_LOGIC;
		entree2 : in STD_LOGIC;

		sortie1 : out STD_LOGIC;
		sortie2 : out STD_LOGIC

	);

end module;

architecture Behavioral of module is
begin

	process (entree1, entree2)

	variable vecteur_entrees : std_logic_vector (1 downto 0);

	begin

		vecteur_entrees := entree1 & entree2;

		case vecteur_entrees is

			when "10" =>

				sortie1 <= '1';
				sortie2 <= '0';

			when others =>

				sortie1 <= '0';
				sortie2 <= '1';

		end case;

	end process;

end Behavioral;