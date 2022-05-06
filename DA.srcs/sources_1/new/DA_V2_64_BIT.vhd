----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/31/2020 03:17:56 PM
-- Design Name: 
-- Module Name: DA_V2_64_BIT - Behavioral
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

entity DA_V2_64_BIT is
Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (63 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (127 downto 0));
end DA_V2_64_BIT;

architecture Behavioral of DA_V2_64_BIT is

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

type t_sinyal is array (0 to 63) of std_logic_vector (0 downto 0);

signal A : t_sinyal;

signal B : t_sinyal;

signal C63 : STD_LOGIC_Vector (0 downto 0) := "0";

signal D : t_sinyal;

signal E : t_sinyal;

signal F : t_sinyal;

signal G63 : STD_LOGIC_Vector (0 downto 0) := "0";

signal H : t_sinyal;

signal I : t_sinyal;

begin

Delay : For I in 0 to 63 generate
Reg : DFF
  PORT MAP (
    D => D(I),
    CLK => CLK,
    Reset => Reset,
    Q => B(I)
  );
END GENERATE DELAY;

Delay_Carry_FA63 : DFF
    PORT MAP (
      D => E(63),
      CLK => CLK,
      Reset => Reset,
      Q => C63
    );
  
FA_63 : Adder
  PORT MAP (
    A => A(63),
    B => E(62),
    C_IN => C63(0),
    C_OUT => E(63)(0),
    S => D(63)
  );

Full_Adder : For I in 1 to 62 generate
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
  
Out_Reg :FOR X in 0 to 62 generate
Reg_Out : DFF
  PORT MAP (
    D => I(X+1),
    CLK => CLK,
    Reset => Reset,
    Q => I(X)
  );
END GENERATE OUT_REG;
  
Reg_Out63 : DFF
  PORT MAP (
    D => B(0),
    CLK => CLK,
    Reset => Reset,
    Q => I(63)
  );

Sinyal_Luaran : for X in 0 to 63 generate
Output(X) <= I(X)(0);
Output(X+64) <= B(X)(0);
END GENERATE SINYAL_LUARAN;

Sinyal_Masukan : for X in 0 to 63 generate
A(X)(0) <= Input AND Beban(X);
END GENERATE SINYAL_MASUKAN;


end Behavioral;
