----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2021 12:09:15 AM
-- Design Name: 
-- Module Name: TOP_DA_256_BIT - Behavioral
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

entity TOP_DA_256_BIT is
    generic(n : integer := 255);
    Port ( Input : in STD_LOGIC_VECTOR (n DOWNTO 0); ---B
           Beban : in STD_LOGIC_VECTOR (n downto 0); ---A
           Clk : in STD_LOGIC; ---Butuh 10x Clock untuk 1 operasi
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (15 downto 0);
           Output : out STD_LOGIC_VECTOR (2*n+1 downto 0); ---A*B
           Overflow : out STD_LOGIC);
end TOP_DA_256_BIT;

architecture Behavioral of TOP_DA_256_BIT is
COMPONENT DA_V2_256_Bit is
    generic(n : integer := 255);
    Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (n downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2*n+1 downto 0));
END COMPONENT;

--Signal untuk DA
signal Input_DA1 : STD_LOGIC := '0';
signal Output_DA1 : STD_LOGIC_VECTOR (2*n+1 downto 0) := (Others=>'0');
signal cnt : integer := 0;

--SIgnal untuk Sign Operation
signal add_SO : STD_LOGIC_VECTOR (n+1 downto 0) := (Others=>'0');
type t_signop is array (0 to n-1) of std_logic_vector (n downto 0);
signal SO : t_signop;
constant base_SO : UNSIGNED (n downto 0) := (Others=>'1');


signal Sign_OP_Check : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal beban_extd : STD_LOGIC_VECTOR (n+1 downto 0) := (Others=>'0');
signal twosc : STD_LOGIC_VECTOR (n+1 downto 0) := (Others=>'0');
signal Output_SO : STD_LOGIC_VECTOR (2*n+1 downto 0) := (Others=>'0');
signal Output_buff : STD_LOGIC_VECTOR (2*n+1 downto 0) := (Others=>'0');
constant twosc_1 : STD_LOGIC_VECTOR (n+1 downto 0) := (Others=>'1');
constant SO_0 : STD_LOGIC_VECTOR (n+1 downto 0) := (Others=>'0');

function pilih_masukan(masukan : std_logic_vector(n downto 0);count: std_logic_vector(15 downto 0);n : integer) return std_logic is
    variable ret : std_logic := '0';
    variable cnt : integer := 0;
begin
    cnt := to_integer(unsigned(count));
    if cnt = 0 then
        ret := '0';
    elsif cnt < 128 then
        ret := masukan(cnt-1);
    else
        ret := '0';
    end if;
    return ret;
end function pilih_masukan;

function summ(a : t_signop; n : integer) return std_logic_vector is
    variable ret : std_logic_vector (n downto 0) := (others=>'0');
    variable cnt : integer := 0;
begin
    for i in 0 to n-1 loop
        ret := ret +a(i);
    end loop;
    return ret;
end function summ;

begin

--Penetuan Input yg Msk ke DA--
cnt <= to_integer(unsigned(count));
--masukan : process (count)
--begin
--    if(cnt=0) then
--        Input_DA1 <= '0';
--    elsif cnt<n+1 then
--        Input_DA1 <= Input(cnt-1);
--    else
--        Input_DA1 <= '0';
--    end if;
--end process;
Input_DA1 <= pilih_masukan(Input,Count,n);
-----------------------------------------------------

--Penentuan Sign Op--
g_sign_op : for i in 0 to n-1 generate
SO(i) <= std_logic_vector(shift_left(base_SO,i)) when Input(i) = '1' else 
    (Others=>'0');
end generate g_sign_op;

    
Beban_extd (n downto 0) <= Beban;
add_SO(n+1 downto 1) <= summ(so,n);
twosc <= (Beban_extd NAND twosc_1) + STD_LOGIC_VECTOR(TO_UNSIGNED(1,n+1));

--Sign Check
--S&S -> 11
--S&U -> 10
--U&S -> 01
--U&U -> 00
    
Sign_OP_Check(1) <= Beban(n);
Sign_OP_Check(0) <= Input(n);
Output_SO(2*n+1 downto n) <= add_SO + twosc(n downto 0) WHEN Sign_OP_Check = "11" else --Operasi Signed & Signed
             add_SO WHEN Sign_OP_Check = "10" else --Operasi Unsigned & Signed
             twosc WHEN Sign_OP_Check = "01" else -- Operasi Signed & Unsigned
             SO_0 WHEN Sign_OP_Check = "00" else --Operasi Unsigned & Unsigned
             SO_0 WHEN reset ='1' else
             SO_0;
--------------------------------------------------------------------------------------------

 DistriArith : DA_V2_256_bit
  PORT MAP (
    Input => Input_DA1,
    Beban => Beban,
    CLK => CLK,
    Reset => Reset,
    Output => Output_DA1
  );

Output_buff <= OUTPUT_DA1 + Output_SO WHEN Count = "100000001" else
          Output_buff;
Output <= Output_buff;


end Behavioral;
