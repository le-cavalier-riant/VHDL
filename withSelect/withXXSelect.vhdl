library ieee;
use ieee.std_logic_1164.all;

entity withXXSelect is
	port (
		a, b, c, d : in std_logic;
		control : in std_logic_vector (1 downto 0);
		y : out std_logic
	);
end withXXSelect;

architecture Behavioral of withXXSelect is
	signal control_signal: std_logic_vector(1 downto 0);
begin
	control_signal <= control;
	with control_signal select
		y <= a when "00",
		b when "01",
		c when "10",
		d when "11",
		'X' when others;
end Behavioral;