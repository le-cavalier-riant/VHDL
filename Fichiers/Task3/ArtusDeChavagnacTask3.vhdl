library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArtusDeChavagnacTask3 is

	port (

		a, b: in std_logic; -- buttons
		Clock: in std_logic;

		policeLights, siren: out std_logic

	);

end ArtusDeChavagnacTask3;

architecture Behavioral of ArtusDeChavagnacTask3 is

	type state_type is (one, zero);
	signal previous_a, sirenState, policeLightsState: state_type;

begin

	process (a, b, Clock, previous_a, sirenState, policeLightsState) is
	begin

		if (rising_edge(Clock)) then -- resest when b pressed

			if b = '1' then

				policeLights <= '0';
				policeLightsState <= zero;

				siren <= '0';
				sirenState <= zero;

			elsif a = '1' then

				if previous_a = zero then -- sort of rising edge of a but not at the exact time

					previous_a <= one;

					case policeLightsState is

						when one =>

							case sirenState is

								when zero =>

									policeLights <= '1';
									policeLightsState <= one;

									siren <= '1';
									sirenState <= one;

								when one =>

									policeLights <= '1';
									policeLightsState <= one;

									siren <= '0';
									sirenState <= zero;

							end case;

						when zero =>

							policeLights <= '1';
							policeLightsState <= one;

							siren <= '0';
							sirenState <= zero;

						when others => -- only the first time (when X)

							policeLights <= '1';
							policeLightsState <= one;

							siren <= '0';
							sirenState <= zero;

					end case;

				else

					previous_a <= one;

				end if;

			else

				previous_a <= zero;

			end if;

		end if;

	end process;

end Behavioral;
