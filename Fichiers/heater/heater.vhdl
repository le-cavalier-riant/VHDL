library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity heater is

	Port (

		a : in STD_LOGIC;
		b : in STD_LOGIC;
		c : in STD_LOGIC;
		d : in STD_LOGIC;

		SW1 : out STD_LOGIC;
		SW2 : out STD_LOGIC;
		SW3 : out STD_LOGIC;
		SW4 : out STD_LOGIC

	);

end heater;

architecture Behavioral of heater is
begin

	SW1 <= not a;
	SW2 <= (not d) or ((not a) and c);
	SW3 <= (not a) and b;
	SW4 <= not c;

end Behavioral;
