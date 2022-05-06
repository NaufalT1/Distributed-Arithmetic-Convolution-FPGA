----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2021 10:35:27 PM
-- Design Name: 
-- Module Name: BUFF_BOBOT_CONV_128_Bit - Behavioral
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

entity BUFF_BOBOT_CONV_128_Bit is
  generic (n : integer := 127);
  Port ( 
    Data_in : in std_logic_vector(n downto 0);
    RX_DATA_VALID : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Buff_Bobot_Active : in STD_LOGIC;
    Bobot_cmplt : out STD_LOGIC := '0';
    Bobot_Conv_0 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_1 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_2 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_3 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_4 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_5 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_6 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_7 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_8 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0')
  );
end BUFF_BOBOT_CONV_128_Bit;

architecture Behavioral of BUFF_BOBOT_CONV_128_Bit is
--Signal UART ke bobot--
type t_Bobot_matrix is array (0 to 8) of std_logic_vector(n downto 0);
signal Bobot : t_Bobot_matrix := (others => (others => '0'));

begin
Bobot_ke_memori : process(Clk, reset)
variable j : integer range 0 to 9 := 0;
begin
if reset = '1' then j := 0; Bobot_cmplt <= '0'; Bobot <= (others => (others => '0'));
else
if(rising_edge(Clk) AND Buff_bobot_Active = '1' AND RX_DATA_VALID = '1') then
        if(j<9) then
            Bobot(j) <= DATA_IN;
            j := j+1;
            if(j=9) then 
                Bobot_cmplt <= '1';
            else end if;
         else end if;
    else end if;
end if;
end process;

Bobot_Conv_0 <= Bobot(0);
Bobot_Conv_1 <= Bobot(1);
Bobot_Conv_2 <= Bobot(2);
Bobot_Conv_3 <= Bobot(3);
Bobot_Conv_4 <= Bobot(4);
Bobot_Conv_5 <= Bobot(5);
Bobot_Conv_6 <= Bobot(6);
Bobot_Conv_7 <= Bobot(7);
Bobot_Conv_8 <= Bobot(8);


end Behavioral;
