library ieee;
use ieee.std_logic_1164.all;

entity module is

	port (

		a, horloge: in std_logic;

		s: out std_logic

	);

end module;

architecture Behavioral of module is

	type etats is (etat1, etat2, etatErreur);

	signal etatActuel, etatSuivant: etats;

begin

	process (horloge)
	begin

		if (rising_edge(horloge)) then

			etatActuel <= etatSuivant;

		end if;

	end process;

	process (etatActuel, a)
	begin

		case etatActuel is

			when etat1 =>

				s <= '0';

				if a = '0' then

					etatSuivant <= etat2;

				elsif a = '1' then

					etatSuivant <= etat1;

				else

					etatSuivant <= etatErreur;

				end if;

			when etat2 =>

				s <= '1';

				if a = '0' then

					etatSuivant <= etat1;

				elsif a = '1' then

					etatSuivant <= etat2;

				else

					etatSuivant <= etatErreur;

				end if;

			when etatErreur =>

				s <= 'X';

				if a = '1' then

					etatSuivant <= etat1;

				end if;

		end case;

	end process;

end Behavioral;