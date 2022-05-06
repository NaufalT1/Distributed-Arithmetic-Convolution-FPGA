----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/31/2020 09:42:25 AM
-- Design Name: 
-- Module Name: TOP_DA_32_BIT - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP_DA_32_BIT is
    Port ( Input : in STD_LOGIC_VECTOR (31 DOWNTO 0); ---B
           Beban : in STD_LOGIC_VECTOR (31 downto 0); ---A
           Clk : in STD_LOGIC; ---Butuh 10x Clock untuk 1 operasi
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (6 downto 0);
           Output : out STD_LOGIC_VECTOR (63 downto 0); ---A*B
           Overflow : out STD_LOGIC);
end TOP_DA_32_BIT;

architecture Behavioral of TOP_DA_32_BIT is

COMPONENT DA_V2_32_Bit is
    Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (31 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (63 downto 0));
END COMPONENT;

--Signal untuk DA
signal Input_DA1 : STD_LOGIC := '0';
signal Output_DA1 : STD_LOGIC_VECTOR (63 downto 0) := (Others=>'0');

--SIgnal untuk Sign Operation
signal add_SO : STD_LOGIC_VECTOR (32 downto 0) := (Others=>'0');
type t_signop is array (0 to 30) of std_logic_vector (31 downto 0);
signal SO : t_signop;
constant base_SO : UNSIGNED (31 downto 0) := (Others=>'1');


signal Sign_OP_Check : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal beban_extd : STD_LOGIC_VECTOR (32 downto 0) := (Others=>'0');
signal twosc : STD_LOGIC_VECTOR (32 downto 0) := (Others=>'0');
signal Output_SO : STD_LOGIC_VECTOR (63 downto 0) := (Others=>'0');
signal Output_buff : STD_LOGIC_VECTOR (63 downto 0) := (Others=>'0');
constant twosc_1 : STD_LOGIC_VECTOR (32 downto 0) := (Others=>'1');
constant SO_0 : STD_LOGIC_VECTOR (32 downto 0) := (Others=>'0');

begin

--Penetuan Input yg Msk ke DA--
Input_DA1 <= '0' when count = "000000" else --Inisisalisasi/delay karena DFF menggunakan Process.
             Input(0) when count = "000001" else
             Input(1) when count = "000010" else
             Input(2) when count = "000011" else
             Input(3) when count = "000100" else
             Input(4) when count = "000101" else
             Input(5) when count = "000110" else
             Input(6) when count = "000111" else
             Input(7) when count = "001000" else
             Input(8) when count = "001001" else
             Input(9) when count = "001010" else
             Input(10) when count = "001011" else
             Input(11) when count = "001100" else
             Input(12) when count = "001101" else
             Input(13) when count = "001110" else
             Input(14) when count = "001111" else
             Input(15) when count = "010000" else
             Input(16) when count = "010001" else
             Input(17) when count = "010010" else
             Input(18) when count = "010011" else
             Input(19) when count = "010100" else
             Input(20) when count = "010101" else
             Input(21) when count = "010110" else
             Input(22) when count = "010111" else
             Input(23) when count = "011000" else
             Input(24) when count = "011001" else
             Input(25) when count = "011010" else
             Input(26) when count = "011011" else
             Input(27) when count = "011100" else
             Input(28) when count = "011101" else
             Input(29) when count = "011110" else
             Input(30) when count = "011111" else
             '0' when count = "100000" else --Geser 1 bit ke bawah
             '0' when count = "100001" else --Geser 1 bit ke bawah
             '0' when reset ='1' else
             '0';
-----------------------------------------------------

--Penentuan Sign Op--
g_sign_op : for i in 0 to 30 generate
SO(i) <= std_logic_vector(shift_left(base_SO,i)) when Input(i) = '1' else 
    (Others=>'0');
end generate g_sign_op;

    
Beban_extd (31 downto 0) <= Beban;
add_SO(32 downto 1) <= so(0)+ so(1)+ so(2)+ so(3)+ so(4)+ so(5)+ so(6)+ so(7)+ 
                       so(8)+ so(9)+ so(10)+ so(11)+ so(12)+ so(13)+ so(14)+
                       so(15)+ so(16)+ so(17)+ so(18)+ so(19)+ so(20)+ so(21)+ so(22)+ 
                       so(23)+ so(24)+ so(25)+ so(26)+ so(27)+ so(28)+ so(29)+ so(30);
twosc <= (Beban_extd NAND twosc_1) + STD_LOGIC_VECTOR(TO_UNSIGNED(1,32));

--Sign Check
--S&S -> 11
--S&U -> 10
--U&S -> 01
--U&U -> 00
    
Sign_OP_Check(1) <= Beban(31);
Sign_OP_Check(0) <= Input(31);
Output_SO(63 downto 31) <= add_SO + twosc(31 downto 0) WHEN Sign_OP_Check = "11" else --Operasi Signed & Signed
             add_SO WHEN Sign_OP_Check = "10" else --Operasi Unsigned & Signed
             twosc WHEN Sign_OP_Check = "01" else -- Operasi Signed & Unsigned
             SO_0 WHEN Sign_OP_Check = "00" else --Operasi Unsigned & Unsigned
             SO_0 WHEN reset ='1' else
             SO_0;
--------------------------------------------------------------------------------------------

 DistriArith : DA_V2_32_bit
  PORT MAP (
    Input => Input_DA1,
    Beban => Beban,
    CLK => CLK,
    Reset => Reset,
    Output => Output_DA1
  );

Output_buff <= OUTPUT_DA1 + Output_SO WHEN Count = "100001" else
          Output_buff;
Output <= Output_buff;


end Behavioral;
