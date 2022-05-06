----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2020 12:05:23 PM
-- Design Name: 
-- Module Name: Top_module - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP_DA_16_Bit is
    Port ( Input : in STD_LOGIC_VECTOR (15 DOWNTO 0); ---B
           Beban : in STD_LOGIC_VECTOR (15 downto 0); ---A
           Clk : in STD_LOGIC; ---Butuh 18x Clock untuk 1 operasi
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (6 downto 0);
           Output : out STD_LOGIC_VECTOR (31 downto 0); ---A*B
           Overflow : out STD_LOGIC);
end TOP_DA_16_Bit;


architecture Behavioral of TOP_DA_16_Bit is

COMPONENT DA_V2_16_Bit is
    Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (15 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;

--Signal untuk DA
signal Input_DA1 : STD_LOGIC := '0';
signal Output_DA1 : STD_LOGIC_VECTOR (31 downto 0) := (Others=>'0');

--SIgnal untuk Sign Operation
signal add_SO : STD_LOGIC_VECTOR (16 downto 0) := (Others=>'0');
type t_signop is array (0 to 14) of std_logic_vector (15 downto 0);
signal SO : t_signop;
constant base_SO : UNSIGNED (15 downto 0) := (Others=>'1');


signal Sign_OP_Check : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal beban_extd : STD_LOGIC_VECTOR (16 downto 0) := (Others=>'0');
signal twosc : STD_LOGIC_VECTOR (16 downto 0) := (Others=>'0');
signal Output_SO : STD_LOGIC_VECTOR (31 downto 0) := (Others=>'0');
signal Output_buff : STD_LOGIC_VECTOR (31 downto 0) := (Others=>'0');
constant twosc_1 : STD_LOGIC_VECTOR (16 downto 0) := (Others=>'1');
constant SO_0 : STD_LOGIC_VECTOR (16 downto 0) := (Others=>'0');


begin

--Penetuan Input yg Msk ke DA--
Input_DA1 <= '0' when count = "00000" else --Inisisalisasi/delay karena DFF menggunakan Process.
             Input(0) when count = "00001" else
             Input(1) when count = "00010" else
             Input(2) when count = "00011" else
             Input(3) when count = "00100" else
             Input(4) when count = "00101" else
             Input(5) when count = "00110" else
             Input(6) when count = "00111" else
             Input(7) when count = "01000" else
             Input(8) when count = "01001" else
             Input(9) when count = "01010" else
             Input(10) when count = "01011" else
             Input(11) when count = "01100" else
             Input(12) when count = "01101" else
             Input(13) when count = "01110" else
             Input(14) when count = "01111" else
             '0' when count = "10000" else --Geser 1 bit ke bawah
             '0' when count = "10001" else --Geser 1 bit ke bawah
             '0' when reset ='1' else
             '0';
-----------------------------------------------------

--Penentuan Sign Op--
g_sign_op : for i in 0 to 14 generate
SO(i) <= std_logic_vector(shift_left(base_SO,i)) when Input(i) = '1' else 
    (Others=>'0');
end generate g_sign_op;
--SO2 <= "11111110" when Input(1) = '1' else 
--    "00000000";
--SO3 <= "11111100" when Input(2) = '1' else 
--    "00000000";
--SO4 <= "11111000" when Input(3) = '1' else 
--    "00000000";
--SO5 <= "11110000" when Input(4) = '1' else 
--    "00000000";
--SO6 <= "11100000" when Input(5) = '1' else 
--    "00000000";
--SO7 <= "11000000" when Input(6) = '1' else 
--    "00000000";
    
Beban_extd (15 downto 0) <= Beban;
add_SO(16 downto 1) <= so(0)+ so(1)+ so(2)+ so(3)+ so(4)+ so(5)+ so(6)+ so(7)+ 
                       so(8)+ so(9)+ so(10)+ so(11)+ so(12)+ so(13)+ so(14);
twosc <= (Beban_extd NAND twosc_1) + STD_LOGIC_VECTOR(TO_UNSIGNED(1,16));

--Sign Check
--S&S -> 11
--S&U -> 10
--U&S -> 01
--U&U -> 00
    
Sign_OP_Check(1) <= Beban(15);
Sign_OP_Check(0) <= Input(15);
Output_SO(31 downto 15) <= add_SO + twosc(15 downto 0) WHEN Sign_OP_Check = "11" else --Operasi Signed & Signed
             add_SO WHEN Sign_OP_Check = "10" else --Operasi Unsigned & Signed
             twosc WHEN Sign_OP_Check = "01" else -- Operasi Signed & Unsigned
             SO_0 WHEN Sign_OP_Check = "00" else --Operasi Unsigned & Unsigned
             SO_0 WHEN reset ='1' else
             SO_0;
--------------------------------------------------------------------------------------------

 DistriArith : DA_V2_16_bit
  PORT MAP (
    Input => Input_DA1,
    Beban => Beban,
    CLK => CLK,
    Reset => Reset,
    Output => Output_DA1
  );

Output_buff <= OUTPUT_DA1 + Output_SO WHEN Count = "10001" else
          Output_buff;
Output <= Output_buff;


end Behavioral;