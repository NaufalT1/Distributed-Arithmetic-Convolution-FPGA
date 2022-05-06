----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2020 02:38:49 PM
-- Design Name: 
-- Module Name: TB_BUFF_MXPOOL - Behavioral
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

entity TB_BUFF_MXPOOL is
--  Port ( );
end TB_BUFF_MXPOOL;

architecture Behavioral of TB_BUFF_MXPOOL is

COMPONENT Buff_Mxpool is
  Port ( 
    Luaran_Maxpool_0    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_1    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_2    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_3    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_4    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_5    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_6    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_7    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_8    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_9    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_10   : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_11   : in std_logic_vector(7 downto 0);
    Clk                 : in STD_LOGIC;
    reset               : in STD_LOGIC;
    Buff_Mxpool_Active  : in STD_LOGIC;
    Buff_Luaran         : in STD_LOGIC;
    Mxpool_cmplt        : out STD_LOGIC;
    done                : out STD_LOGIC;
    Data_Luaran         : out STD_LOGIC_VECTOR(7 downto 0)
  );
end COMPONENT;

signal Luaran_Maxpool_0    : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_1    : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_2    : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_3    : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_4    : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_5    : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_6    : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_7    : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_8    : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_9    : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_10   : std_logic_vector(7 downto 0);
signal Luaran_Maxpool_11   : std_logic_vector(7 downto 0);
signal Clk                 : STD_LOGIC;
signal reset               : STD_LOGIC := '0';                   
signal Buff_Mxpool_Active  : STD_LOGIC := '0';                   
signal Buff_Luaran         : STD_LOGIC := '0';                   
signal Mxpool_cmplt        : STD_LOGIC;                  
signal done                : STD_LOGIC;                  
signal Data_Luaran         : STD_LOGIC_VECTOR(7 downto 0);

begin

uut : Buff_Mxpool Port map(
Luaran_Maxpool_0    => Luaran_Maxpool_0  ,
Luaran_Maxpool_1    => Luaran_Maxpool_1  ,
Luaran_Maxpool_2    => Luaran_Maxpool_2  ,
Luaran_Maxpool_3    => Luaran_Maxpool_3  ,
Luaran_Maxpool_4    => Luaran_Maxpool_4  ,
Luaran_Maxpool_5    => Luaran_Maxpool_5  ,
Luaran_Maxpool_6    => Luaran_Maxpool_6  ,
Luaran_Maxpool_7    => Luaran_Maxpool_7  ,
Luaran_Maxpool_8    => Luaran_Maxpool_8  ,
Luaran_Maxpool_9    => Luaran_Maxpool_9  ,
Luaran_Maxpool_10   => Luaran_Maxpool_10 ,
Luaran_Maxpool_11   => Luaran_Maxpool_11 ,
Clk                 => Clk               ,
reset               => reset             ,
Buff_Mxpool_Active  => Buff_Mxpool_Active,
Buff_Luaran         => Buff_Luaran       ,
Mxpool_cmplt        => Mxpool_cmplt      ,
done                => done              ,
Data_Luaran         => Data_Luaran       );

stimulus: PROCESS 
  BEGIN
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  
  Buff_Mxpool_Active <= '1';

  for i in 0 to 0 loop
  Luaran_Maxpool_0  <= STD_LOGIC_VECTOR(TO_UNSIGNED(I,8));
  Luaran_Maxpool_1  <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+1,8));
  Luaran_Maxpool_2  <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+2,8));
  Luaran_Maxpool_3  <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+3,8));
  Luaran_Maxpool_4  <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+4,8));
  Luaran_Maxpool_5  <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+5,8));
  Luaran_Maxpool_6  <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+6,8));
  Luaran_Maxpool_7  <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+7,8));
  Luaran_Maxpool_8  <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+8,8));
  Luaran_Maxpool_9  <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+9,8));
  Luaran_Maxpool_10 <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+10,8));
  Luaran_Maxpool_11 <= STD_LOGIC_VECTOR(TO_UNSIGNED(I+11,8));
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  end loop;
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  
--  Reset <= '1';
  
  
  Buff_Mxpool_Active <= '0';
  Buff_Luaran <= '1';
  
  for i in 0 to 24 loop
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  end loop;
  
  wait;
end process; -- stimulus

end Behavioral;
