----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2020 05:08:43 PM
-- Design Name: 
-- Module Name: Data_Path - Behavioral
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

entity Data_Path is
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
        TX_DATA_VALID : out STD_LOGIC;
        TX_ACTIVE : in STD_LOGIC;
        Bobot_cmplt : out std_logic; 
        Input_cmplt : out std_logic; 
        Conv_cmplt : out std_logic;
        Mxpool_cmplt : out std_logic;
        Conv_done : out STD_LOGIC;
        Mxpool_done : out STD_LOGIC; 
--        cnt : out STD_LOGIC_VECTOR (3 downto 0);
        done : out STD_LOGIC
        );
end Data_Path;

architecture Behavioral of Data_Path is
component Buff_Bobot is
  Port (
    Data_in : in std_logic_vector(7 downto 0);
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Buff_Bobot_Active : in STD_LOGIC;
    RX_DATA_VALID     : in STD_LOGIC;
    Bobot_cmpltt : out STD_LOGIC;
    Bobot_Conv_0 : out STD_LOGIC_VECTOR(7 downto 0);
    Bobot_Conv_1 : out STD_LOGIC_VECTOR(7 downto 0);
    Bobot_Conv_2 : out STD_LOGIC_VECTOR(7 downto 0);
    Bobot_Conv_3 : out STD_LOGIC_VECTOR(7 downto 0);
    Bobot_Conv_4 : out STD_LOGIC_VECTOR(7 downto 0);
    Bobot_Conv_5 : out STD_LOGIC_VECTOR(7 downto 0);
    Bobot_Conv_6 : out STD_LOGIC_VECTOR(7 downto 0);
    Bobot_Conv_7 : out STD_LOGIC_VECTOR(7 downto 0);
    Bobot_Conv_8 : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;

COMPONENT Buff_Masukan is
  Port (
    Data_in : in std_logic_vector(7 downto 0);
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Buff_masukan_Active : in STD_LOGIC;
    RX_DATA_VALID       : in STD_LOGIC;
    Conv_Active : in STD_LOGIC;
    Input_cmplt : out std_logic;
    Conv_cmplt : out std_logic;
    Conv_done : out STD_LOGIC;
    Reset_conv : out std_logic;
    Count : Out std_logic_vector (3 downto 0);
    Input_Conv_0 : out STD_LOGIC_VECTOR(7 downto 0);
    Input_Conv_1 : out STD_LOGIC_VECTOR(7 downto 0);
    Input_Conv_2 : out STD_LOGIC_VECTOR(7 downto 0);
    Input_Conv_3 : out STD_LOGIC_VECTOR(7 downto 0);
    Input_Conv_4 : out STD_LOGIC_VECTOR(7 downto 0);
    Input_Conv_5 : out STD_LOGIC_VECTOR(7 downto 0);
    Input_Conv_6 : out STD_LOGIC_VECTOR(7 downto 0);
    Input_Conv_7 : out STD_LOGIC_VECTOR(7 downto 0);
    Input_Conv_8 : out STD_LOGIC_VECTOR(7 downto 0)
  );
end COMPONENT;

COMPONENT Buff_Conv is
  Port ( 
    Luaran_Conv : in std_logic_vector(7 downto 0);
    Clk : in STD_LOGIC;
    Buff_Conv_Active : in STD_LOGIC;
    Mxpool_Active : in STD_LOGIC;
    reset         : in STD_LOGIC;
    Mxpool_done : out STD_LOGIC;
    Masukan_MaxPool_0 : out STD_LOGIC_VECTOR(7 downto 0);
    Masukan_MaxPool_1 : out STD_LOGIC_VECTOR(7 downto 0);
    Masukan_MaxPool_2 : out STD_LOGIC_VECTOR(7 downto 0);
    Masukan_MaxPool_3 : out STD_LOGIC_VECTOR(7 downto 0)
  );
end COMPONENT;

COMPONENT MaxPool is
    Port ( Input_0 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_1 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_2 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_3 : in STD_LOGIC_VECTOR (7 downto 0);
           Output : out STD_LOGIC_VECTOR (7 downto 0));
end COMPONENT;

COMPONENT Convolution is
    Port ( Input_0 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_1 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_2 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_3 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_4 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_5 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_6 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_7 : in STD_LOGIC_VECTOR (7 downto 0);
           Input_8 : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_0   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_1   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_2   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_3   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_4   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_5   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_6   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_7   : in STD_LOGIC_VECTOR (7 downto 0);
           Beban_8   : in STD_LOGIC_VECTOR (7 downto 0);
           Bias      : in STD_LOGIC_VECTOR (15 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (7 downto 0));
end COMPONENT;

COMPONENT Buff_Mxpool is
  Port ( 
    Luaran_Maxpool_0 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_1 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_2 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_3 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_4 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_5 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_6 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_7 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_8 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_9 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_10 : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_11 : in std_logic_vector(7 downto 0);
    Clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    Buff_Mxpool_Active : in STD_LOGIC;
    Buff_Luaran : in STD_LOGIC;
    TX_DATA_VALID : out STD_LOGIC;
    TX_ACTIVE : in STD_LOGIC;
    Mxpool_cmplt : out STD_LOGIC;
    done : out STD_LOGIC;
    Data_Luaran : out STD_LOGIC_VECTOR(7 downto 0)
  );
end COMPONENT;

--Signal
--Signal untuk masukan ke convolusi--
signal Input_Conv_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_Conv_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_Conv_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_Conv_3 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_Conv_4 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_Conv_5 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_Conv_6 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_Conv_7 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Input_Conv_8 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
----------------------------------------------------------------------
--Signal untuk bobot ke convolusi--
type t_Bobot is array (0 to 11) of std_logic_vector(7 downto 0);
signal Bobot_Conv_0 : t_Bobot;
signal Bobot_Conv_1 : t_Bobot;
signal Bobot_Conv_2 : t_Bobot;
signal Bobot_Conv_3 : t_Bobot;
signal Bobot_Conv_4 : t_Bobot;
signal Bobot_Conv_5 : t_Bobot;
signal Bobot_Conv_6 : t_Bobot;
signal Bobot_Conv_7 : t_Bobot;
signal Bobot_Conv_8 : t_Bobot;
signal Bobot_Conv_9 : t_Bobot;
--signal kendali buff bobot
type t_bobot_active is array (0 to 11) of std_logic;
signal s_Buff_Bobot_Active : t_bobot_active;
signal s_Bobot_cmplt : STD_LOGIC;

------------------------------------------------------------------------
--Signal bias untuk Konvolusi--
type t_Bias is array (0 to 11) of std_logic_vector(15 downto 0);
signal Bias : t_Bias;
------------------------------------------------------------------------
--Signal untuk kendali Convolusi--
signal Clk_Conv : STD_LOGIC := '0';
signal Reset_Conv : STD_LOGIC := '0';
signal Count : STD_LOGIC_VECTOR (3 downto 0) := "0000";
------------------------------------------------------------------------
--Signal untuk luaran konvolusi--
type t_Luaran is array (0 to 11) of std_logic_vector(7 downto 0);
signal Luaran_Conv : t_Luaran;
-------------------------------------------------------------------------

--Signal masukan untuk MaxPool--
type t_Masukan_mxpool is array (0 to 11) of std_logic_vector(7 downto 0);
signal Masukan_MaxPool_0 : t_Masukan_mxpool;
signal Masukan_MaxPool_1 : t_Masukan_mxpool;
signal Masukan_MaxPool_2 : t_Masukan_mxpool;
signal Masukan_MaxPool_3 : t_Masukan_mxpool;
--------------------------------------------------------------------------
--Signal luaran untuk Maxpool--
type t_Luaran_mxpool is array (0 to 11) of std_logic_vector(7 downto 0);
signal Luaran_MaxPool : t_Luaran_mxpool;
-------------------------------------------------------------------------

--Signal UART ke bobot--
type t_Bobot_matrix is array (0 to 11, 0 to 8) of std_logic_vector(7 downto 0);
signal Bobot : t_Bobot_matrix;

begin
--Definisi Bias--
--Bias(0) <= "1111011001000101"; -- -2491
--Bias(1) <= "1100100000111100"; -- -14276
--Bias(2) <= "1100011000010001"; -- -14831
--Bias(3) <= "0001001110010101"; -- 5013
--Bias(4) <= "0000010011110010"; -- 1266
--Bias(5) <= "1111111101011100"; -- -164
--Bias(6) <= "1011011011101111"; -- -18705
--Bias(7) <= "1010111111011111"; -- -20513 
--Bias(8) <= "1000000000000000"; -- -32768 --Seharusnya -37363
--Bias(9) <= "1111011001010111"; -- -2473
--Bias(10) <= "1101101010110001"; -- -9551
--Bias(11) <= "1010010110101110"; -- -23122
--non aktif bias
g_bias : for I in 0 to 11 generate
Bias(I) <= (others => '0');
end generate g_bias;

g_buff_bobot : for I in 0 to 11 generate
First_Buff_Bobot : if(I=0) generate
unit_buff_bobot : buff_bobot
    port map(
        Data_in => RX_DATA,
        Clk => Clk,
        Reset => Reset,
        Buff_Bobot_Active => Buff_Bobot_Active,
        RX_DATA_VALID => RX_DATA_VALID,
        Bobot_cmpltt => s_Buff_Bobot_Active(I),
        Bobot_Conv_0 => Bobot(I,0),
        Bobot_Conv_1 => Bobot(I,1),
        Bobot_Conv_2 => Bobot(I,2),
        Bobot_Conv_3 => Bobot(I,3),
        Bobot_Conv_4 => Bobot(I,4),
        Bobot_Conv_5 => Bobot(I,5),
        Bobot_Conv_6 => Bobot(I,6),
        Bobot_Conv_7 => Bobot(I,7),
        Bobot_Conv_8 => Bobot(I,8));
end generate First_Buff_Bobot;
Rest_Buff_Bobot : if(I>0) generate
unit_buff_bobot : buff_bobot
    port map(
        Data_in => RX_DATA,
        Clk => Clk,
        Reset => Reset,
        Buff_Bobot_Active => s_Buff_Bobot_Active(I-1),
        RX_DATA_VALID => RX_DATA_VALID,
        Bobot_cmpltt => s_Buff_Bobot_Active(I),
        Bobot_Conv_0 => Bobot(I,0),
        Bobot_Conv_1 => Bobot(I,1),
        Bobot_Conv_2 => Bobot(I,2),
        Bobot_Conv_3 => Bobot(I,3),
        Bobot_Conv_4 => Bobot(I,4),
        Bobot_Conv_5 => Bobot(I,5),
        Bobot_Conv_6 => Bobot(I,6),
        Bobot_Conv_7 => Bobot(I,7),
        Bobot_Conv_8 => Bobot(I,8));
end generate Rest_Buff_Bobot;
END GENERATE g_buff_bobot;
Bobot_cmplt <= s_Buff_Bobot_Active(11);

unit_Buff_Masukan : Buff_Masukan
  Port map (
    Data_in => RX_DATA,
    Clk => Clk,
    Reset => Reset,
    Buff_masukan_Active => Buff_masukan_Active,
    RX_DATA_VALID => RX_DATA_VALID,
    Conv_Active => Conv_Active,
    Input_cmplt => Input_cmplt,
    Conv_cmplt => Conv_cmplt,
    Conv_done => Conv_done,
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

Conv_Layer_1 : for I in 0 to 11 generate
Unit_Conv : Convolution
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
        Beban_0 => Bobot(I,0),
        Beban_1 => Bobot(I,1),
        Beban_2 => Bobot(I,2),
        Beban_3 => Bobot(I,3),
        Beban_4 => Bobot(I,4),
        Beban_5 => Bobot(I,5),
        Beban_6 => Bobot(I,6),
        Beban_7 => Bobot(I,7),
        Beban_8 => Bobot(I,8),
        Bias => Bias(I),
        Clk => Clk,
        Reset => Reset_Conv,
        Count => Count,
        Output => Luaran_Conv(I));
END GENERATE Conv_Layer_1;

g_Buff_Conv : for I in 0 to 11 generate
First_Buff_Conv : if(I=0) generate
unit_Buff_Conv : Buff_Conv
  Port map ( 
    Luaran_Conv => Luaran_Conv(I),
    Clk => Clk,
    Buff_Conv_Active => Buff_Conv_Active,
    Mxpool_Active => Mxpool_Active,
    reset => reset,
    Mxpool_done => Mxpool_done,
    Masukan_MaxPool_0 => Masukan_MaxPool_0(I),
    Masukan_MaxPool_1 => Masukan_MaxPool_1(I),
    Masukan_MaxPool_2 => Masukan_MaxPool_2(I),
    Masukan_MaxPool_3 => Masukan_MaxPool_3(I));
END GENERATE First_Buff_Conv;
Rest_Buff_Conv : if(I>0) generate
unit_Buff_Conv : Buff_Conv
  Port map ( 
    Luaran_Conv => Luaran_Conv(I),
    Clk => Clk,
    Buff_Conv_Active => Buff_Conv_Active,
    Mxpool_Active => Mxpool_Active,
    reset => reset,
    Mxpool_done => Open,
    Masukan_MaxPool_0 => Masukan_MaxPool_0(I),
    Masukan_MaxPool_1 => Masukan_MaxPool_1(I),
    Masukan_MaxPool_2 => Masukan_MaxPool_2(I),
    Masukan_MaxPool_3 => Masukan_MaxPool_3(I));
END GENERATE Rest_Buff_Conv;
END GENERATE g_Buff_Conv;

g_Maxpool_Layer_1 : for I in 0 to 11 generate
Unit_mxpool : MaxPool
    Port map(
        Input_0 => Masukan_Maxpool_0(I),
        Input_1 => Masukan_Maxpool_1(I),
        Input_2 => Masukan_Maxpool_2(I),
        Input_3 => Masukan_Maxpool_3(I),
        Output => Luaran_Maxpool(I));
END GENERATE g_Maxpool_Layer_1;


Unit_Buff_Mxpool : Buff_Mxpool
  Port map( 
    Luaran_Maxpool_0 => Luaran_Maxpool(0),
    Luaran_Maxpool_1 => Luaran_Maxpool(1),  
    Luaran_Maxpool_2 => Luaran_Maxpool(2),  
    Luaran_Maxpool_3 => Luaran_Maxpool(3),  
    Luaran_Maxpool_4 => Luaran_Maxpool(4),  
    Luaran_Maxpool_5 => Luaran_Maxpool(5),  
    Luaran_Maxpool_6 => Luaran_Maxpool(6),  
    Luaran_Maxpool_7 => Luaran_Maxpool(7),  
    Luaran_Maxpool_8 => Luaran_Maxpool(8),  
    Luaran_Maxpool_9 => Luaran_Maxpool(9),  
    Luaran_Maxpool_10 => Luaran_Maxpool(10),
    Luaran_Maxpool_11 => Luaran_Maxpool(11),
    Clk => Clk,
    reset => reset,
    Buff_Mxpool_Active => Buff_Mxpool_Active,
    Buff_Luaran => Buff_Luaran,
    TX_DATA_VALID => TX_DATA_VALID,
    TX_ACTIVE => TX_ACTIVE,
    Mxpool_cmplt => Mxpool_cmplt,
    done => done,
    Data_Luaran => TX_DATA);




------------------------------------------------------------------------------------------------


--TX_DATA <= Bobot(11,8);
--TX_DATA <= Masukan(0,1);
--TX_DATA <= Input_Conv_0;
--TX_DATA <= Luaran_Conv(0);
--TX_DATA <= Masukan_Maxpool_3(0);
--TX_DATA <= Luaran_maxpool(0);

--cnt <= count;
end Behavioral;
