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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DA_V2 is
    Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (7 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (15 downto 0));
end DA_V2;


architecture Behavioral of DA_V2 is

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

type t_sinyal is array (0 to 7) of std_logic_vector (0 downto 0);

signal A : t_sinyal;

signal B : t_sinyal;

signal C7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal D : t_sinyal;

signal E : t_sinyal;

signal F : t_sinyal;

signal G7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal H : t_sinyal;

signal I : t_sinyal;

begin

Sinyal_Masukan : for X in 0 to 7 generate
A(X)(0) <= Input AND Beban(X);
END GENERATE SINYAL_MASUKAN;

Delay : For I in 0 to 7 generate
Reg : DFF
  PORT MAP (
    D => D(I),
    CLK => CLK,
    Reset => Reset,
    Q => B(I)
  );
END GENERATE DELAY;

Delay_Carry_FA7 : DFF
    PORT MAP (
      D => E(7),
      CLK => CLK,
      Reset => Reset,
      Q => C7
    );
  
FA_7 : Adder
  PORT MAP (
    A => A(7),
    B => E(6),
    C_IN => C7(0),
    C_OUT => E(7)(0),
    S => D(7)
  );

Full_Adder : For I in 1 to 6 generate
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
  
Out_Reg :FOR X in 0 to 6 generate
Reg_Out : DFF
  PORT MAP (
    D => I(X+1),
    CLK => CLK,
    Reset => Reset,
    Q => I(X)
  );
END GENERATE OUT_REG;
  
Reg_Out7 : DFF
  PORT MAP (
    D => B(0),
    CLK => CLK,
    Reset => Reset,
    Q => I(7)
  );

Sinyal_Luaran : for X in 0 to 7 generate
Output(X) <= I(X)(0);
Output(X+8) <= B(X)(0);
END GENERATE SINYAL_LUARAN;

end Behavioral;
