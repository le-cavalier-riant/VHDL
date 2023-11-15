library ieee;
use ieee.std_logic_1164.all;

entity BCD_7segments is

	port (
		V1 : in std_logic;
		V2 : in std_logic;
		V3 : in std_logic;
		V4 : in std_logic;
		a : out std_logic;
		b : out std_logic;
		c : out std_logic;
		d : out std_logic;
		e : out std_logic;
		f : out std_logic;
		g : out std_logic
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