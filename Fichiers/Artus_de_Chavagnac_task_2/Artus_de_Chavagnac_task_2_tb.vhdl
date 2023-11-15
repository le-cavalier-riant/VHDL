library ieee;
use ieee.std_logic_1164.all;
entity Artus_de_Chavagnac_task_2_tb is
end Artus_de_Chavagnac_task_2_tb;
architecture behavior of Artus_de_Chavagnac_task_2_tb is
component Artus_de_Chavagnac_task_2
port (
sens_1 : in std_logic;
sens_2 : in std_logic;
sens_3 : in std_logic;
sens_4 : in std_logic;
stop : in std_logic;
turn : out std_logic;
rotate : out std_logic
);
end component;
signal sens_1 : std_logic := '0';
signal sens_2 : std_logic := '0';
signal sens_3 : std_logic := '0';
signal sens_4 : std_logic := '0';
signal stop : std_logic := '0';
signal turn : std_logic;
signal rotate : std_logic;
begin
uut: Artus_de_Chavagnac_task_2 port map (
sens_1 => sens_1,
sens_2 => sens_2,
sens_3 => sens_3,
sens_4 => sens_4,
stop => stop,
turn => turn,
rotate => rotate
);
stim_proc: process
begin
-- part 1: sensors 1 & 2 (stop = 0)
stop <= '0';
sens_1 <= '0';
sens_2 <= '0';
wait for 10 ns;
stop <= '0';
sens_1 <= '0';
sens_2 <= '1';
wait for 10 ns;
stop <= '0';
sens_1 <= '1';
sens_2 <= '0';
wait for 10 ns;
stop <= '0';
sens_1 <= '1';
sens_2 <= '1';
wait for 10 ns;
-- part 2: sensors 3 & 4 (stop = 0), we wait longer than usual to see this separation on the graphs
wait for 20 ns;
stop <= '0';
sens_3 <= '0';
sens_4 <= '0';
wait for 10 ns;
stop <= '0';
sens_3 <= '0';
sens_4 <= '1';
wait for 10 ns;
stop <= '0';
sens_3 <= '1';
sens_4 <= '0';
wait for 10 ns;
stop <= '0';
sens_3 <= '1';
sens_4 <= '1';
wait for 10 ns;
-- part 1: sensors 1 & 2 (stop = 1), we wait longer than usual to see this
separation on the graph
wait for 40 ns;
stop <= '1';
sens_1 <= '0';
sens_2 <= '0';
wait for 10 ns;
stop <= '1';
sens_1 <= '0';
sens_2 <= '1';
wait for 10 ns;
stop <= '1';
sens_1 <= '1';
sens_2 <= '0';
wait for 10 ns;
stop <= '1';
sens_1 <= '1';
sens_2 <= '1';
wait for 10 ns;
-- part 2: sensors 3 & 4 (stop = 1), we wait longer than usual to see this
separation on the graphs
wait for 20 ns;
stop <= '1';
sens_3 <= '0';
sens_4 <= '0';
wait for 10 ns;
stop <= '1';
sens_3 <= '0';
sens_4 <= '1';
wait for 10 ns;
stop <= '1';
sens_3 <= '1';
sens_4 <= '0';
wait for 10 ns;
stop <= '1';
sens_3 <= '1';
sens_4 <= '1';
wait for 10 ns;
wait;
end process;
end;