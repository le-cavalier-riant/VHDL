library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_7segments is

	Port (

		V1 : in STD_LOGIC;
		V2 : in STD_LOGIC;
		V3 : in STD_LOGIC;
		V4 : in STD_LOGIC;

		a : out STD_LOGIC;
		b : out STD_LOGIC;
		c : out STD_LOGIC;
		d : out STD_LOGIC;
		e : out STD_LOGIC;
		f : out STD_LOGIC;
		g : out STD_LOGIC

	);

end BCD_7segments;

architecture Behavioral of BCD_7segments is
begin

	condition: process (V1, V2, V3, V4)

		variable vecteur : std_logic_vector (3 downto 0);

	begin

		vecteur := V1 & V2 & V3 & V4;

		if vecteur = "0000" then

			a <= '1';
			b <= '1';
			c <= '1';
			d <= '1';
			e <= '1';
			f <= '1';
			g <= '0';

		elsif vecteur = "0001" then

			a <= '0';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';

		elsif vecteur = "0010" then

			a <= '1';
			b <= '1';
			c <= '0';
			d <= '1';
			e <= '1';
			f <= '0';
			g <= '1';

		elsif vecteur = "0011" then

			a <= '1';
			b <= '1';
			c <= '1';
			d <= '1';
			e <= '0';
			f <= '0';
			g <= '1';

		elsif vecteur = "0100" then

			a <= '0';
			b <= '0';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '1';
			g <= '1';

		elsif vecteur = "0101" then

			a <= '1';
			b <= '0';
			c <= '1';
			d <= '1';
			e <= '0';
			f <= '1';
			g <= '1';

		elsif vecteur = "0110" then

			a <= '1';
			b <= '0';
			c <= '1';
			d <= '1';
			e <= '1';
			f <= '1';
			g <= '1';

		elsif vecteur = "0111" then

			a <= '1';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';

		elsif vecteur = "1000" then

			a <= '1';
			b <= '1';
			c <= '1';
			d <= '1';
			e <= '1';
			f <= '1';
			g <= '1';

		elsif vecteur = "1001" then

			a <= '1';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '1';
			g <= '1';

		end if;

	end process condition;

end Behavioral;