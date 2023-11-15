library ieee;
use ieee.std_logic_1164.all;

entity task_2 is

	port (

		sens_1 : in std_logic;
		sens_2 : in std_logic;
		sens_3 : in std_logic;
		sens_4 : in std_logic;

		turn : out std_logic;
		rotate : out std_logic

		);

end task_2;

architecture Behavioral of task_2 is
begin

	condition: process (sens_1, sens_2, sens_3, sens_4)
	variable vecteur_1 : std_logic_vector (1 downto 0);
	variable vecteur_2 : std_logic_vector (1 downto 0);
	begin

		vecteur_1 := sens_1&sens_2;
		vecteur_2 := sens_3&sens_4;

		if vecteur_1 = "00" then

			turn <= '1';

		elsif vecteur_1 = "11" then

			turn <= 'X';

		else

			turn <= '0';

		end if;

		if vecteur_2 = "01" then

			rotate <= '1';

		elsif vecteur_2 = "10" then

			rotate <= '0';

		else

			rotate <= 'X';

		end if;

	end process condition;

end Behavioral;