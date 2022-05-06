----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2021 11:09:33 PM
-- Design Name: 
-- Module Name: DATA_PATH_CONV_256_BIT - Behavioral
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

entity DATA_PATH_CONV_256_BIT is
  generic (n : integer := 255);
  Port ( 
    RX_DATA             : in std_logic_vector(n downto 0);
    RX_DATA_VALID       : in STD_LOGIC;
    Clk                 : in STD_LOGIC;
    Reset               : in STD_LOGIC;
    Buff_bobot_Active   : in STD_LOGIC;
    Buff_masukan_Active : in STD_LOGIC;
    Conv_Active         : in STD_LOGIC;
    Bobot_cmplt         : out std_logic; 
    Input_cmplt         : out std_logic; 
    Conv_cmplt          : out std_logic;
    TX_DATA             : out STD_LOGIC_VECTOR (n downto 0));
end DATA_PATH_CONV_256_BIT;

architecture Behavioral of DATA_PATH_CONV_256_BIT is
COMPONENT BUFF_BOBOT_CONV_256_bit is
  generic (n : integer := 255);
  Port ( 
    Data_in : in std_logic_vector(n downto 0);
    RX_DATA_VALID : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Buff_Bobot_Active : in STD_LOGIC;
    Bobot_cmplt : out STD_LOGIC := '0';
    Bobot_Conv_0 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_1 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_2 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_3 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_4 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_5 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_6 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_7 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Bobot_Conv_8 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0')
  );
end COMPONENT;

COMPONENT BUFF_MASUKAN_CONV_256_bit is
  generic (n : integer := 255);
  Port (
    Data_in : in std_logic_vector(n downto 0);
    RX_DATA_VALID : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Buff_masukan_Active : in STD_LOGIC;
    Conv_Active : in STD_LOGIC;
    Input_cmplt : out std_logic := '0';
    Conv_cmplt : out std_logic := '0';
    Reset_conv : out std_logic := '0';
    Count : Out std_logic_vector (15 downto 0) := (others => '0');
    Input_Conv_0 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_1 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_2 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_3 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_4 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_5 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_6 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_7 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0');
    Input_Conv_8 : out STD_LOGIC_VECTOR(n downto 0) := (others => '0')
  );
end COMPONENT;

COMPONENT Convolution_256_bit is
    generic (n : integer := 255);
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
           Count : in STD_LOGIC_VECTOR (15 downto 0);
           Output : out STD_LOGIC_VECTOR (n downto 0));
end COMPONENT;

--Signal
--Signal untuk masukan ke convolusi--
signal Input_Conv_0 : STD_LOGIC_VECTOR (n downto 0) := (others => '0');
signal Input_Conv_1 : STD_LOGIC_VECTOR (n downto 0) := (others => '0');
signal Input_Conv_2 : STD_LOGIC_VECTOR (n downto 0) := (others => '0');
signal Input_Conv_3 : STD_LOGIC_VECTOR (n downto 0) := (others => '0');
signal Input_Conv_4 : STD_LOGIC_VECTOR (n downto 0) := (others => '0');
signal Input_Conv_5 : STD_LOGIC_VECTOR (n downto 0) := (others => '0');
signal Input_Conv_6 : STD_LOGIC_VECTOR (n downto 0) := (others => '0');
signal Input_Conv_7 : STD_LOGIC_VECTOR (n downto 0) := (others => '0');
signal Input_Conv_8 : STD_LOGIC_VECTOR (n downto 0) := (others => '0');
----------------------------------------------------------------------
--Signal untuk bobot ke convolusi--
signal Bobot_Conv_0 : STD_LOGIC_VECTOR(n downto 0)  := (others => '0');
signal Bobot_Conv_1 : STD_LOGIC_VECTOR(n downto 0)  := (others => '0');
signal Bobot_Conv_2 : STD_LOGIC_VECTOR(n downto 0)  := (others => '0');
signal Bobot_Conv_3 : STD_LOGIC_VECTOR(n downto 0)  := (others => '0');
signal Bobot_Conv_4 : STD_LOGIC_VECTOR(n downto 0)  := (others => '0');
signal Bobot_Conv_5 : STD_LOGIC_VECTOR(n downto 0)  := (others => '0');
signal Bobot_Conv_6 : STD_LOGIC_VECTOR(n downto 0)  := (others => '0');
signal Bobot_Conv_7 : STD_LOGIC_VECTOR(n downto 0)  := (others => '0');
signal Bobot_Conv_8 : STD_LOGIC_VECTOR(n downto 0)  := (others => '0');
signal Bobot_Conv_9 : STD_LOGIC_VECTOR(n downto 0)  := (others => '0');

------------------------------------------------------------------------
--Signal bias untuk Konvolusi--
signal Bias : STD_LOGIC_VECTOR((2*n+1) downto 0 )   := (others => '0');
------------------------------------------------------------------------
--Signal untuk kendali Convolusi--
signal Reset_Conv : STD_LOGIC := '0';
signal Count : STD_LOGIC_VECTOR (15 downto 0)        := (others => '0');
------------------------------------------------------------------------

begin
unit_buff_bobot : buff_bobot_conv_256_bit
    port map(
        Data_in => RX_DATA,
        RX_DATA_VALID => RX_DATA_VALID,
        Clk => Clk,
        Reset => Reset,
        Buff_Bobot_Active => Buff_Bobot_Active,
        Bobot_cmplt => Bobot_cmplt,
        Bobot_Conv_0 => Bobot_Conv_0,
        Bobot_Conv_1 => Bobot_Conv_1,
        Bobot_Conv_2 => Bobot_Conv_2,
        Bobot_Conv_3 => Bobot_Conv_3,
        Bobot_Conv_4 => Bobot_Conv_4,
        Bobot_Conv_5 => Bobot_Conv_5,
        Bobot_Conv_6 => Bobot_Conv_6,
        Bobot_Conv_7 => Bobot_Conv_7,
        Bobot_Conv_8 => Bobot_Conv_8);
        
unit_Buff_Masukan : Buff_Masukan_CONV_256_bit
  Port map (
    Data_in => RX_DATA,
    RX_DATA_VALID => RX_DATA_VALID,
    Clk => Clk,
    Reset => Reset,
    Buff_masukan_Active => Buff_masukan_Active,
    Conv_Active => Conv_Active,
    Input_cmplt => Input_cmplt,
    Conv_cmplt => Conv_cmplt,
    Reset_conv => Reset_conv,
    Count => Count,
    Input_Conv_0 => Input_Conv_0,
    Input_Conv_1 => Input_Conv_1,
    Input_Conv_2 => Input_Conv_2,
    Input_Conv_3 => Input_Conv_3,
    Input_Conv_4 => Input_Conv_4,
    Input_Conv_5 => Input_Conv_5,
    Input_Conv_6 => Input_Conv_6,
    Input_Conv_7 => Input_Conv_7,
    Input_Conv_8 => Input_Conv_8);

Unit_Conv : Convolution_256_bit
    Port map(
        Input_0 => Input_Conv_0,
        Input_1 => Input_Conv_1,
        Input_2 => Input_Conv_2,
        Input_3 => Input_Conv_3,
        Input_4 => Input_Conv_4,
        Input_5 => Input_Conv_5,
        Input_6 => Input_Conv_6,
        Input_7 => Input_Conv_7,
        Input_8 => Input_Conv_8,
        Beban_0 => Bobot_Conv_0,
        Beban_1 => Bobot_Conv_1,
        Beban_2 => Bobot_Conv_2,
        Beban_3 => Bobot_Conv_3,
        Beban_4 => Bobot_Conv_4,
        Beban_5 => Bobot_Conv_5,
        Beban_6 => Bobot_Conv_6,
        Beban_7 => Bobot_Conv_7,
        Beban_8 => Bobot_Conv_8,
        Bias => Bias,
        Clk => Clk,
        Reset => Reset_Conv,
        Count => Count,
        Output => TX_DATA);


end Behavioral;
