----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/31/2020 02:18:38 PM
-- Design Name: 
-- Module Name: TOP_DA_64_BIT - Behavioral
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

entity TOP_DA_64_BIT is
    Port ( Input : in STD_LOGIC_VECTOR (63 DOWNTO 0); ---B
           Beban : in STD_LOGIC_VECTOR (63 downto 0); ---A
           Clk : in STD_LOGIC; ---Butuh 10x Clock untuk 1 operasi
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (6 downto 0);
           Output : out STD_LOGIC_VECTOR (127 downto 0); ---A*B
           Overflow : out STD_LOGIC);
end TOP_DA_64_BIT;

architecture Behavioral of TOP_DA_64_BIT is

COMPONENT DA_V2_64_Bit is
    Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (63 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (127 downto 0));
END COMPONENT;

--Signal untuk DA
signal Input_DA1 : STD_LOGIC := '0';
signal Output_DA1 : STD_LOGIC_VECTOR (127 downto 0) := (Others=>'0');

--SIgnal untuk Sign Operation
signal add_SO : STD_LOGIC_VECTOR (64 downto 0) := (Others=>'0');
type t_signop is array (0 to 62) of std_logic_vector (63 downto 0);
signal SO : t_signop;
constant base_SO : UNSIGNED (63 downto 0) := (Others=>'1');


signal Sign_OP_Check : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal beban_extd : STD_LOGIC_VECTOR (64 downto 0) := (Others=>'0');
signal twosc : STD_LOGIC_VECTOR (64 downto 0) := (Others=>'0');
signal Output_SO : STD_LOGIC_VECTOR (127 downto 0) := (Others=>'0');
signal Output_buff : STD_LOGIC_VECTOR (127 downto 0) := (Others=>'0');
constant twosc_1 : STD_LOGIC_VECTOR (64 downto 0) := (Others=>'1');
constant SO_0 : STD_LOGIC_VECTOR (64 downto 0) := (Others=>'0');

begin

--Penetuan Input yg Msk ke DA--
Input_DA1 <= '0' when count = "0000000" else --Inisisalisasi/delay karena DFF menggunakan Process.
             Input(0) when count = "0000001" else
             Input(1) when count = "0000010" else
             Input(2) when count = "0000011" else
             Input(3) when count = "0000100" else
             Input(4) when count = "0000101" else
             Input(5) when count = "0000110" else
             Input(6) when count = "0000111" else
             Input(7) when count = "0001000" else
             Input(8) when count = "0001001" else
             Input(9) when count = "0001010" else
             Input(10) when count = "0001011" else
             Input(11) when count = "0001100" else
             Input(12) when count = "0001101" else
             Input(13) when count = "0001110" else
             Input(14) when count = "0001111" else
             Input(15) when count = "0010000" else
             Input(16) when count = "0010001" else
             Input(17) when count = "0010010" else
             Input(18) when count = "0010011" else
             Input(19) when count = "0010100" else
             Input(20) when count = "0010101" else
             Input(21) when count = "0010110" else
             Input(22) when count = "0010111" else
             Input(23) when count = "0011000" else
             Input(24) when count = "0011001" else
             Input(25) when count = "0011010" else
             Input(26) when count = "0011011" else
             Input(27) when count = "0011100" else
             Input(28) when count = "0011101" else
             Input(29) when count = "0011110" else
             Input(30) when count = "0011111" else
             Input(31) when count = "0100000" else
             Input(32) when count = "0100001" else
             Input(33) when count = "0100010" else
             Input(34) when count = "0100011" else
             Input(35) when count = "0100100" else
             Input(36) when count = "0100101" else
             Input(37) when count = "0100110" else
             Input(38) when count = "0100111" else
             Input(39) when count = "0101000" else
             Input(40) when count = "0101001" else
             Input(41) when count = "0101010" else
             Input(42) when count = "0101011" else
             Input(43) when count = "0101100" else
             Input(44) when count = "0101101" else
             Input(45) when count = "0101110" else
             Input(46) when count = "0101111" else
             Input(47) when count = "0110000" else
             Input(48) when count = "0110001" else
             Input(49) when count = "0110010" else
             Input(50) when count = "0110011" else
             Input(51) when count = "0110100" else
             Input(52) when count = "0110101" else
             Input(53) when count = "0110110" else
             Input(54) when count = "0110111" else
             Input(55) when count = "0111000" else
             Input(56) when count = "0111001" else
             Input(57) when count = "0111010" else
             Input(58) when count = "0111011" else
             Input(59) when count = "0111100" else
             Input(60) when count = "0111101" else
             Input(61) when count = "0111110" else
             Input(62) when count = "0111111" else
             '0' when count = "1000000" else --Geser 1 bit ke bawah
             '0' when count = "1000001" else --Geser 1 bit ke bawah
             '0' when reset ='1' else
             '0';
-----------------------------------------------------

--Penentuan Sign Op--
g_sign_op : for i in 0 to 62 generate
SO(i) <= std_logic_vector(shift_left(base_SO,i)) when Input(i) = '1' else 
    (Others=>'0');
end generate g_sign_op;

    
Beban_extd (63 downto 0) <= Beban;
add_SO(64 downto 1) <= so(0)+ so(1)+ so(2)+ so(3)+ so(4)+ so(5)+ so(6)+ so(7)+ 
                       so(8)+ so(9)+ so(10)+ so(11)+ so(12)+ so(13)+ so(14)+
                       so(15)+ so(16)+ so(17)+ so(18)+ so(19)+ so(20)+ so(21)+ so(22)+ 
                       so(23)+ so(24)+ so(25)+ so(26)+ so(27)+ so(28)+ so(29)+ so(30)+
                       so(31)+ so(32)+ so(33)+ so(34)+ so(35)+ so(36)+ so(37)+ so(38)+ 
                       so(39)+ so(40)+ so(41)+ so(42)+ so(43)+ so(44)+ so(45)+ so(46)+
                       so(47)+ so(48)+ so(49)+ so(50)+ so(51)+ so(52)+ so(53)+ so(54)+ 
                       so(55)+ so(56)+ so(57)+ so(58)+ so(59)+ so(60)+ so(61)+ so(62);
twosc <= (Beban_extd NAND twosc_1) + STD_LOGIC_VECTOR(TO_UNSIGNED(1,64));

--Sign Check
--S&S -> 11
--S&U -> 10
--U&S -> 01
--U&U -> 00
    
Sign_OP_Check(1) <= Beban(63);
Sign_OP_Check(0) <= Input(63);
Output_SO(127 downto 63) <= add_SO + twosc(63 downto 0) WHEN Sign_OP_Check = "11" else --Operasi Signed & Signed
             add_SO WHEN Sign_OP_Check = "10" else --Operasi Unsigned & Signed
             twosc WHEN Sign_OP_Check = "01" else -- Operasi Signed & Unsigned
             SO_0 WHEN Sign_OP_Check = "00" else --Operasi Unsigned & Unsigned
             SO_0 WHEN reset ='1' else
             SO_0;
--------------------------------------------------------------------------------------------

 DistriArith : DA_V2_64_bit
  PORT MAP (
    Input => Input_DA1,
    Beban => Beban,
    CLK => CLK,
    Reset => Reset,
    Output => Output_DA1
  );

Output_buff <= OUTPUT_DA1 + Output_SO WHEN Count = "1000001" else
          Output_buff;
Output <= Output_buff;


end Behavioral;
