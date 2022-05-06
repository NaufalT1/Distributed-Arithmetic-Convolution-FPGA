----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/07/2020 04:25:15 PM
-- Design Name: 
-- Module Name: TOP_LEVEL - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP_LVL_COBA is
--  generic (
--        g_CLKS_PER_BIT : integer := 10417;  --Baudrate
--        g_CLKS_PER_HALF_BIT : integer := 5208 );
  Port ( 
        Clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        rx_data : in STD_LOGIC_VECTOR (7 downto 0);
        tx_data : out STD_LOGIC_VECTOR (7 downto 0);
        LED_bobot_cmplt : out STD_LOGIC;
        LED_masukan_cmplt : out STD_LOGIC;
        LED_conv_cmplt : out STD_LOGIC;
        LED_mxpool_cmplt : out STD_LOGIC;
        LED_done : out STD_LOGIC);
end TOP_LVL_COBA;

architecture Behavioral of TOP_LVL_COBA is

COMPONENT Data_Path is
  Port ( 
        Clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        rx_data : in std_logic_vector(7 downto 0);
        tx_data : out std_logic_vector(7 downto 0);
        Buff_bobot_Active : in STD_LOGIC;
        Buff_masukan_Active : in STD_LOGIC;
        Conv_Active : in STD_LOGIC;
        Buff_Conv_Active : in STD_LOGIC;
        Mxpool_Active : in STD_LOGIC;
        Buff_Mxpool_Active : in STD_LOGIC;
        Buff_Luaran : in STD_LOGIC;
        RX_DATA_VALID : in STD_LOGIC;
        Bobot_cmplt : out std_logic; 
        Input_cmplt : out std_logic; 
        Conv_cmplt : out std_logic;
        Mxpool_cmplt : out std_logic;
        Conv_done : out STD_LOGIC;
        Mxpool_done : out STD_LOGIC; 
        done : out STD_LOGIC);
end COMPONENT;

COMPONENT Control_Unit is
  Port ( 
  Clk : in STD_LOGIC;
  Reset : in STD_LOGIC;
  Bobot_cmplt : in std_logic;
  Input_cmplt : in std_logic; 
  Conv_cmplt : in std_logic;
  Mxpool_cmplt : in std_logic;
  Conv_done : in STD_LOGIC;
  Mxpool_done : in STD_LOGIC; 
  done : in STD_LOGIC;
  LED_bobot_cmplt : out STD_LOGIC;
  LED_masukan_cmplt : out STD_LOGIC;
  LED_conv_cmplt : out STD_LOGIC;
  LED_mxpool_cmplt : out STD_LOGIC;
  LED_done : out STD_LOGIC;
  Clk_Conv : out STD_LOGIC := '0';
  Buff_bobot_Active : Out STD_LOGIC;
  Buff_masukan_Active : Out STD_LOGIC;
  Conv_Active : Out STD_LOGIC;
  Buff_Conv_Active : Out STD_LOGIC;
  Mxpool_Active : Out STD_LOGIC;
  Buff_Mxpool_Active : Out STD_LOGIC;
  Buff_Luaran_Active : Out STD_LOGIC;
  Sys_Reset : out STD_LOGIC
  );
end COMPONENT;

--Signal
--Signal umpan balik
signal Bobot_cmplt : std_logic := '0';  --Penyimpanan nilai bobot selesai, lanjut ke masukan
signal Input_cmplt : std_logic := '0';  --Penyimpanan nilai masukan selesai, lanjut ke conv
signal Conv_cmplt : std_logic := '0';   --Penyimpanan nilai konvolusi selesai, lanjut ke maxpool
signal Mxpool_cmplt : std_logic := '0'; --Penyimpanan nilai maxpool selesai, lanjut ke luaran data 
signal Conv_done : STD_LOGIC := '0';    --Sdh dikonvolusi, lannjut ke penyimpanan nilai
signal Mxpool_done : STD_LOGIC := '0';  --Sdh di-maxpool, lanjut ke penyimpanan nilai
signal done : STD_LOGIC := '0';         --Proses selesai
--Signal kendali
signal  Buff_bobot_Active : STD_LOGIC := '0';
signal  Buff_masukan_Active : STD_LOGIC := '0';
signal  Conv_Active : STD_LOGIC := '0';
Signal  Buff_Conv_Active : STD_LOGIC := '0';
Signal  Mxpool_Active : STD_LOGIC := '0';
Signal  Buff_Mxpool_Active : STD_LOGIC := '0';
Signal  Buff_Luaran : STD_LOGIC := '0';
Signal  Sys_Reset : STD_LOGIC;
---------------------------------------------------------------------------
--signal signal
Signal RX_DATA_VALID : STD_LOGIC := '1'; 
Signal TX_DATA_VALID : STD_LOGIC := '1';  

begin
--Generate Komponen--

CU : Control_Unit
    Port map(
       Clk => Clk,
       Reset => Reset,
       Bobot_cmplt => Bobot_cmplt,
       Input_cmplt => Input_cmplt,
       Conv_cmplt => Conv_cmplt,
       Mxpool_cmplt => Mxpool_cmplt,
       Conv_done => Conv_done,
       Mxpool_done => Mxpool_done,
       done => done,
       LED_bobot_cmplt => LED_bobot_cmplt,
       LED_masukan_cmplt => LED_masukan_cmplt,
       LED_conv_cmplt => LED_conv_cmplt,
       LED_mxpool_cmplt => LED_mxpool_cmplt,
       LED_done => LED_done,
       Buff_bobot_Active => Buff_bobot_Active,
       Buff_masukan_Active => Buff_masukan_Active,
       Conv_Active => Conv_Active,
       Buff_Conv_Active => Buff_Conv_Active,
       Mxpool_Active => Mxpool_Active,
       Buff_Mxpool_Active => Buff_Mxpool_Active,
       Buff_Luaran_Active => Buff_Luaran,
       Sys_Reset => Sys_Reset);

DP : Data_Path
  Port map ( 
        Clk => Clk,
        reset => sys_reset,
        rx_data => rx_data,
        tx_data => tx_data,
        Buff_bobot_Active => Buff_bobot_Active,
        Buff_masukan_Active => Buff_masukan_Active,
        Conv_Active => Conv_Active,
        Buff_Conv_Active => Buff_Conv_Active,
        Mxpool_Active => Mxpool_Active,
        Buff_Mxpool_Active => Buff_Mxpool_Active,
        Buff_Luaran => Buff_Luaran,
        RX_DATA_VALID => RX_DATA_VALID,
        Bobot_cmplt => Bobot_cmplt,
        Input_cmplt => Input_cmplt,
        Conv_cmplt => Conv_cmplt,
        Mxpool_cmplt => Mxpool_cmplt,
        Conv_done => Conv_done,
        Mxpool_done => Mxpool_done,
--        Cnt => Cnt,
        done => done);

------------------------------------------------------------------------------------------------


end Behavioral;
