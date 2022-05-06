----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2020 05:59:49 PM
-- Design Name: 
-- Module Name: TB_BUFF_MASUKAN - Behavioral
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

entity TB_BUFF_MASUKAN is
--  Port ( );
end TB_BUFF_MASUKAN;

architecture Behavioral of TB_BUFF_MASUKAN is

COMPONENT Buff_Masukan is
  Port (
    Data_in : in std_logic_vector(7 downto 0);
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Buff_masukan_Active : in STD_LOGIC;
    RX_DATA_VALID : in STD_LOGIC;
    Conv_Active : in STD_LOGIC;
    Input_cmplt : out std_logic := '0';
    Conv_cmplt : out std_logic := '0';
    Conv_done : out STD_LOGIC := '0';
    Reset_conv : out std_logic := '0';
    Count : Out std_logic_vector (3 downto 0) := (others => '0');
    Input_Conv_0 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_1 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_2 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_3 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_4 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_5 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_6 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_7 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_8 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0')
  );
END COMPONENT;

Signal Data_in : std_logic_vector(7 downto 0) := (others => '0');
Signal Clk : STD_LOGIC;
Signal Reset : STD_LOGIC := '0';
Signal Buff_masukan_Active : STD_LOGIC := '0';
Signal RX_DATA_VALID : STD_LOGIC := '1';
Signal Conv_Active : STD_LOGIC := '0';
Signal Input_cmplt : std_logic;
Signal Conv_cmplt : std_logic;
Signal Conv_done : STD_LOGIC;
Signal Reset_conv : std_logic;
Signal Count : std_logic_vector (3 downto 0);
Signal Input_Conv_0 : STD_LOGIC_VECTOR(7 downto 0);
Signal Input_Conv_1 : STD_LOGIC_VECTOR(7 downto 0);
Signal Input_Conv_2 : STD_LOGIC_VECTOR(7 downto 0);
Signal Input_Conv_3 : STD_LOGIC_VECTOR(7 downto 0);
Signal Input_Conv_4 : STD_LOGIC_VECTOR(7 downto 0);
Signal Input_Conv_5 : STD_LOGIC_VECTOR(7 downto 0);
Signal Input_Conv_6 : STD_LOGIC_VECTOR(7 downto 0);
Signal Input_Conv_7 : STD_LOGIC_VECTOR(7 downto 0);
Signal Input_Conv_8 : STD_LOGIC_VECTOR(7 downto 0);

begin

uut: Buff_masukan Port map(
    Data_in             =>  Data_in            ,
    Clk                 =>  Clk                ,
    Reset               =>  Reset              ,
    Buff_masukan_Active =>  Buff_masukan_Active,
    RX_DATA_VALID       =>  RX_DATA_VALID      ,
    Conv_Active         =>  Conv_Active        ,
    Input_cmplt         =>  Input_cmplt        ,
    Conv_cmplt          =>  Conv_cmplt         ,
    Conv_done           =>  Conv_done          ,
    Reset_conv          =>  Reset_conv         ,
    Count               =>  Count              ,
    Input_Conv_0        =>  Input_Conv_0       ,
    Input_Conv_1        =>  Input_Conv_1       ,
    Input_Conv_2        =>  Input_Conv_2       ,
    Input_Conv_3        =>  Input_Conv_3       ,
    Input_Conv_4        =>  Input_Conv_4       ,
    Input_Conv_5        =>  Input_Conv_5       ,
    Input_Conv_6        =>  Input_Conv_6       ,
    Input_Conv_7        =>  Input_Conv_7       ,
    Input_Conv_8        =>  Input_Conv_8       );

stimulus: PROCESS 
  BEGIN
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  
  Buff_Masukan_Active <= '1';

  for i in 0 to 15 loop
  Data_in <= STD_LOGIC_VECTOR(TO_UNSIGNED(I,8));
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  end loop;
  
--  Reset <= '1';
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  
  Buff_Masukan_Active <= '0';
  Conv_Active <= '1';
  
  for i in 9 to 58 loop
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  end loop;
  
  wait;
end process; -- stimulus


end Behavioral;
