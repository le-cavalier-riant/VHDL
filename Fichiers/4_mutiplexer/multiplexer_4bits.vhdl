library ieee;
use ieee.std_logic_1164.all;

entity multiplexer_4bits is

	port (
		a, b, c, d : in std_logic;
		control : in std_logic_vector (1 downto 0);
		y : out std_logic
	);

end multiplexer_4bits;

architecture Behavioral of multiplexer_4bits is

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