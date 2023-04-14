library ieee;
use ieee.std_logic_1164.all;

entity testBench is
end testBench;

architecture behavior of testBench is

	component module

		port (

			horloge: in std_logic

		);

	end component;

	signal horloge: std_logic := '0';

	constant periodeHorloge: time := 50 ns;

begin

	uut: module port map (

		horloge => horloge

	);

	processHorloge: process
	begin

		horloge <= '0';

		wait for periodeHorloge / 2;

		horloge <= '1';

		wait for periodeHorloge / 2;

		if now > 3000 ns then

			wait;

		end if;

	end process;

end;