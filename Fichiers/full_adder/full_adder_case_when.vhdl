library ieee;
use ieee.std_logic_1164.all;

entity full_adder_case_when is

	port (

		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;

		s : out std_logic;
		cout : out std_logic

	);

end full_adder_case_when;

architecture Behavioral of full_adder_case_when is
begin

	process (a, b, cin)

	variable vecteur_entrees : std_logic_vector (2 downto 0);

	begin

		vecteur_entrees := a & b & cin;

		case vecteur_entrees is

			when "000" =>

				s <= '0';
				cout <='0';

			when "001" =>

				s <= '1';
				cout <='0';

			when "010" =>

				s <= '1';
				cout <='0';

			when "011" =>

				s <= '0';
				cout <='1';

			when "100" =>

				s <= '1';
				cout <='0';

			when "101" =>

				s <= '0';
				cout <='1';

			when "110" =>

				s <= '0';
				cout <='1';

			when "111" =>

				s <= '1';
				cout <='1';

			when others =>

				s <= '0';
				cout <= '1';

		end case;

	end process;

end Behavioral;