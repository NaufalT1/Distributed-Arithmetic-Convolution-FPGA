----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2020 02:05:38 PM
-- Design Name: 
-- Module Name: TB_MaxPool - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_MaxPool is
--  Port ( );
end TB_MaxPool;

architecture Behavioral of TB_MaxPool is

COMPONENT MaxPool is
    Port ( Input_0 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_1 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_2 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_3 : in STD_LOGIC_VECTOR (7 downto 0);
--           Clk : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (7 downto 0));
end COMPONENT;

signal Input_0 : STD_LOGIC_VECTOR (7 downto 0);
signal Input_1 : STD_LOGIC_VECTOR (7 downto 0);
signal Input_2 : STD_LOGIC_VECTOR (7 downto 0);
signal Input_3 : STD_LOGIC_VECTOR (7 downto 0);
--signal Clk : STD_LOGIC;
signal Output : STD_LOGIC_VECTOR (7 downto 0);

begin

uut: MaxPool port map (
        Input_0 => Input_0,
        Input_1 => Input_1,
        Input_2 => Input_2,
        Input_3 => Input_3,
--        Clk => Clk,
        Output => Output
     );

stimulus: PROCESS 
  BEGIN
  
  Input_0 <= "10111111";
  Input_1 <= "00111101";
  Input_2 <= "10011110";
  Input_3 <= "01111100";
  
--  CLK <= '1';
--  wait for 1000 ns;
--  CLK <= '0';
--  wait for 1000 ns;
  
--  CLK <= '1';
--  wait for 1000 ns;
--  CLK <= '0';
--  wait for 1000 ns;
  
  wait;
end process; -- stimulus


end Behavioral;
