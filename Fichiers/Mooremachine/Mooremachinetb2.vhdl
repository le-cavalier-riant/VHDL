library ieee;
use ieee.std_logic_1164.all;
entity Mooremachinetb2 is
end Mooremachinetb2;
architecture behavior of Mooremachinetb2 is
 -- Component Declaration for the Unit Under Test (UUT)
 component Mooremachine
 port (
 clk : in std_logic;
 clr : in std_logic;
 a : in std_logic;
 b : in std_logic;
 y1 : out std_logic;
 y2 : out std_logic
 );
 end component;

 --Inputs
 signal clk : std_logic := '0';
 signal clr : std_logic := '0';
 signal a : std_logic := '0';
 signal b : std_logic := '0';
--Outputs
 signal y1 : std_logic;
 signal y2 : std_logic;
 -- Clock period definitions
 constant clk_period : time := 50 ns;
9
begin
-- Instantiate the Unit Under Test (UUT)
 uut: Mooremachine port map (
 clk => clk,
 clr => clr,
 a => a,
 b => b,
 y1 => y1,
 y2 => y2
 );
 -- Clock process definitions
 clk_process :process
 begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
 end process;
-- process for reset
reset_proc: process
begin -- reset after the lock is opened
wait for clk_period/2;
clr <= '1';
wait for clk_period/2;
clr <= '0';
wait;
end process;
proc: process-- process for the input combinations
begin
a <= '0';
b <= '0';
wait for 3*clk_period;
a <= '0';
b <= '1';
wait for 3*clk_period;
-- lock remains locked
wait;
end process;
end;
