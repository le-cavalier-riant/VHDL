library ieee;
use ieee.std_logic_1164.all;

entity moore is

	port (

		clk : in std_logic;
		clr : in std_logic;

		a : in std_logic_vector (1 downto 0);

		y : out std_logic_vector (1 downto 0)

	);

end moore;

architecture Behavioral of moore is

	type state_type is (s1, s2, s3, s4);
	signal current_s, next_s: state_type;

begin

	process (clk)
	begin

		if (clr = '1') then

			current_s <= s1;

		elsif (rising_edge(clk)) then

			current_s <= next_s;

		end if;

	end process;

	process (current_s, a)
	begin

		case current_s is

			when s1 =>

				y <= "00";

				if (a = "01" or a = "11") then

					next_s <= s4;

				elsif (a = "10") then

					next_s <= s2;

				else

					next_s <= s1;

				end if;

			when s2 =>

				y <= "00";

				if (a = "10") then

					next_s <= s2;

				elsif (a = "11") then

					next_s <= s3;

				elsif (a = "01") then

					next_s <= s4;

				else

					next_s <= s2;

				end if;

			when s3 =>

				y <= "10";
				next_s <= s3;

			when s4 =>

				y <= "01";
				next_s <= s4;

		end case;

	end process;

end Behavioral;
