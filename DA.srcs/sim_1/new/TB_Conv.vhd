----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2020 03:09:58 PM
-- Design Name: 
-- Module Name: TB_Conv - Behavioral
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

entity TB_Conv is
--  Port ( );
end TB_Conv;

architecture Behavioral of TB_Conv is

COMPONENT Convolution is
    Port ( Input_0 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_1 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_2 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_3 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_4 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_5 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_6 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_7 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_8 : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_0   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_1   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_2   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_3   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_4   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_5   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_6   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_7   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_8   : in STD_LOGIC_VECTOR (7 downto 0);
           Bias      : in STD_LOGIC_VECTOR (15 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (3 downto 0);
--           Cek_1 : out STD_LOGIC_VECTOR (15 downto 0);
           Output : out STD_LOGIC_VECTOR (7 downto 0));
end COMPONENT;

signal Input_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_3 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_4 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_5 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_6 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_7 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_8 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Beban_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Beban_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Beban_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Beban_3 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Beban_4 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Beban_5 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Beban_6 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Beban_7 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Beban_8 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Bias    : STD_LOGIC_VECTOR (15 downto 0):= "0000000000000000";
signal Conv : STD_LOGIC := '1';
signal Clk : STD_LOGIC := '0';
Signal Reset : STD_LOGIC := '0';
signal Count : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal Cek_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
Signal Output : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

begin

uut: Convolution port map (
        Input_0 => Input_0,
        Input_1 => Input_1,
        Input_2 => Input_2,
        Input_3 => Input_3,
        Input_4 => Input_4,
        Input_5 => Input_5,
        Input_6 => Input_6,
        Input_7 => Input_7,
        Input_8 => Input_8,
        Beban_0 => Beban_0,
        Beban_1 => Beban_1,
        Beban_2 => Beban_2,
        Beban_3 => Beban_3,
        Beban_4 => Beban_4,
        Beban_5 => Beban_5,
        Beban_6 => Beban_6,
        Beban_7 => Beban_7,
        Beban_8 => Beban_8,
        Bias => Bias,
        CLK => CLK,
        Reset => Reset,
        Count => Count,
--        Cek_1 => Cek_1,
        Output => Output
     );

stimulus: PROCESS 
  BEGIN
-----------------------------------------------------
---Provide stimulus in this section. (not shown here) 
-----------------------------------------------------
   Beban_0 <= "00000001";
   Input_0 <= "00000000";
   Beban_1 <= "00000001";
   Input_1 <= "00000001";
   Beban_2 <= "00000001";
   Input_2 <= "00000010";
   Beban_3 <= "00000001";
   Input_3 <= "00000100";
   Beban_4 <= "00000001";
   Input_4 <= "00000101";
   Beban_5 <= "00000001";
   Input_5 <= "00000110";
   Beban_6 <= "00000001";
   Input_6 <= "00001000";
   Beban_7 <= "00000001";
   Input_7 <= "00001001";
   Beban_8 <= "00000001";
   Input_8 <= "00001010";
--   wait for 100 ns;
   
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
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "0111";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "1000";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "1001";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "1010";
   wait for 1000 ns;
   
   reset <= '1';
   
   clk <= '1';
   wait for 1000ns;
   clk <= '0';
   reset <= '0';
   count <= "0000";
   wait for 1000ns;
   
   Beban_0 <= "00000001";
   Beban_1 <= "00000001";
   Beban_2 <= "00000001";
   Beban_3 <= "00000001";
   Beban_4 <= "00000001";
   Beban_5 <= "00000001";
   Beban_6 <= "00000001";
   Beban_7 <= "00000001";
   Beban_8 <= "00000001";
   
   Input_0 <= "00000000";
   Input_1 <= "00000001";
   Input_2 <= "00000010";
   Input_3 <= "00000011";
   Input_4 <= "00000100";
   Input_5 <= "00000101";
   Input_6 <= "00000110";
   Input_7 <= "00000111";
   Input_8 <= "00001000";

   
   --extra clock
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
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "0111";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "1000";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "1001";
   wait for 1000 ns;
   
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= "1010";
   wait for 1000 ns;

   
   wait;

   end process; -- stimulus


end Behavioral;
