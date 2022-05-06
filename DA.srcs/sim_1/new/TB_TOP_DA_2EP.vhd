----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2020 08:45:29 AM
-- Design Name: 
-- Module Name: TB - Behavioral
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

entity TB_TOP_DA_2EP is
--  Port ( );
end TB_TOP_DA_2EP;

architecture Behavioral of TB_TOP_DA_2EP is

component Top_DA_2EP is
    Port ( Input : in STD_LOGIC_VECTOR (7 DOWNTO 0); ---B
           Beban : in STD_LOGIC_VECTOR (7 downto 0); ---A
           Clk : in STD_LOGIC; ---Butuh 10x Clock untuk 1 operasi
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (15 downto 0); ---A*B
           Overflow : out STD_LOGIC);
end component;

signal Input : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Beban : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Clk : STD_LOGIC := '0';
Signal Reset : STD_LOGIC := '0';
signal Count : STD_LOGIC_VECTOR (3 downto 0) := "0000";
Signal Output : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
signal Overflow : STD_LOGIC := '0';

begin

uut: Top_DA_2EP port map (
        Input => Input,
        Beban => Beban,
        CLK => CLK,
        Reset => Reset,
        Count => Count,
        Output => Output,
        Overflow => Overflow
     );

stimulus: PROCESS 
  BEGIN
-----------------------------------------------------
---Provide stimulus in this section. (not shown here) 
-----------------------------------------------------
   
   
--   wait for 100ns;
--   CLK <= '1';
--   wait for 100 ns;
--   CLK <= '0';
--   wait for 100 ns;
   
   
   Beban <= "01000011"; --130
   Input <= "11010000"; --2
   

   reset <='1';
   wait for 100ns;
   reset <= '0';
   wait for 100ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "0001";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "0010";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "0011";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "0100";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "0101";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "0110";
   wait for 1000 ns;
   
--   CLK <= '1';
--   wait for 1000 ns;
--   CLK <= '0';
--   Count <= "0111";
--   wait for 1000 ns;
   
--   CLK <= '1';
--   wait for 1000 ns;
--   CLK <= '0';
--   Count <= "1000";
--   wait for 1000 ns;
   
--   CLK <= '1';
--   wait for 1000 ns;
--   CLK <= '0';
--   Count <= "1001";
--   wait for 1000 ns;
   
--   CLK <= '1';
--   wait for 1000 ns;
--   CLK <= '0';
--   Count <= "1010";
--   wait for 1000 ns;
   
   reset <= '1';
   
   clk <= '1';
   wait for 1000ns;
   clk <= '0';
   reset <= '0';
   count <= "0000";
   wait for 1000ns;
   
   
   




   wait;

   end process; -- stimulus

end Behavioral;


