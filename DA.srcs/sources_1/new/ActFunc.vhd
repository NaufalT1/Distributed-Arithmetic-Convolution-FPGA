----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2020 09:11:56 AM
-- Design Name: 
-- Module Name: ActFunc - Behavioral
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

entity ActFunc is
    Port ( Input : in STD_LOGIC_VECTOR (15 downto 0);
           Output : out STD_LOGIC_VECTOR (7 downto 0));
end ActFunc;

architecture Behavioral of ActFunc is

signal Cek : STD_LOGIC_VECTOR (1 downto 0) := "00";

begin

Cek(1) <= Input(15);
Cek(0) <= Input(14) OR Input(13) OR Input(12) OR Input(11) OR Input(10) OR Input(9) OR Input(8) OR Input(7);

Output(6 downto 0) <= "0000000" when Cek = "11" else
                      "0000000" when Cek = "10" else
                      "1111111" when Cek = "01" else
                      Input(6 downto 0) when Cek = "00";  
Output(7) <= '0';


end Behavioral;
