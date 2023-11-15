library ieee;
use ieee.std_logic_1164.all;

entity module is

	port (
		entree1 : in std_logic;
		entree2 : in std_logic;
		sortie1 : out std_logic;
		sortie2 : out std_logic
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