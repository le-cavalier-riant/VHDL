library ieee;
use ieee.std_logic_1164.all;
entity ent is
	port (
		entree : in std_logic;
		sortie : out std_logic
	);
end ent;
architecture arc of ent is
begin
	process (entree)
	begin
		case entree is
			when '0' => sortie <= '1';
			when '1' => sortie <= '0';
			when others => sortie <= 'X';
		end case;
	end process;
end arc;