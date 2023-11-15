library ieee;
use ieee.std_logic_1164.all;

entity heater is

	port (

		a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		d : in std_logic;

		SW1 : out std_logic;
		SW2 : out std_logic;
		SW3 : out std_logic;
		SW4 : out std_logic

	);

end heater;

architecture Behavioral of heater is
begin

	SW1 <= not a;
	SW2 <= (not d) or ((not a) and c);
	SW3 <= (not a) and b;
	SW4 <= not c;

end Behavioral;
