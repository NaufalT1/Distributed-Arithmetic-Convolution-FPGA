----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2020 11:32:36 AM
-- Design Name: 
-- Module Name: TB_BUFF_MASUKAN_CONV - Behavioral
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

entity TB_BUFF_MASUKAN_CONV is
--  Port ( );
end TB_BUFF_MASUKAN_CONV;

architecture Behavioral of TB_BUFF_MASUKAN_CONV is
COMPONENT BUFF_MASUKAN_CONV is
  generic (n : integer := 7);
  Port (
    Data_in : in std_logic_vector(n downto 0);
    RX_DATA_VALID : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Buff_masukan_Active : in STD_LOGIC;
    Conv_Active : in STD_LOGIC;
    Input_cmplt : out std_logic := '0';
    Conv_cmplt : out std_logic := '0';
    Reset_conv : out std_logic := '0';
    Count : Out std_logic_vector (3 downto 0) := (others => '0');
    Input_Conv_0 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_1 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_2 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_3 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_4 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_5 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_6 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_7 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_8 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0')
  );
end COMPONENT;

Signal Data_in : std_logic_vector(7 downto 0) := (others => '0');
Signal Clk : STD_LOGIC;
Signal Reset : STD_LOGIC := '0';
Signal Buff_masukan_Active : STD_LOGIC := '0';
Signal RX_DATA_VALID : STD_LOGIC := '1';
Signal Conv_Active : STD_LOGIC := '0';
Signal Input_cmplt : std_logic;
Signal Conv_cmplt : std_logic;
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
uut: Buff_masukan_conv Port map(
    Data_in             =>  Data_in            ,
    Clk                 =>  Clk                ,
    Reset               =>  Reset              ,
    Buff_masukan_Active =>  Buff_masukan_Active,
    RX_DATA_VALID       =>  RX_DATA_VALID      ,
    Conv_Active         =>  Conv_Active        ,
    Input_cmplt         =>  Input_cmplt        ,
    Conv_cmplt          =>  Conv_cmplt         ,
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

  for i in 0 to 8 loop
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
  
  for i in 9 to 21 loop
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  end loop;
  
  wait;
end process; -- stimulus

end Behavioral;
