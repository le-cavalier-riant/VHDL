library ieee;
use ieee.std_logic_1164.all;

entity Artus_de_Chavagnac_task_1_tb is
end Artus_de_Chavagnac_task_1_tb;

architecture behavior of Artus_de_Chavagnac_task_1_tb is

	component Artus_de_Chavagnac_task_1
		port (
			G0 : in std_logic;
			G1 : in std_logic;
			G2 : in std_logic;
			B0 : out std_logic;
			B1 : out std_logic;
			B2 : out std_logic
		);
	end component;
	signal G0 : std_logic := '0';
	signal G1 : std_logic := '0';
	signal G2 : std_logic := '0';
	signal B0 : std_logic;
	signal B1 : std_logic;
	signal B2 : std_logic;

begin

	uut: Artus_de_Chavagnac_task_1 port map (
		B0 => B0,
		B1 => B1,
		B2 => B2,
		G0 => G0,
		G1 => G1,
		G2 => G2
	);
	stim_proc: process
	begin
		G0 <= '0';
		G1 <= '0';
		G2 <= '0';
		wait for 10 ns;
		G0 <= '0';
		G1 <= '0';
		G2 <= '1';
		wait for 10 ns;
		G0 <= '0';
		G1 <= '1';
		G2 <= '1';
		wait for 10 ns;
		G0 <= '0';
		G1 <= '1';
		G2 <= '0';
		wait for 10 ns;
		G0 <= '1';
		G1 <= '1';
		G2 <= '0';
		wait for 10 ns;
		G0 <= '1';
		G1 <= '1';
		G2 <= '1';
		wait for 10 ns;
		G0 <= '1';
		G1 <= '0';
		G2 <= '1';
		wait for 10 ns;
		G0 <= '1';
		G1 <= '0';
		G2 <= '0';
		wait for 10 ns;
		wait;
	end process;

end;