----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2021 12:45:48 AM
-- Design Name: 
-- Module Name: DA_V2_256_BIT - Behavioral
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

entity DA_V2_256_BIT is
    generic(n : integer := 255);
    Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (n downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2*n+1 downto 0));
end DA_V2_256_BIT;

architecture Behavioral of DA_V2_256_BIT is
COMPONENT Adder
  PORT (
    A : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    C_IN : IN STD_LOGIC;
    C_OUT : OUT STD_LOGIC := '0';
    S : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) := "0"
  );
END COMPONENT;

COMPONENT HAdder
  PORT (
    A : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    C_OUT : OUT STD_LOGIC := '0';
    S : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) := "0"
  );
END COMPONENT;

COMPONENT DFF --delay
  PORT (
    D : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    Clk : IN STD_LOGIC;
    Reset : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) := "0"
  );
END COMPONENT;

type t_sinyal is array (0 to n) of std_logic_vector (0 downto 0);

signal A : t_sinyal;

signal B : t_sinyal;

signal C_n : STD_LOGIC_Vector (0 downto 0) := "0";

signal D : t_sinyal;

signal E : t_sinyal;

signal F : t_sinyal;

signal G127 : STD_LOGIC_Vector (0 downto 0) := "0";

signal H : t_sinyal;

signal I : t_sinyal;

begin

Delay : For I in 0 to n generate
Reg : DFF
  PORT MAP (
    D => D(I),
    CLK => CLK,
    Reset => Reset,
    Q => B(I)
  );
END GENERATE DELAY;

Delay_Carry_FA_n : DFF
    PORT MAP (
      D => E(n),
      CLK => CLK,
      Reset => Reset,
      Q => C_n
    );
  
FA_127 : Adder
  PORT MAP (
    A => A(n),
    B => E(n-1),
    C_IN => C_n(0),
    C_OUT => E(n)(0),
    S => D(n)
  );

Full_Adder : For I in 1 to n-1 generate
FA : Adder
  PORT MAP (
    A => A(I),
    B => B(I+1),
    C_IN => E(I-1)(0),
    C_OUT => E(I)(0),
    S => D(I)
  );
END GENERATE FULL_ADDER;
  
HA_0 : HAdder
  PORT MAP (
    A => A(0),
    B => B(1),
    C_OUT => E(0)(0),
    S => D(0)
  ); 
  
Out_Reg :FOR X in 0 to n-1 generate
Reg_Out : DFF
  PORT MAP (
    D => I(X+1),
    CLK => CLK,
    Reset => Reset,
    Q => I(X)
  );
END GENERATE OUT_REG;
  
Reg_Out_n : DFF
  PORT MAP (
    D => B(0),
    CLK => CLK,
    Reset => Reset,
    Q => I(n)
  );

Sinyal_Luaran : for X in 0 to n generate
Output(X) <= I(X)(0);
Output(X+128) <= B(X)(0);
END GENERATE SINYAL_LUARAN;

Sinyal_Masukan : for X in 0 to n generate
A(X)(0) <= Input AND Beban(X);
END GENERATE SINYAL_MASUKAN;


end Behavioral;
