----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2020 05:23:34 PM
-- Design Name: 
-- Module Name: TB_BUFF_BOBOT - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_BUFF_BOBOT is
--  Port ( );
end TB_BUFF_BOBOT;

architecture Behavioral of TB_BUFF_BOBOT is

component Buff_Bobot is
  Port (
    Data_in : in std_logic_vector(7 downto 0) := (others => '0');
    Clk : in STD_LOGIC ;
    reset : in STD_LOGIC;
    Buff_Bobot_Active : in STD_LOGIC := '0';
    Bobot_cmpltt : out STD_LOGIC := '0';
    Bobot_Conv_0 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Bobot_Conv_1 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Bobot_Conv_2 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Bobot_Conv_3 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Bobot_Conv_4 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Bobot_Conv_5 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Bobot_Conv_6 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Bobot_Conv_7 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Bobot_Conv_8 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0')
  );
end COMPONENT;


Signal Data_in : std_logic_vector(7 downto 0) := (others => '0');
Signal Clk : STD_LOGIC;
Signal Reset : STD_LOGIC := '0';
Signal Buff_Bobot_Active : STD_LOGIC := '0';
Signal Bobot_cmpltt : STD_LOGIC;
Signal Bobot_Conv_0 : STD_LOGIC_VECTOR(7 downto 0);
Signal Bobot_Conv_1 : STD_LOGIC_VECTOR(7 downto 0);
Signal Bobot_Conv_2 : STD_LOGIC_VECTOR(7 downto 0);
Signal Bobot_Conv_3 : STD_LOGIC_VECTOR(7 downto 0);
Signal Bobot_Conv_4 : STD_LOGIC_VECTOR(7 downto 0);
Signal Bobot_Conv_5 : STD_LOGIC_VECTOR(7 downto 0);
Signal Bobot_Conv_6 : STD_LOGIC_VECTOR(7 downto 0);
Signal Bobot_Conv_7 : STD_LOGIC_VECTOR(7 downto 0);
Signal Bobot_Conv_8 : STD_LOGIC_VECTOR(7 downto 0);


begin

uut: Buff_Bobot Port map(
    Data_in => Data_in,
    Clk => Clk,
    Reset => Reset,
    Buff_Bobot_Active => Buff_Bobot_Active,
    Bobot_cmpltt => Bobot_cmpltt,
    Bobot_Conv_0 => Bobot_Conv_0,
    Bobot_Conv_1 => Bobot_Conv_1,
    Bobot_Conv_2 => Bobot_Conv_2,
    Bobot_Conv_3 => Bobot_Conv_3,
    Bobot_Conv_4 => Bobot_Conv_4,
    Bobot_Conv_5 => Bobot_Conv_5,
    Bobot_Conv_6 => Bobot_Conv_6,
    Bobot_Conv_7 => Bobot_Conv_7,
    Bobot_Conv_8 => Bobot_Conv_8
    );

stimulus: PROCESS 
  BEGIN
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  
  Buff_Bobot_Active <= '1';

  for i in 0 to 8 loop
  Data_in <= STD_LOGIC_VECTOR(TO_UNSIGNED(I,8));
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  end loop;
  
  Reset <= '1';
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  
  reset <= '0';
  
  for i in 9 to 17 loop
  Data_in <= STD_LOGIC_VECTOR(TO_UNSIGNED(I,8));
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  end loop;
  
  wait;
end process; -- stimulus

end Behavioral;
