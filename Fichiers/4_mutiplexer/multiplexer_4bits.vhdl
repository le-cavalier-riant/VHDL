library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer_4bits is

	Port (

	a,b,c,d : in STD_LOGIC;
	control : in STD_LOGIC_VECTOR (1 downto 0);

	y : out STD_LOGIC

);

end multiplexer_4bits;

architecture Behavioral of multiplexer_4bits is

signal control_signal: STD_LOGIC_VECTOR(1 DOWNTO 0);

begin

	control_signal <= control;

	with control_signal select

		y <= a when "00",

		b when "01",

		c when "10",

		d when "11",

		'X' when others;

end Behavioral;