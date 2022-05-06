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

entity DA is
    Port ( Input : in STD_LOGIC;
           Beban : in STD_LOGIC_VECTOR (7 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (15 downto 0));
end DA;


architecture Behavioral of DA is

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

COMPONENT SR_1bit --delay
  PORT (
    D : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    CLK : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) := "0"
  );
END COMPONENT;



signal A0 : STD_LOGIC_Vector (0 downto 0) := "0";
signal A1 : STD_LOGIC_Vector (0 downto 0) := "0";
signal A2 : STD_LOGIC_Vector (0 downto 0) := "0";
signal A3 : STD_LOGIC_Vector (0 downto 0) := "0";
signal A4 : STD_LOGIC_Vector (0 downto 0) := "0";
signal A5 : STD_LOGIC_Vector (0 downto 0) := "0";
signal A6 : STD_LOGIC_Vector (0 downto 0) := "0";
signal A7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal B0 : STD_LOGIC_Vector (0 downto 0) := "0";
signal B1 : STD_LOGIC_Vector (0 downto 0) := "0";
signal B2 : STD_LOGIC_Vector (0 downto 0) := "0";
signal B3 : STD_LOGIC_Vector (0 downto 0) := "0";
signal B4 : STD_LOGIC_Vector (0 downto 0) := "0";
signal B5 : STD_LOGIC_Vector (0 downto 0) := "0";
signal B6 : STD_LOGIC_Vector (0 downto 0) := "0";
signal B7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal C7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal D0 : STD_LOGIC_Vector (0 downto 0) := "0";
signal D1 : STD_LOGIC_Vector (0 downto 0) := "0";
signal D2 : STD_LOGIC_Vector (0 downto 0) := "0";
signal D3 : STD_LOGIC_Vector (0 downto 0) := "0";
signal D4 : STD_LOGIC_Vector (0 downto 0) := "0";
signal D5 : STD_LOGIC_Vector (0 downto 0) := "0";
signal D6 : STD_LOGIC_Vector (0 downto 0) := "0";
signal D7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal E0 : STD_LOGIC_Vector (0 downto 0) := "0";
signal E1 : STD_LOGIC_Vector (0 downto 0) := "0";
signal E2 : STD_LOGIC_Vector (0 downto 0) := "0";
signal E3 : STD_LOGIC_Vector (0 downto 0) := "0";
signal E4 : STD_LOGIC_Vector (0 downto 0) := "0";
signal E5 : STD_LOGIC_Vector (0 downto 0) := "0";
signal E6 : STD_LOGIC_Vector (0 downto 0) := "0";
signal E7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal F0 : STD_LOGIC_Vector (0 downto 0) := "0";
signal F1 : STD_LOGIC_Vector (0 downto 0) := "0";
signal F2 : STD_LOGIC_Vector (0 downto 0) := "0";
signal F3 : STD_LOGIC_Vector (0 downto 0) := "0";
signal F4 : STD_LOGIC_Vector (0 downto 0) := "0";
signal F5 : STD_LOGIC_Vector (0 downto 0) := "0";
signal F6 : STD_LOGIC_Vector (0 downto 0) := "0";
signal F7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal G7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal H0 : STD_LOGIC_Vector (0 downto 0) := "0";
signal H1 : STD_LOGIC_Vector (0 downto 0) := "0";
signal H2 : STD_LOGIC_Vector (0 downto 0) := "0";
signal H3 : STD_LOGIC_Vector (0 downto 0) := "0";
signal H4 : STD_LOGIC_Vector (0 downto 0) := "0";
signal H5 : STD_LOGIC_Vector (0 downto 0) := "0";
signal H6 : STD_LOGIC_Vector (0 downto 0) := "0";
signal H7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal I0 : STD_LOGIC_Vector (0 downto 0) := "0";
signal I1 : STD_LOGIC_Vector (0 downto 0) := "0";
signal I2 : STD_LOGIC_Vector (0 downto 0) := "0";
signal I3 : STD_LOGIC_Vector (0 downto 0) := "0";
signal I4 : STD_LOGIC_Vector (0 downto 0) := "0";
signal I5 : STD_LOGIC_Vector (0 downto 0) := "0";
signal I6 : STD_LOGIC_Vector (0 downto 0) := "0";
signal I7 : STD_LOGIC_Vector (0 downto 0) := "0";

signal Buff : STD_LOGIC_Vector (0 downto 0) := "0";

signal NOT_CLK : STD_LOGIC := '0';


begin


Reg_7 : SR_1bit
  PORT MAP (
    D => D7,
    CLK => CLK,
    SCLR => Reset,
    Q => Buff
  );
  
Buff_7 : SR_1bit
  PORT MAP (
    D => Buff,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => B7
  );

FA_7 : Adder
  PORT MAP (
    A => A7,
    B => E6,
    C_IN => C7(0),
    C_OUT => E7(0),
    S => D7
  );

FA_6 : Adder
  PORT MAP (
    A => A6,
    B => B7,
    C_IN => E5(0),
    C_OUT => E6(0),
    S => D6
  );
  
FA_5 : Adder
  PORT MAP (
    A => A5,
    B => B6,
    C_IN => E4(0),
    C_OUT => E5(0),
    S => D5
  );

FA_4 : Adder
  PORT MAP (
    A => A4,
    B => B5,
    C_IN => E3(0),
    C_OUT => E4(0),
    S => D4
  );
  
FA_3 : Adder
  PORT MAP (
    A => A3,
    B => B4,
    C_IN => E2(0),
    C_OUT => E3(0),
    S => D3
  ); 
  
FA_2 : Adder
  PORT MAP (
    A => A2,
    B => B3,
    C_IN => E1(0),
    C_OUT => E2(0),
    S => D2
  ); 

FA_1 : Adder
  PORT MAP (
    A => A1,
    B => B2,
    C_IN => E0(0),
    C_OUT => E1(0),
    S => D1
  ); 
  
FA_0 : HAdder
  PORT MAP (
    A => A0,
    B => B1,
    C_OUT => E0(0),
    S => D0
  ); 
  
Reg_6A : SR_1bit
  PORT MAP (
    D => D6,
    CLK => CLK,
    SCLR => Reset,
    Q => F6
  );
  
Reg_5A : SR_1bit
  PORT MAP (
    D => D5,
    CLK => CLK,
    SCLR => Reset,
    Q => F5
  );

Reg_4A : SR_1bit
  PORT MAP (
    D => D4,
    CLK => CLK,
    SCLR => Reset,
    Q => F4
  );
  
Reg_3A : SR_1bit
  PORT MAP (
    D => D3,
    CLK => CLK,
    SCLR => Reset,
    Q => F3
  );
  
Reg_2A : SR_1bit
  PORT MAP (
    D => D2,
    CLK => CLK,
    SCLR => Reset,
    Q => F2
  );

Reg_1A : SR_1bit
  PORT MAP (
    D => D1,
    CLK => CLK,
    SCLR => Reset,
    Q => F1
  );
  
Reg_0A : SR_1bit
  PORT MAP (
    D => D0,
    CLK => CLK,
    SCLR => Reset,
    Q => F0
  );
  
Reg_7B : SR_1bit
  PORT MAP (
    D => E7,
    CLK => CLK,
    SCLR => Reset,
    Q => G7
  );
  
  
Buff_6A : SR_1bit
  PORT MAP (
    D => F6,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => B6
  );
  
Buff_5A : SR_1bit
  PORT MAP (
    D => F5,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => B5
  );

Buff_4A : SR_1bit
  PORT MAP (
    D => F4,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => B4
  );
  
Buff_3A : SR_1bit
  PORT MAP (
    D => F3,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => B3
  );
  
Buff_2A : SR_1bit
  PORT MAP (
    D => F2,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => B2
  );

Buff_1A : SR_1bit
  PORT MAP (
    D => F1,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => B1
  );

Buff_0A : SR_1bit
  PORT MAP (
    D => F0,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => B0
  );
  
Buff_7B : SR_1bit
  PORT MAP (
    D => G7,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => C7
  );
  
 
Reg_Out0 : SR_1bit
  PORT MAP (
    D => I1,
    CLK => CLK,
    SCLR => Reset,
    Q => H0
  );
  
Reg_Out1 : SR_1bit
  PORT MAP (
    D => I2,
    CLK => CLK,
    SCLR => Reset,
    Q => H1
  );

Reg_Out2 : SR_1bit
  PORT MAP (
    D => I3,
    CLK => CLK,
    SCLR => Reset,
    Q => H2
  );
  
Reg_Out3 : SR_1bit
  PORT MAP (
    D => I4,
    CLK => CLK,
    SCLR => Reset,
    Q => H3
  );
  
Reg_Out4 : SR_1bit
  PORT MAP (
    D => I5,
    CLK => CLK,
    SCLR => Reset,
    Q => H4
  );
  
Reg_Out5 : SR_1bit
  PORT MAP (
    D => I6,
    CLK => CLK,
    SCLR => Reset,
    Q => H5
  );
  
Reg_Out6 : SR_1bit
  PORT MAP (
    D => I7,
    CLK => CLK,
    SCLR => Reset,
    Q => H6
  );
  
Reg_Out7 : SR_1bit
  PORT MAP (
    D => B0,
    CLK => CLK,
    SCLR => Reset,
    Q => H7
  );
  
Buff_Out0 : SR_1bit
  PORT MAP (
    D => H0,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => I0
  );
  
Buff_Out1 : SR_1bit
  PORT MAP (
    D => H1,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => I1
  );

Buff_Out2 : SR_1bit
  PORT MAP (
    D => H2,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => I2
  );
  
Buff_Out3 : SR_1bit
  PORT MAP (
    D => H3,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => I3
  );
  
Buff_Out4 : SR_1bit
  PORT MAP (
    D => H4,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => I4
  );
  
Buff_Out5 : SR_1bit
  PORT MAP (
    D => H5,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => I5
  );
  
Buff_Out6 : SR_1bit
  PORT MAP (
    D => H6,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => I6
  );
  
Buff_Out7 : SR_1bit
  PORT MAP (
    D => H7,
    CLK => NOT_CLK,
    SCLR => Reset,
    Q => I7
  );

Output(0) <= I0(0);
Output(1) <= I1(0);
Output(2) <= I2(0);
Output(3) <= I3(0);
Output(4) <= I4(0);
Output(5) <= I5(0);
Output(6) <= I6(0);
Output(7) <= I7(0);
Output(8) <= B0(0);
Output(9) <= B1(0);
Output(10) <= B2(0);
Output(11) <= B3(0);
Output(12) <= B4(0);
Output(13) <= B5(0);
Output(14) <= B6(0);
Output(15) <= B7(0);

A0(0) <= Input AND Beban(0);
A1(0) <= Input AND Beban(1);
A2(0) <= Input AND Beban(2);
A3(0) <= Input AND Beban(3);
A4(0) <= Input AND Beban(4);
A5(0) <= Input AND Beban(5);
A6(0) <= Input AND Beban(6);
A7(0) <= Input AND Beban(7);

NOT_CLK <= NOT CLK;
  

end Behavioral;
