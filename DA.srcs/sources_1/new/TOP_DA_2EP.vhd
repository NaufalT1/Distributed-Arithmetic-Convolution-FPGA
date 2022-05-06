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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP_DA_2EP is
    Port ( Input : in STD_LOGIC_VECTOR (7 DOWNTO 0); ---B
           Beban : in STD_LOGIC_VECTOR (7 downto 0); ---A
           Clk : in STD_LOGIC; ---Butuh 10x Clock untuk 1 operasi
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (15 downto 0); ---A*B
           Overflow : out STD_LOGIC);
end TOP_DA_2EP;


architecture Behavioral of TOP_DA_2EP is

COMPONENT DA_V2_2EP is
    Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (7 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (11 downto 0));
END COMPONENT;

COMPONENT adder_DA
  PORT (
    A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    S : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END COMPONENT;

--Signal untuk DA
signal Input_DA1 : STD_LOGIC := '0';
signal Output_DA1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
signal Input_DA2 : STD_LOGIC := '0';
signal Output_DA2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
signal Output_DA : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";

--SIgnal untuk Sign Operation
signal SO : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
signal SO1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal SO2 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal SO3 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal SO4 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal SO5 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal SO6 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal SO7 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal SO8 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

signal Sign_OP_Check : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal beban_extd : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
signal twosc : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
signal Output_SO : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
signal Output_buff : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";


begin

--Penetuan Input yg Msk ke DA--
Input_DA1 <= '0' when count = "0000" else --Inisisalisasi/delay karena DFF menggunakan Process.
             Input(0) when count = "0001" else
             Input(1) when count = "0010" else
             Input(2) when count = "0011" else
             Input(3) when count = "0100" else
             '0' when count = "0101" else --Geser 1 bit ke bawah
             '0' when count = "0110" else --Geser 1 bit ke bawah
             '0' when reset ='1' else
             '0';
Input_DA2 <= '0' when count = "0000" else --Inisisalisasi/delay karena DFF menggunakan Process.
             Input(4) when count = "0001" else 
             Input(5) when count = "0010" else
             Input(6) when count = "0011" else
             '0' when count = "0100" else --Geser 1 bit ke bawah
             '0' when count = "0101" else --Geser 1 bit ke bawah
             '0' when count = "0110" else --Geser 1 bit ke bawah
             '0' when reset ='1' else
             '0';
-----------------------------------------------------

--Penentuan Sign Op--
SO1 <= "11111111" when Input(0) = '1' else 
    "00000000";
SO2 <= "11111110" when Input(1) = '1' else 
    "00000000";
SO3 <= "11111100" when Input(2) = '1' else 
    "00000000";
SO4 <= "11111000" when Input(3) = '1' else 
    "00000000";
SO5 <= "11110000" when Input(4) = '1' else 
    "00000000";
SO6 <= "11100000" when Input(5) = '1' else 
    "00000000";
SO7 <= "11000000" when Input(6) = '1' else 
    "00000000";
    
Beban_extd (7 downto 0) <= Beban;
SO(8 downto 1) <= SO1+SO2+SO3+SO4+SO5+SO6+SO7;
twosc <= (Beban_extd NAND "111111111") + "000000001";

--Sign Check
--S&S -> 11
--S&U -> 10
--U&S -> 01
--U&U -> 00
    
Sign_OP_Check(1) <= Beban(7);
Sign_OP_Check(0) <= Input(7);
Output_SO(15 downto 7) <= SO+twosc(7 downto 0) WHEN Sign_OP_Check = "11" else --Operasi Signed & Signed
             SO WHEN Sign_OP_Check = "10" else --Operasi Unsigned & Signed
             twosc WHEN Sign_OP_Check = "01" else -- Operasi Signed & Unsigned
             "000000000" WHEN Sign_OP_Check = "00" else --Operasi Unsigned & Unsigned
             "000000000" WHEN reset ='1' else
             "000000000";
--------------------------------------------------------------------------------------------

 DistriArith1 : DA_V2_2EP
  PORT MAP (
    Input => Input_DA1,
    Beban => Beban,
    CLK => CLK,
    Reset => Reset,
    Output => Output_DA1
  );
  
  DistriArith2 : DA_V2_2EP
  PORT MAP (
    Input => Input_DA2,
    Beban => Beban,
    CLK => CLK,
    Reset => Reset,
    Output => Output_DA2
  );

Adder : adder_DA
  PORT MAP (
    A => output_DA1(11 downto 4),
    B => Output_DA2(11 downto 0),
    S => Output_DA (15 downto 4)
  );

Output_DA (3 downto 0) <= Output_DA1 (3 downto 0);
--Output_DA (15 downto 4) <= Output_DA1 (11 downto 4) + Output_DA2 (11 downto 0);
Output_buff <= OUTPUT_DA + Output_SO 
          WHEN Count = "0101" else
          Output_buff;
Output <= Output_buff;


end Behavioral;