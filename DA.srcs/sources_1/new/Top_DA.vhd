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

entity TOP_DA is
    Port ( Input : in STD_LOGIC_VECTOR (7 DOWNTO 0); ---B
           Beban : in STD_LOGIC_VECTOR (7 downto 0); ---A
           Clk : in STD_LOGIC; ---Butuh 10x Clock untuk 1 operasi
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (15 downto 0); ---A*B
           Overflow : out STD_LOGIC);
end TOP_DA;


architecture Behavioral of TOP_DA is

COMPONENT DA_V2 is
    Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (7 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (15 downto 0));
END COMPONENT;

--Signal untuk DA
signal Input_DA1 : STD_LOGIC := '0';
signal Output_DA1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";

--SIgnal untuk Sign Operation
signal add_SO : STD_LOGIC_VECTOR (8 downto 0) := (Others=>'0');
type t_signop is array (0 to 6) of std_logic_vector (7 downto 0);
signal SO : t_signop;
constant base_SO : UNSIGNED (7 downto 0) := (Others=>'1');

signal Sign_OP_Check : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal beban_extd : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
signal twosc : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
signal Output_SO : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
signal Output_buff : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
constant twosc_1 : STD_LOGIC_VECTOR (8 downto 0) := (Others=>'1');
constant SO_0 : STD_LOGIC_VECTOR (8 downto 0) := (Others=>'0');


begin

--Penetuan Input yg Msk ke DA--
Input_DA1 <= '0' when count = "0000" else --Inisisalisasi/delay karena DFF menggunakan Process.
             Input(0) when count = "0001" else
             Input(1) when count = "0010" else
             Input(2) when count = "0011" else
             Input(3) when count = "0100" else
             Input(4) when count = "0101" else
             Input(5) when count = "0110" else
             Input(6) when count = "0111" else
             '0' when count = "1000" else --Geser 1 bit ke bawah
             '0' when count = "1001" else --Geser 1 bit ke bawah
             '0' when reset ='1' else
             '0';
-----------------------------------------------------

--Penentuan Sign Op--
g_sign_op : for i in 0 to 6 generate
SO(i) <= std_logic_vector(shift_left(base_SO,i)) when Input(i) = '1' else 
    (Others=>'0');
end generate g_sign_op;
    
Beban_extd (7 downto 0) <= Beban;
add_SO(8 downto 1) <= so(0)+ so(1)+ so(2)+ so(3)+ so(4)+ so(5)+ so(6);
twosc <= (Beban_extd NAND twosc_1) + STD_LOGIC_VECTOR(TO_UNSIGNED(1,8));
    
Sign_OP_Check(1) <= Beban(7);
Sign_OP_Check(0) <= Input(7);
Output_SO(15 downto 7) <= add_SO+twosc(7 downto 0) WHEN Sign_OP_Check = "11" else --Operasi (-) & (-)
             add_SO WHEN Sign_OP_Check = "10" else --Operasi (+) & (-)
             twosc WHEN Sign_OP_Check = "01" else -- Operasi (-) & (+)
             SO_0 WHEN Sign_OP_Check = "00" else --Operasi (+) & (+)
             SO_0 WHEN reset ='1' else
             SO_0;
--------------------------------------------------------------------------------------------

 DistriArith : DA_V2
  PORT MAP (
    Input => Input_DA1,
    Beban => Beban,
    CLK => CLK,
    Reset => Reset,
    Output => Output_DA1
  );

Output_buff <= OUTPUT_DA1 + Output_SO WHEN Count = "1001" else
          Output_buff;
Output <= Output_buff;


end Behavioral;