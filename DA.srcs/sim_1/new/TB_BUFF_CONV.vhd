----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2020 02:13:46 PM
-- Design Name: 
-- Module Name: TB_BUFF_CONV - Behavioral
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

entity TB_BUFF_CONV is
--  Port ( );
end TB_BUFF_CONV;

architecture Behavioral of TB_BUFF_CONV is

COMPONENT Buff_Conv is
  Port ( 
    Luaran_Conv         : in std_logic_vector(7 downto 0);
    Clk                 : in STD_LOGIC;
    Buff_Conv_Active    : in STD_LOGIC;
    Mxpool_Active       : in STD_LOGIC;
    reset               : in STD_LOGIC;
    Mxpool_done         : out STD_LOGIC;
    Masukan_MaxPool_0   : out STD_LOGIC_VECTOR(7 downto 0);
    Masukan_MaxPool_1   : out STD_LOGIC_VECTOR(7 downto 0);
    Masukan_MaxPool_2   : out STD_LOGIC_VECTOR(7 downto 0);
    Masukan_MaxPool_3   : out STD_LOGIC_VECTOR(7 downto 0)
  );
end COMPONENT;

signal Luaran_Conv : std_logic_vector(7 downto 0);       
signal Clk : STD_LOGIC;                                  
signal Buff_Conv_Active : STD_LOGIC;                     
signal Mxpool_Active : STD_LOGIC;                        
signal reset         : STD_LOGIC := '0';                        
signal Mxpool_done : STD_LOGIC;                         
signal Masukan_MaxPool_0 : STD_LOGIC_VECTOR(7 downto 0);
signal Masukan_MaxPool_1 : STD_LOGIC_VECTOR(7 downto 0);
signal Masukan_MaxPool_2 : STD_LOGIC_VECTOR(7 downto 0);
signal Masukan_MaxPool_3 : STD_LOGIC_VECTOR(7 downto 0); 

begin

uut: Buff_Conv port map(
    Luaran_Conv        => Luaran_Conv      ,
    Clk                => Clk              ,
    Buff_Conv_Active   => Buff_Conv_Active ,
    Mxpool_Active      => Mxpool_Active    ,
    reset              => reset            ,
    Mxpool_done        => Mxpool_done      ,
    Masukan_MaxPool_0  => Masukan_MaxPool_0,
    Masukan_MaxPool_1  => Masukan_MaxPool_1,
    Masukan_MaxPool_2  => Masukan_MaxPool_2,
    Masukan_MaxPool_3  => Masukan_MaxPool_3);

stimulus: PROCESS 
  BEGIN
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  
  Buff_Conv_Active <= '1';

  for i in 0 to 3 loop
  Luaran_Conv <= STD_LOGIC_VECTOR(TO_UNSIGNED(I,8));
  
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
  
  Buff_Conv_Active <= '0';
  Mxpool_Active <= '1';
  
  for i in 4 to 4 loop
  
  CLK <= '1';
  wait for 1000 ns;
  CLK <= '0';
  wait for 1000 ns;
  end loop;
  
  wait;
end process; -- stimulus
    
    
    


end Behavioral;
