library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task_1 is

	Port (

		B0 : in STD_LOGIC;
		B1 : in STD_LOGIC;
		B2 : in STD_LOGIC;

		G0 : out STD_LOGIC;
		G1 : out STD_LOGIC;
		G2 : out STD_LOGIC

		);

end task_1;

architecture Behavioral of task_1 is
begin

	condition: process (B0, B1, B2)

		variable vecteur : std_logic_vector (2 downto 0);

	begin

		vecteur := B0 & B1 & B2;

		if vecteur = "000" then

			G0 <= '0';
			G1 <= '0';
			G2 <= '0';

		elsif vecteur = "001" then

			G0 <= '0';
			G1 <= '0';
			G2 <= '1';

		elsif vecteur = "010" then

			G0 <= '0';
			G1 <= '1';
			G2 <= '1';

		elsif vecteur = "011" then

			G0 <= '0';
			G1 <= '1';
			G2 <= '0';

		elsif vecteur = "100" then

			G0 <= '1';
			G1 <= '1';
			G2 <= '0';

		elsif vecteur = "101" then

			G0 <= '1';
			G1 <= '1';
			G2 <= '1';

		elsif vecteur = "110" then

			G0 <= '1';
			G1 <= '0';
			G2 <= '1';

		elsif vecteur = "111" then

			G0 <= '1';
			G1 <= '0';
			G2 <= '0';

		else

			G0 <= 'X';
			G1 <= 'X';
			G2 <= 'X';

		end if;

	end process condition;

end Behavioral;