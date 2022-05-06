----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2021 06:51:30 PM
-- Design Name: 
-- Module Name: TOP_LEVEL_32_BIT - Behavioral
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

entity TOP_LEVEL_32_BIT is
  generic (n : integer := 31);
  Port ( 
        Clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        rx_line : in STD_LOGIC;
--        rx_data : in STD_LOGIC_VECTOR (n downto 0);
        tx_line : out STD_LOGIC;
--        tx_data : out STD_LOGIC_VECTOR (n downto 0);
        LED_bobot_cmplt : out STD_LOGIC;
        LED_masukan_cmplt : out STD_LOGIC;
        LED_conv_cmplt : out STD_LOGIC;
        LED_done : out STD_LOGIC);
end TOP_LEVEL_32_BIT;

architecture Behavioral of TOP_LEVEL_32_BIT is
COMPONENT uart_rx_32_bit is
    generic (g_CLKS_PER_BIT : integer := 10417;
             g_CLKS_PER_HALF_BIT : integer := 5208;
             n : integer := 31 );
    Port ( CLK              : in STD_LOGIC;
           CLR              : in STD_LOGIC;
           RX_LINE          : in STD_LOGIC;
           RX_DATA_VALID    : out  STD_LOGIC;
           RX_DATA          : out  STD_LOGIC_VECTOR(n downto 0));
end COMPONENT;

COMPONENT uart_tx_32_bit is
    generic (g_CLKS_PER_BIT : integer := 10417;
             n : integer := 31 );
    Port ( CLK              : in STD_LOGIC;
           CLR              : in STD_LOGIC;
           TX_DATA_VALID    : in STD_LOGIC;
           TX_DATA          : in STD_LOGIC_VECTOR(n downto 0);
           TX_LINE          : out STD_LOGIC;
           TX_ACTIVE        : out STD_LOGIC;
           TX_DONE          : out STD_LOGIC);
end COMPONENT;

COMPONENT DATA_PATH_CONV_32_bit is
  generic (n : integer := 31);
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
end COMPONENT;

COMPONENT CONTROL_UNIT_CONV is
  Port ( 
  Clk                   : in STD_LOGIC;
  Reset                 : in STD_LOGIC;
  Bobot_cmplt           : in std_logic;
  Input_cmplt           : in std_logic; 
  Conv_cmplt            : in std_logic;
  Buff_bobot_Active     : Out STD_LOGIC;
  Buff_masukan_Active   : Out STD_LOGIC;
  Conv_Active           : Out STD_LOGIC;
  TX_DATA_VALID         : out STD_LOGIC;
  Sys_Reset             : out STD_LOGIC);
end COMPONENT;

signal Bobot_cmplt : std_logic := '0';  --Penyimpanan nilai bobot selesai, lanjut ke masukan
signal Input_cmplt : std_logic := '0';  --Penyimpanan nilai masukan selesai, lanjut ke conv
signal Conv_cmplt : std_logic := '0';   --Penyimpanan nilai konvolusi selesai, lanjut ke maxpool
--Signal kendali
signal  Buff_bobot_Active : STD_LOGIC := '0';
signal  Buff_masukan_Active : STD_LOGIC := '0';
signal  Conv_Active : STD_LOGIC := '0';
Signal  Sys_Reset : STD_LOGIC := '0';
---------------------------------------------------------------------------
--signal signal
Signal RX_DATA_VALID : STD_LOGIC := '1'; 
Signal TX_DATA_VALID : STD_LOGIC := '0'; 
Signal TX_ACTIVE : STD_LOGIC := '0'; 
Signal RX_DATA : std_logic_vector(n downto 0); 
Signal TX_DATA : std_logic_vector(n downto 0); 

begin
UART_Recieve : UART_RX_32_bit
    Port map(
        CLK           => Clk,
        CLR           => Reset,
        RX_LINE       => rx_line,
        RX_DATA_VALID => RX_DATA_VALID,
        RX_DATA       => RX_DATA);
        
UART_Transmite : UART_TX_32_bit
    Port map(
        CLK           => Clk,
        CLR           => Reset,
        TX_LINE       => tx_line,
        TX_ACTIVE     => TX_ACTIVE,
        TX_DATA_VALID => TX_DATA_VALID,
        TX_DATA       => TX_DATA,
        TX_DONE       => LED_DONE);

Unit_Data_Path : Data_path_conv_32_bit
    Port map(
        RX_DATA             => RX_DATA            ,
        RX_DATA_VALID       => RX_DATA_VALID      ,
        Clk                 => Clk                ,
        Reset               => Reset              ,
        Buff_bobot_Active   => Buff_bobot_Active  ,
        Buff_masukan_Active => Buff_masukan_Active,
        Conv_Active         => Conv_Active        ,
        Bobot_cmplt         => Bobot_cmplt        ,
        Input_cmplt         => Input_cmplt        ,
        Conv_cmplt          => Conv_cmplt         ,
        TX_DATA             => TX_DATA            );
        
Unit_Control_Unit : Control_Unit_Conv
    Port map(
       Clk                 => Clk                ,
       Reset               => Reset              ,
       Bobot_cmplt         => Bobot_cmplt        ,
       Input_cmplt         => Input_cmplt        ,
       Conv_cmplt          => Conv_cmplt         ,
       Buff_bobot_Active   => Buff_bobot_Active  ,
       Buff_masukan_Active => Buff_masukan_Active,
       Conv_Active         => Conv_Active        ,
       TX_DATA_VALID       => TX_DATA_VALID      ,
       Sys_Reset           => Sys_Reset          ); 
       
LED_bobot_cmplt     <= Bobot_cmplt;
LED_masukan_cmplt   <= Input_cmplt;
LED_conv_cmplt      <= Conv_cmplt;


end Behavioral;
