----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/26/2020 01:05:42 PM
-- Design Name: 
-- Module Name: TB_TOP_DA_16_Bit - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_TOP_DA_16_Bit is
--  Port ( );
end TB_TOP_DA_16_Bit;

architecture Behavioral of TB_TOP_DA_16_Bit is

component Top_DA_16_bit is
    Port ( Input : in STD_LOGIC_VECTOR (15 DOWNTO 0); ---B
           Beban : in STD_LOGIC_VECTOR (15 downto 0); ---A
           Clk : in STD_LOGIC; ---Butuh 10x Clock untuk 1 operasi
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (4 downto 0);
           Output : out STD_LOGIC_VECTOR (31 downto 0); ---A*B
           Overflow : out STD_LOGIC);
end component;

signal Input : STD_LOGIC_VECTOR (15 downto 0) := (Others=>'0');
signal Beban : STD_LOGIC_VECTOR (15 downto 0) := (Others=>'0');
signal Clk : STD_LOGIC := '0';
Signal Reset : STD_LOGIC := '0';
signal Count : STD_LOGIC_VECTOR (4 downto 0) := (Others=>'0');
Signal Output : STD_LOGIC_VECTOR (31 downto 0) := (Others=>'0');
signal Overflow : STD_LOGIC := '0';

begin
uut: Top_DA_16_bit port map (
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
   
   
   Beban <= "0100001101000011"; --130
   Input <= "1101000011010000"; --2
   
   reset <='1';
   wait for 100ns;
   reset <= '0';
   wait for 100ns;
   
   for i in 0 to 18 loop
   CLK <= '1';
   wait for 1000 ns;
   CLK <= '0';
   Count <= std_logic_vector(to_unsigned(1+i, count'length));
   wait for 1000 ns;
   end loop;
   

   
   reset <= '1';
   
   clk <= '1';
   wait for 1000ns;
   clk <= '0';
   reset <= '0';
   count <= (others => '0');
   wait for 1000ns;
   
   
   




   wait;

   end process; -- stimulus


end Behavioral;
