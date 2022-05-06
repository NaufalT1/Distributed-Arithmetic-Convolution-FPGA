----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2020 09:53:34 AM
-- Design Name: 
-- Module Name: MaxPool - Behavioral
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

entity MaxPool is
    Port ( Input_0 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_1 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_2 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_3 : in STD_LOGIC_VECTOR (7 downto 0);
           Output : out STD_LOGIC_VECTOR (7 downto 0));
end MaxPool;

architecture Behavioral of MaxPool is

signal Masukan_0 : signed (7 downto 0) := "00000000";
signal Masukan_1 : signed (7 downto 0) := "00000000";
signal Masukan_2 : signed (7 downto 0) := "00000000";
signal Masukan_3 : signed (7 downto 0) := "00000000";

signal Comparator_1 : signed (7 downto 0) := "00000000";
signal Comparator_2 : signed (7 downto 0) := "00000000";
signal Comparator_Final : signed (7 downto 0) := "00000000";

begin

Masukan_0 <= signed(Input_0);
Masukan_1 <= signed(Input_1);
Masukan_2 <= signed(Input_2);
Masukan_3 <= signed(Input_3);

Comparator_1 <= Masukan_0 when (Masukan_0 > Masukan_1) else
                Masukan_1;
Comparator_2 <= Masukan_2 when (Masukan_2 > Masukan_3) else
                Masukan_3;
Comparator_Final <= Comparator_1 when (Comparator_1 > Comparator_2) else
                    Comparator_2;

Output <= std_logic_vector(Comparator_Final);

end Behavioral;
