----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2020 04:29:36 PM
-- Design Name: 
-- Module Name: TB_DFF - Behavioral
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

entity TB_DFF is
--  Port ( );
end TB_DFF;

architecture Behavioral of TB_DFF is

COMPONENT DFF is
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC);
END COMPONENT;

signal D : STD_LOGIC := '0';
signal Clk : STD_LOGIC := '0';
signal Reset : STD_LOGIC := '0';
signal Q : STD_LOGIC := '0';

begin

uut: DFF Port map(
    D => D,
    Clk => Clk,
    Reset => Reset,
    Q => Q);
    
    
stimulus : process
begin
reset <= '1';
Clk <= '1';
wait for 100ns;
D <= '1';
wait for 100 ns;
D <= '0';
reset <= '0';
Clk <='0';
wait for 100ns;

D <= '1';
Clk <= '1';
wait for 100ns;
D <= '0';
wait for 100ns;
Clk <='0';
wait;
end process;


end Behavioral;
