library ieee;
use ieee.std_logic_1164.all;

entity Artus_de_Chavagnac_task_1 is

	port (
		G0 : in std_logic;
		G1 : in std_logic;
		G2 : in std_logic;
		B0 : out std_logic;
		B1 : out std_logic;
		B2 : out std_logic
	);

end Artus_de_Chavagnac_task_1;

architecture Behavioral of Artus_de_Chavagnac_task_1 is
begin

	condition: process (G0, G1, G2)
		variable vecteur : std_logic_vector (2 downto 0);
	begin
		vecteur := G0 & G1 & G2;
		if vecteur = "000" then
			B0 <= '0';
			B1 <= '0';
			B2 <= '0';
		elsif vecteur = "001" then
			B0 <= '0';
			B1 <= '0';
			B2 <= '1';
		elsif vecteur = "011" then
			B0 <= '0';
			B1 <= '1';
			B2 <= '0';
		elsif vecteur = "010" then
			B0 <= '0';
			B1 <= '1';
			B2 <= '1';
		elsif vecteur = "110" then
			B0 <= '1';
			B1 <= '0';
			B2 <= '0';
		elsif vecteur = "111" then
			B0 <= '1';
			B1 <= '0';
			B2 <= '1';
		elsif vecteur = "101" then
			B0 <= '1';
			B1 <= '1';
			B2 <= '0';
		elsif vecteur = "100" then
			B0 <= '1';
			B1 <= '1';
			B2 <= '1';
		else
			B0 <= 'X';
			B1 <= 'X';
			B2 <= 'X';
		end if;
	end process condition;

end Behavioral;