----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2021 01:10:07 PM
-- Design Name: 
-- Module Name: CONVOLUTION_16_BIT - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CONVOLUTION_16_BIT is
    generic (n : integer := 15);
    Port ( Input_0 : in STD_LOGIC_VECTOR (n downto 0);
           Input_1 : in STD_LOGIC_VECTOR (n downto 0);
           Input_2 : in STD_LOGIC_VECTOR (n downto 0);
           Input_3 : in STD_LOGIC_VECTOR (n downto 0);
           Input_4 : in STD_LOGIC_VECTOR (n downto 0);
           Input_5 : in STD_LOGIC_VECTOR (n downto 0);
           Input_6 : in STD_LOGIC_VECTOR (n downto 0);
           Input_7 : in STD_LOGIC_VECTOR (n downto 0);
           Input_8 : in STD_LOGIC_VECTOR (n downto 0);
           Beban_0   : in STD_LOGIC_VECTOR (n downto 0);
           Beban_1   : in STD_LOGIC_VECTOR (n downto 0);
           Beban_2   : in STD_LOGIC_VECTOR (n downto 0);
           Beban_3   : in STD_LOGIC_VECTOR (n downto 0);
           Beban_4   : in STD_LOGIC_VECTOR (n downto 0);
           Beban_5   : in STD_LOGIC_VECTOR (n downto 0);
           Beban_6   : in STD_LOGIC_VECTOR (n downto 0);
           Beban_7   : in STD_LOGIC_VECTOR (n downto 0);
           Beban_8   : in STD_LOGIC_VECTOR (n downto 0);
           Bias      : in STD_LOGIC_VECTOR (2*n+1 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (6 downto 0);
           Output : out STD_LOGIC_VECTOR (n downto 0));
end CONVOLUTION_16_BIT;

architecture Behavioral of CONVOLUTION_16_BIT is
COMPONENT TOP_DA_16_BIT is
    Port ( Input : in STD_LOGIC_VECTOR (15 DOWNTO 0); ---B
           Beban : in STD_LOGIC_VECTOR (15 downto 0); ---A
           Clk : in STD_LOGIC; ---Butuh 18x Clock untuk 1 operasi
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (6 downto 0);
           Output : out STD_LOGIC_VECTOR (31 downto 0); ---A*B
           Overflow : out STD_LOGIC);
end COMPONENT;

type t_A is array (0 to 8) of std_logic_vector(n downto 0);
signal A : t_A;

type t_B is array (0 to 8) of std_logic_vector(n downto 0);
signal B : t_B;

type t_O is array (0 to 8) of std_logic_vector(2*n+1 downto 0) ;
signal O : t_O;

signal Output_Add : SIGNED (2*n+1 downto 0) := (others => '0');
signal Output_ADD_Vector : std_logic_vector(2*n+1 downto 0) := (others => '0');

signal Cek : STD_LOGIC_VECTOR (1 downto 0) := "00";

function or_reduce(a : std_logic_vector(2*n+1 downto 0);n : integer) return std_logic is
    variable ret : std_logic := '0';
begin
    for i in 2*n to n loop
        ret := ret or a(i);
    end loop;
    return ret;
end function or_reduce;

begin
--Assign Nilai ke port
A(0) <= Beban_0;
A(1) <= Beban_1;
A(2) <= Beban_2;
A(3) <= Beban_3;
A(4) <= Beban_4;
A(5) <= Beban_5;
A(6) <= Beban_6;
A(7) <= Beban_7;
A(8) <= Beban_8;

B(0) <= Input_0;
B(1) <= Input_1;
B(2) <= Input_2;
B(3) <= Input_3;
B(4) <= Input_4;
B(5) <= Input_5;
B(6) <= Input_6;
B(7) <= Input_7;
B(8) <= Input_8;

--Buat komponen Convolusi
G_Conv : For I in 0 to 8 generate
DAI : TOP_DA_16_BIT
    Port map(
     Input => B(I),
     Clk => Clk,
     Reset => Reset,
     Count => Count,
     Beban => A(I),
     Output => O(I)
    );
END GENERATE G_Conv;

--Assign hasil ke Output + BIAS
Output_ADD <= signed(O(0)) + signed(O(1)) + signed(O(2)) + signed(O(3))  
            + signed(O(4)) + signed(O(5)) + signed(O(6)) + signed(O(7)) 
            + signed(O(8)) + signed(Bias);
Output_ADD_Vector <= std_logic_vector(Output_ADD);

--ActFunction
Cek(1) <= Output_ADD_Vector(2*n+1);
Cek(0) <= or_reduce(Output_ADD_Vector,n);

--          Output_ADD_Vector(2*n-0) OR Output_ADD_Vector(2*n-1) OR Output_ADD_Vector(2*n-2) OR Output_ADD_Vector(2*n-3) OR 
--          Output_ADD_Vector(2*n-4) OR Output_ADD_Vector(2*n-5) OR Output_ADD_Vector(2*n-6) OR Output_ADD_Vector(2*n-7) OR 
--          Output_ADD_Vector(2*n-8) OR Output_ADD_Vector(2*n-9) OR Output_ADD_Vector(2*n-10) OR Output_ADD_Vector(2*n-11) OR 
--          Output_ADD_Vector(2*n-12) OR Output_ADD_Vector(2*n-13) OR Output_ADD_Vector(2*n-14) OR Output_ADD_Vector(2*n-15) OR 
--          Output_ADD_Vector(n);
          

Output(n-1 downto 0) <= (others => '0') when Cek = "11" else -- Ketika bilangan negatif
                      (others => '0') when Cek = "10" else -- Ketika bilangan negatif
                      (others => '1') when Cek = "01" else -- Ketika bilangan positif lebih dari 254
                      Output_ADD_Vector(n-1 downto 0) when Cek = "00";  -- Ketika bilangan diantara 0 sampai 254
Output(n) <= '0';


end Behavioral;
