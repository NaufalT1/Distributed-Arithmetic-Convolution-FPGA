----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/18/2020 12:30:04 PM
-- Design Name: 
-- Module Name: TB_Matrix_Input_Conv_1 - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Matrix_Input_Conv_1 is
--  Port ( );
end TB_Matrix_Input_Conv_1;

architecture Behavioral of TB_Matrix_Input_Conv_1 is

COMPONENT Matrix_Input_Conv_1 is
    Port ( Input : in STD_LOGIC_VECTOR (7 downto 0);
           Output_1 : out STD_LOGIC_VECTOR (7 downto 0);
           Output_2 : out STD_LOGIC_VECTOR (7 downto 0);
           Output_3 : out STD_LOGIC_VECTOR (7 downto 0);
           Output_4 : out STD_LOGIC_VECTOR (7 downto 0);
           Output_5 : out STD_LOGIC_VECTOR (7 downto 0);
           Output_6 : out STD_LOGIC_VECTOR (7 downto 0);
           Output_7 : out STD_LOGIC_VECTOR (7 downto 0);
           Output_8 : out STD_LOGIC_VECTOR (7 downto 0);
           Output_9 : out STD_LOGIC_VECTOR (7 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC);
end COMPONENT;

Signal Input : STD_LOGIC_VECTOR (7 downto 0);
Signal Output_1 : STD_LOGIC_VECTOR (7 downto 0);
Signal Output_2 : STD_LOGIC_VECTOR (7 downto 0);
Signal Output_3 : STD_LOGIC_VECTOR (7 downto 0);
Signal Output_4 : STD_LOGIC_VECTOR (7 downto 0);
Signal Output_5 : STD_LOGIC_VECTOR (7 downto 0);
Signal Output_6 : STD_LOGIC_VECTOR (7 downto 0);
Signal Output_7 : STD_LOGIC_VECTOR (7 downto 0);
Signal Output_8 : STD_LOGIC_VECTOR (7 downto 0);
Signal Output_9 : STD_LOGIC_VECTOR (7 downto 0);
Signal Clk : STD_LOGIC := '0';
Signal Reset : STD_LOGIC := '0';

begin

uut: Matrix_Input_Conv_1 port map (
        Input => Input,
        Output_1 => Output_1,
        Output_2 => Output_2,
        Output_3 => Output_3,
        Output_4 => Output_4,
        Output_5 => Output_5,
        Output_6 => Output_6,
        Output_7 => Output_7,
        Output_8 => Output_8,
        Output_9 => Output_9,
        CLK => CLK,
        Reset => Reset
     );
     
 stimulus: PROCESS 
  BEGIN
-----------------------------------------------------
---Provide stimulus in this section. (not shown here) 
-----------------------------------------------------

for I in 0 to 783 loop
   Input <= std_logic_vector(TO_UNSIGNED(I, 8)) + "00000001";
   CLK <= '1';
   wait for 100 ns;
   CLK <= '0';
   wait for 100 ns;
end loop;
for J in 0 to 10000 loop
   CLK <= '1';
   wait for 100 ns;
   CLK <= '0';
   wait for 100 ns;
end loop;
wait;
end process;



end Behavioral;
