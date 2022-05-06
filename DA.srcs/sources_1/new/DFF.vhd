----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2020 04:24:59 PM
-- Design Name: 
-- Module Name: DFF - Behavioral
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

entity DFF is
    Port ( D : in STD_LOGIC_VECTOR (0 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (0 downto 0));
end DFF;

architecture Behavioral of DFF is

signal Not_Clk : STD_LOGIC := '0';

begin

Not_clk <= NOT(Clk);

process(Clk,Reset)
variable buff : std_logic_VECTOR (0 downto 0) := "0";
begin
if(reset = '1') then buff := "0";
else
    if(rising_edge(clk))then
        buff := D;
    else
    end if;
end if;
Q <= buff;
end process;


end Behavioral;
