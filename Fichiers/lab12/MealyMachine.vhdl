library ieee;
use ieee.std_logic_1164.all;

entity MealyMachine is

	port (

		a, b, clock, clear: in std_logic;

		c : out std_logic

	);

end MealyMachine;

architecture behavioral of MealyMachine is

	type state_type is (one, zero);
	signal carry, previousCarry : state_type;

begin

	process (a, b, clock, clear)

		variable inputsVector : std_logic_vector (1 downto 0);

	begin

		inputsVector := a & b;

		if rising_edge(clock) then

			if clear = '1' then

				c <= '0';
				carry <= zero;
				previousCarry <= zero;

			else

				if carry = one then

					case previousCarry is

						when zero =>

							case inputsVector is

								when "00" =>

									c <= '1';
									carry <= zero;

								when "01" =>

									c <= '0';
									carry <= one;

								when "10" =>

									c <= '0';
									carry <= one;

								when others => -- "11" & the undefined values

									c <= '1';
									carry <= one;

							end case;

							previousCarry <= carry;

						when others => -- same state so no change

							previousCarry <= one;

					end case;

				else -- zero & the undefined values

					case previousCarry is

						when one =>

							case inputsVector is

								when "00" =>

									c <= '0';
									carry <= zero;

								when "01" =>

									c <= '1';
									carry <= zero;

								when "10" =>

									c <= '1';
									carry <= zero;

								when others => -- "11" & the undefined values

									c <= '0';
									carry <= one;

							end case;

							previousCarry <= carry;

						when others => -- same state so no change

							previousCarry <= one;

					end case;

				end if;

			end if;

		end if;

	end process;

end behavioral;