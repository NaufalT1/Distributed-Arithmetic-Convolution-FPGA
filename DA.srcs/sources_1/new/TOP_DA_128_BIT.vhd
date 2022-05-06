----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2020 01:03:30 PM
-- Design Name: 
-- Module Name: TOP_DA_128_BIT - Behavioral
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

entity TOP_DA_128_BIT is
    Port ( Input : in STD_LOGIC_VECTOR (127 DOWNTO 0); ---B
           Beban : in STD_LOGIC_VECTOR (127 downto 0); ---A
           Clk : in STD_LOGIC; ---Butuh 10x Clock untuk 1 operasi
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (10 downto 0);
           Output : out STD_LOGIC_VECTOR (255 downto 0); ---A*B
           Overflow : out STD_LOGIC);
end TOP_DA_128_BIT;

architecture Behavioral of TOP_DA_128_BIT is
COMPONENT DA_V2_128_Bit is
    Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (127 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (255 downto 0));
END COMPONENT;

--Signal untuk DA
signal Input_DA1 : STD_LOGIC := '0';
signal Output_DA1 : STD_LOGIC_VECTOR (255 downto 0) := (Others=>'0');

--SIgnal untuk Sign Operation
signal add_SO : STD_LOGIC_VECTOR (128 downto 0) := (Others=>'0');
type t_signop is array (0 to 126) of std_logic_vector (127 downto 0);
signal SO : t_signop;
constant base_SO : UNSIGNED (127downto 0) := (Others=>'1');


signal Sign_OP_Check : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal beban_extd : STD_LOGIC_VECTOR (128 downto 0) := (Others=>'0');
signal twosc : STD_LOGIC_VECTOR (128 downto 0) := (Others=>'0');
signal Output_SO : STD_LOGIC_VECTOR (255 downto 0) := (Others=>'0');
signal Output_buff : STD_LOGIC_VECTOR (255 downto 0) := (Others=>'0');
constant twosc_1 : STD_LOGIC_VECTOR (128 downto 0) := (Others=>'1');
constant SO_0 : STD_LOGIC_VECTOR (128 downto 0) := (Others=>'0');

begin

--Penetuan Input yg Msk ke DA--
Input_DA1 <= '0' when count = "00000000" else --Inisisalisasi/delay karena DFF menggunakan Process.
             Input(0) when count = "00000001" else
             Input(1) when count = "00000010" else
             Input(2) when count = "00000011" else
             Input(3) when count = "00000100" else
             Input(4) when count = "00000101" else
             Input(5) when count = "00000110" else
             Input(6) when count = "00000111" else
             Input(7) when count = "00001000" else
             Input(8) when count = "00001001" else
             Input(9) when count = "00001010" else
             Input(10) when count = "00001011" else
             Input(11) when count = "00001100" else
             Input(12) when count = "00001101" else
             Input(13) when count = "00001110" else
             Input(14) when count = "00001111" else
             Input(15) when count = "00010000" else
             Input(16) when count = "00010001" else
             Input(17) when count = "00010010" else
             Input(18) when count = "00010011" else
             Input(19) when count = "00010100" else
             Input(20) when count = "00010101" else
             Input(21) when count = "00010110" else
             Input(22) when count = "00010111" else
             Input(23) when count = "00011000" else
             Input(24) when count = "00011001" else
             Input(25) when count = "00011010" else
             Input(26) when count = "00011011" else
             Input(27) when count = "00011100" else
             Input(28) when count = "00011101" else
             Input(29) when count = "00011110" else
             Input(30) when count = "00011111" else
             Input(31) when count = "00100000" else
             Input(32) when count = "00100001" else
             Input(33) when count = "00100010" else
             Input(34) when count = "00100011" else
             Input(35) when count = "00100100" else
             Input(36) when count = "00100101" else
             Input(37) when count = "00100110" else
             Input(38) when count = "00100111" else
             Input(39) when count = "00101000" else
             Input(40) when count = "00101001" else
             Input(41) when count = "00101010" else
             Input(42) when count = "00101011" else
             Input(43) when count = "00101100" else
             Input(44) when count = "00101101" else
             Input(45) when count = "00101110" else
             Input(46) when count = "00101111" else
             Input(47) when count = "00110000" else
             Input(48) when count = "00110001" else
             Input(49) when count = "00110010" else
             Input(50) when count = "00110011" else
             Input(51) when count = "00110100" else
             Input(52) when count = "00110101" else
             Input(53) when count = "00110110" else
             Input(54) when count = "00110111" else
             Input(55) when count = "00111000" else
             Input(56) when count = "00111001" else
             Input(57) when count = "00111010" else
             Input(58) when count = "00111011" else
             Input(59) when count = "00111100" else
             Input(60) when count = "00111101" else
             Input(61) when count = "00111110" else
             Input(62) when count = "00111111" else
             Input(63) when count = "01000000" else
             Input(64) when count = "01000001" else
             Input(65) when count = "01000010" else
             Input(66) when count = "01000011" else
             Input(67) when count = "01000100" else
             Input(68) when count = "01000101" else
             Input(69) when count = "01000110" else
             Input(70) when count = "01000111" else
             Input(71) when count = "01001000" else
             Input(72) when count = "01001001" else
             Input(63) when count = "01000000" else
             Input(64) when count = "01000001" else
             Input(65) when count = "01000010" else
             Input(66) when count = "01000011" else
             Input(67) when count = "01000100" else
             Input(68) when count = "01000101" else
             Input(69) when count = "01000110" else
             Input(70) when count = "01000111" else
             Input(71) when count = "01001000" else
             Input(72) when count = "01001001" else
             Input(73) when count = "01001010" else
             Input(74) when count = "01001011" else
             Input(75) when count = "01001100" else
             Input(76) when count = "01001101" else
             Input(77) when count = "01001110" else
             Input(78) when count = "01001111" else
             Input(79) when count = "01010000" else
             Input(80) when count = "01010001" else
             Input(81) when count = "01010010" else
             Input(82) when count = "01010011" else
             Input(83) when count = "01010100" else
             Input(84) when count = "01010101" else
             Input(85) when count = "01010110" else
             Input(86) when count = "01010111" else
             Input(87) when count = "01011000" else
             Input(88) when count = "01011001" else
             Input(89) when count = "01011010" else
             Input(90) when count = "01011011" else
             Input(91) when count = "01011100" else
             Input(92) when count = "01011101" else
             Input(93) when count = "01011110" else
             Input(94) when count = "01011111" else
             Input(95) when count = "01100000" else
             Input(96) when count = "01100001" else
             Input(97) when count = "01100010" else
             Input(98) when count = "01100011" else
             Input(99) when count = "01100100" else
             Input(100) when count = "01100101" else
             Input(101) when count = "01100110" else
             Input(102) when count = "01100111" else
             Input(103) when count = "01101000" else
             Input(104) when count = "01101001" else
             Input(105) when count = "01101010" else
             Input(106) when count = "01101011" else
             Input(107) when count = "01101100" else
             Input(108) when count = "01101101" else
             Input(109) when count = "01101110" else
             Input(110) when count = "01101111" else
             Input(111) when count = "01110000" else
             Input(112) when count = "01110001" else
             Input(113) when count = "01110010" else
             Input(114) when count = "01110011" else
             Input(115) when count = "01110100" else
             Input(116) when count = "01110101" else
             Input(117) when count = "01110110" else
             Input(118) when count = "01110111" else
             Input(119) when count = "01111000" else
             Input(120) when count = "01111001" else
             Input(121) when count = "01111010" else
             Input(122) when count = "01111011" else
             Input(123) when count = "01111100" else
             Input(124) when count = "01111101" else
             Input(125) when count = "01111110" else
             Input(126) when count = "01111111" else 
             '0' when count = "10000000" else --Geser 1 bit ke bawah
             '0' when count = "10000001" else --Geser 1 bit ke bawah
             '0' when reset ='1' else
             '0';
-----------------------------------------------------

--Penentuan Sign Op--
g_sign_op : for i in 0 to 126 generate
SO(i) <= std_logic_vector(shift_left(base_SO,i)) when Input(i) = '1' else 
    (Others=>'0');
end generate g_sign_op;

    
Beban_extd (127 downto 0) <= Beban;
add_SO(128 downto 1) <= so(0)+ so(1)+ so(2)+ so(3)+ so(4)+ so(5)+ so(6)+ so(7)+ 
                       so(8)+ so(9)+ so(10)+ so(11)+ so(12)+ so(13)+ so(14)+
                       so(15)+ so(16)+ so(17)+ so(18)+ so(19)+ so(20)+ so(21)+ so(22)+ 
                       so(23)+ so(24)+ so(25)+ so(26)+ so(27)+ so(28)+ so(29)+ so(30)+
                       so(31)+ so(32)+ so(33)+ so(34)+ so(35)+ so(36)+ so(37)+ so(38)+ 
                       so(39)+ so(40)+ so(41)+ so(42)+ so(43)+ so(44)+ so(45)+ so(46)+
                       so(47)+ so(48)+ so(49)+ so(50)+ so(51)+ so(52)+ so(53)+ so(54)+ 
                       so(55)+ so(56)+ so(57)+ so(58)+ so(59)+ so(60)+ so(61)+ so(62)+
                       so(63)+ so(64)+ so(65)+ so(66)+ so(67)+ so(68)+ so(69)+ so(70)+ 
                       so(71)+ so(72)+ so(73)+ so(74)+ so(75)+ so(76)+ so(77)+ so(78)+
                       so(79)+ so(80)+ so(81)+ so(82)+ so(83)+ so(84)+ so(85)+ so(86)+ 
                       so(87)+ so(88)+ so(89)+ so(90)+ so(91)+ so(92)+ so(93)+ so(94)+
                       so(95)+ so(96)+ so(97)+ so(98)+ so(99)+ so(100)+ so(101)+ so(102)+ 
                       so(103)+ so(104)+ so(105)+ so(106)+ so(107)+ so(108)+ so(109)+ so(110)+
                       so(111)+ so(112)+ so(113)+ so(114)+ so(115)+ so(116)+ so(117)+ so(118)+
                       so(119)+ so(120)+ so(121)+ so(122)+ so(123)+ so(124)+ so(125)+ so(126);
twosc <= (Beban_extd NAND twosc_1) + STD_LOGIC_VECTOR(TO_UNSIGNED(1,128));

--Sign Check
--S&S -> 11
--S&U -> 10
--U&S -> 01
--U&U -> 00
    
Sign_OP_Check(1) <= Beban(127);
Sign_OP_Check(0) <= Input(127);
Output_SO(255 downto 127) <= add_SO + twosc(127 downto 0) WHEN Sign_OP_Check = "11" else --Operasi Signed & Signed
             add_SO WHEN Sign_OP_Check = "10" else --Operasi Unsigned & Signed
             twosc WHEN Sign_OP_Check = "01" else -- Operasi Signed & Unsigned
             SO_0 WHEN Sign_OP_Check = "00" else --Operasi Unsigned & Unsigned
             SO_0 WHEN reset ='1' else
             SO_0;
--------------------------------------------------------------------------------------------

 DistriArith : DA_V2_128_bit
  PORT MAP (
    Input => Input_DA1,
    Beban => Beban,
    CLK => CLK,
    Reset => Reset,
    Output => Output_DA1
  );

Output_buff <= OUTPUT_DA1 + Output_SO WHEN Count = "10000001" else
          Output_buff;
Output <= Output_buff;


end Behavioral;
