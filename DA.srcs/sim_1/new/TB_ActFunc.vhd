----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2020 09:18:56 AM
-- Design Name: 
-- Module Name: TB_ActFunc - Behavioral
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

entity TB_ActFunc is
--  Port ( );
end TB_ActFunc;

architecture Behavioral of TB_ActFunc is

COMPONENT ActFunc is
    Port ( Input : in STD_LOGIC_VECTOR (15 downto 0);
           Output : out STD_LOGIC_VECTOR (7 downto 0);
           Clk : in STD_LOGIC);
end COMPONENT;

signal Input : STD_LOGIC_VECTOR (15 downto 0);
signal Output : STD_LOGIC_VECTOR (7 downto 0);
signal Clk : STD_LOGIC;

begin

uut: ActFunc port map (
        Input => Input,
        Clk => Clk,
        Output => Output
     );

stimulus: PROCESS 
  BEGIN
  
  Input <= "0000000011001110";
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  
  wait;
end process; -- stimulus
   

end Behavioral;
