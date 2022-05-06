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

entity TOP_LVL_COBA_2 is
--  generic (
--        g_CLKS_PER_BIT : integer := 10417;  --Baudrate
--        g_CLKS_PER_HALF_BIT : integer := 5208 );
  Port ( 
        Clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        rx_data : in std_logic_vector(7 downto 0);
        tx_data : out std_logic_vector(15 downto 0);
        LED_bobot_cmplt : out STD_LOGIC;
        LED_masukan_cmplt : out STD_LOGIC;
        LED_conv_cmplt : out STD_LOGIC;
        LED_mxpool_cmplt : out STD_LOGIC;
        LED_done : out STD_LOGIC;
        Cek_State : out STD_LOGIC_VECTOR (3 downto 0);
        done : out STD_LOGIC);
end TOP_LVL_COBA_2;

architecture Behavioral of TOP_LVL_COBA_2 is
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
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Count : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (15 downto 0));
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
------------------------------------------------------------------------
--Signal untuk kendali Convolusi--
signal Clk_Conv : STD_LOGIC := '0';
signal Reset_Conv : STD_LOGIC := '0';
signal Count : STD_LOGIC_VECTOR (3 downto 0) := "0000";
------------------------------------------------------------------------
--Signal untuk luaran konvolusi--
type t_Luaran is array (0 to 11) of std_logic_vector(15 downto 0);
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

--Signal UART--
--signal RX_DATA, TX_DATA : std_logic_vector(7 downto 0); --diuji sbg masukan sistem
signal done_rx, done_tx : std_logic;
signal valid_tx : std_logic;
--dr Wella
type STATEMACHINE_UART is (s_idle, s_startBit, s_dataBits, s_stopBit);--, s_Cleanup);
signal state : STATEMACHINE_UART := s_idle;
signal clkCount  : integer range 0 to 127 := 0;
signal dataIndex : integer range 0 to 7 := 0;
signal data      : std_logic_vector( 7 downto 0 ) := ( others => '0' );
signal dataValid : std_logic := '1';
signal TX_DATA_VALID : STD_LOGIC := '0'; 
signal TX_ACTIVE : STD_LOGIC := '0';
--------------------------------------------------------------------------

--Signal UART ke masukan--
type t_Input is array (0 to 27, 0 to 27) of std_logic_vector(7 downto 0);
signal Masukan : t_Input;
--Signal UART ke bobot--
type t_Bobot_matrix is array (0 to 11, 0 to 8) of std_logic_vector(7 downto 0);
signal Bobot : t_Bobot_matrix;

--Signal Conv ke Mem--
type t_Mem is array (0 to 11, 0 to 25, 0 to 25) of std_logic_vector(7 downto 0);
signal Mem_1 : t_Mem;

--Signal Mxpool ke Mem--
type t_Mem_2 is array (0 to 11, 0 to 24, 0 to 24) of std_logic_vector(7 downto 0);
signal Mem_2 : t_Mem_2;

--Signal kendali
signal Bobot_cmplt : std_logic := '0';  --Penyimpanan nilai bobot selesai, lanjut ke masukan
signal Input_cmplt : std_logic := '0';  --Penyimpanan nilai masukan selesai, lanjut ke conv
signal Conv_cmplt : std_logic := '0';   --Penyimpanan nilai konvolusi selesai, lanjut ke maxpool
signal Mxpool_cmplt : std_logic := '0'; --Penyimpanan nilai maxpool selesai, lanjut ke luaran data 
signal Conv_done : STD_LOGIC := '0';    --Sdh dikonvolusi, lannjut ke penyimpanan nilai
signal Mxpool_done : STD_LOGIC := '0';  --Sdh di-maxpool, lanjut ke penyimpanan nilai
signal mem_hndl : STD_LOGIC := '0';

type STATEMACHINE_SYS is (s_idle, s_masukan, s_bobot, s_conv, s_simpan_conv, s_mxpool, s_simpan_mxpool, s_luaran);--, s_Cleanup);
signal state_sys : STATEMACHINE_SYS := s_idle;

--debug purpose only
signal Statee : STD_LOGIC_VECTOR (3 downto 0) := "0000";
---------------------------------------------------------------------------
begin
--Generate Komponen--
Conv_Layer_1 : for I in 0 to 11 generate
Conv : Convolution
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
        Beban_0 => Bobot_Conv_0(I),
        Beban_1 => Bobot_Conv_1(I),
        Beban_2 => Bobot_Conv_2(I),
        Beban_3 => Bobot_Conv_3(I),
        Beban_4 => Bobot_Conv_4(I),
        Beban_5 => Bobot_Conv_5(I),
        Beban_6 => Bobot_Conv_6(I),
        Beban_7 => Bobot_Conv_7(I),
        Beban_8 => Bobot_Conv_8(I),
        Clk => Clk_Conv,
        Reset => Reset_Conv,
        Count => Count,
        Output => Luaran_Conv(I));
END GENERATE Conv_Layer_1;

Maxpool_Layer_1 : for I in 0 to 11 generate
mxpool : MaxPool
    Port map(
        Input_0 => Masukan_Maxpool_0(I),
        Input_1 => Masukan_Maxpool_1(I),
        Input_2 => Masukan_Maxpool_2(I),
        Input_3 => Masukan_Maxpool_3(I),
        Output => Luaran_Maxpool(I));
END GENERATE Maxpool_Layer_1;

Bobot_Layer_1 : for X in 0 to 11 generate
Bobot_Conv_0(x) <= Bobot(x,0);
Bobot_Conv_1(x) <= Bobot(x,1);
Bobot_Conv_2(x) <= Bobot(x,2);
Bobot_Conv_3(x) <= Bobot(x,3);
Bobot_Conv_4(x) <= Bobot(x,4);
Bobot_Conv_5(x) <= Bobot(x,5);
Bobot_Conv_6(x) <= Bobot(x,6);
Bobot_Conv_7(x) <= Bobot(x,7);
Bobot_Conv_8(x) <= Bobot(x,8);
END GENERATE Bobot_Layer_1;
------------------------------------------------------------------------------------------------
control : process(clk, reset)
variable i : integer range 0 to 12 := 0;
variable j : integer range 0 to 9 := 0;
variable x : integer range 0 to 12 := 0;
variable first_launch : std_logic := '0';

begin
if(reset='1') then
    state <= s_idle;
    i := 0;
    j := 0;
    x := 0;
    count <= "0000";
    first_launch := '0';
elsif(rising_edge(Clk)) then
    case state_sys is
        when s_idle =>
            Statee <="0001";
            if(first_launch = '0') then
                first_launch := '1';
                reset_conv <= '1';
                Clk_conv <= '0'; 
            else
                i := 0;
                j := 0;
                x := 0;
                reset_conv <= '0';
                Clk_Conv <= '0';
                if(dataValid = '1' AND Bobot_cmplt = '0') then
                    state_sys <= s_bobot;
                elsif(dataValid = '1' AND Bobot_cmplt = '1' AND Input_cmplt = '0') then
                    state_sys <= s_masukan;
                elsif(Bobot_cmplt = '1' AND Input_cmplt = '1' AND Conv_cmplt ='0') then
                    state_sys <= s_conv;
                else state_sys <= s_idle;
                end if;
            end if;
        when s_bobot =>
            Statee <="0010";
            if(i<12)then
                if(j<8) then
                    Bobot(i,j) <= RX_DATA;
                    j := j+1;
                else 
                    Bobot(i,j) <= RX_DATA;
                    if(i=11 AND j =8) then Bobot_cmplt <= '1'; state_sys <= s_idle; else Bobot_cmplt <= '0'; end if;
                    i := i+1;
                    j:= 0;
                    end if;
             else state_sys <= s_idle; end if;
         when s_masukan =>
            Statee <="0011";
            if(i<4)then
                if(j<3) then
                    Masukan(i,j) <= RX_DATA;
                    j := j+1;
                else 
                    Masukan(i,j) <= RX_DATA;
                    if(i=3 AND j =3) then Input_cmplt <= '1'; state_sys <= s_idle; else Input_cmplt <= '0'; state_sys <= s_masukan; end if;
                    i := i+1;
                    j:= 0;
                end if;
            else state_sys <= s_idle; end if;
         when s_conv =>
            Statee <="0100";
            if (count = "0000") then
                reset_conv <= '0';
                Clk_Conv <= Clk;
                Conv_done <= '0';
                Input_Conv_0 <= Masukan(i,j);
                Input_Conv_1 <= Masukan(i+0,j+1);
                Input_Conv_2 <= Masukan(i+0,j+2);
                Input_Conv_3 <= Masukan(i+1,j+0);
                Input_Conv_4 <= Masukan(i+1,j+1);
                Input_Conv_5 <= Masukan(i+1,j+2);
                Input_Conv_6 <= Masukan(i+2,j+0);
                Input_Conv_7 <= Masukan(i+2,j+1);
                Input_Conv_8 <= Masukan(i+2,j+2);
                Count <= Count + "0001";
            elsif(count < "1010") then
                Count <= Count + "0001";
                state_sys <= s_conv;
            elsif (count = "1010")then
                Count <= Count + "0001";
                state_sys <= s_simpan_conv;
            elsif (count = "1011")then
               count <= "0000";
               reset_conv <= '1';
            else
--                Input_Conv_0 <= "00000000";
--                Input_Conv_1 <= "00000000";
--                Input_Conv_2 <= "00000000";
--                Input_Conv_3 <= "00000000";
--                Input_Conv_4 <= "00000000";
--                Input_Conv_5 <= "00000000";
--                Input_Conv_6 <= "00000000";
--                Input_Conv_7 <= "00000000";
--                Input_Conv_8 <= "00000000";
            end if;
         when s_simpan_conv =>
            Conv_done <= '1';
            Clk_Conv <= '0';
--            if(mem_hndl = '1') then
--                Reset_Conv <='1';
                if(i<2) then 
                    Conv_cmplt <= '0';
                    if(j<1) then
                        j := j+1;
                    else 
                        i := i+1;
                        j := 0;
                    end if;
                    state_sys <= s_conv;
                else Conv_cmplt <= '1'; state_sys <= s_idle;
                end if;
--            else state_sys <= s_simpan_conv;
--            end if;
         when s_mxpool =>
         when s_simpan_mxpool =>
         when s_luaran =>
     end case;
end if;

end process;

--Mem_Layer_1 : for X in 0 to 11 generate
--Conv_ke_Mem : process (Clk)
----variable x : integer range 0 to 11 := 0;
--variable i : integer range 0 to 26 := 0;
--variable j : integer range 0 to 25 := 0;
--begin
--if(rising_edge(Clk) AND Conv_done ='1') then
----    for x in 0 to 11 loop
--    if(i<2)then
--        if(j<1) then
--            Mem_1(x,i,j) <= Luaran_Conv(x);
--            j := j+1;
--        else 
--            Mem_1(x,i,j) <= Luaran_Conv(x);
--            i := i+1;
--            j:= 0;
--         end if;
--    else
    
--    end if;
----    end loop;
--else
--end if;
--end process;
--END GENERATE Mem_Layer_1;

--Sig_Mxpool_1 : for X in 0 to 11 generate --Assign signal dari masing-masing array matrix ke array maxpool
--Meneruskan_ke_MxPool : process (Clk)
--variable i : integer range 0 to 25 := 0;
--variable j : integer range 0 to 24 := 0;
--begin
--if(Conv_cmplt = '1' AND rising_edge(Clk)) then
--        Masukan_Maxpool_0(I) <= Mem_1(x,i,j);
--        Masukan_Maxpool_1(I) <= Mem_1(x,i,j+1);
--        Masukan_Maxpool_2(I) <= Mem_1(x,i+1,j);
--        Masukan_Maxpool_3(I) <= Mem_1(x,i+1,j+1);
--        Mxpool_done <= '1';
----        if(i<1) then
----            if(j<0) then
----                j := j+2;
----            else 
----                i := i+2;
----                j := 0;
----            end if;
----        else
----        end if;
--else
--end if;
--end process;
--END GENERATE Sig_Mxpool_1;

--Mem_Layer_2 : for X in 0 to 11 generate
--Mxpool_ke_Mem : process (Clk)
----variable x : integer range 0 to 11 := 0;
--variable i : integer range 0 to 13 := 0;
--variable j : integer range 0 to 12 := 0;
--begin
--if(rising_edge(Clk) AND Mxpool_done ='1') then
----    for x in 0 to 11 loop
--    if(i<1)then
--        if(j<0) then
--            Mem_2(x,i,j) <= Luaran_Maxpool(x);
--            j := j+1;
--        else 
--            Mem_2(x,i,j) <= Luaran_Maxpool(x);
--            i := i+1;
--            j:= 0;
--         end if;
--    else
--    Mxpool_cmplt <= '1';
--    end if;
----    end loop;
--else
--end if;
--end process;
--END GENERATE Mem_Layer_2;

--Meneruskan_ke_Output : process (Clk)
--variable i : integer range 0 to 13 := 0;
--variable j : integer range 0 to 12 := 0;
--variable x : integer range 0 to 12 := 0;
--begin
--if (TX_DATA_VALID = '0' AND rising_edge(Clk) AND Mxpool_cmplt ='1') then
--  TX_DATA_VALID <= '1';
--  if(x < 12) then
--    if(i<1)then
--        if(j<0) then
----            TX_DATA <= MEM_2(x,i,j);
--            j := j+1;
--        else 
----            TX_DATA <= MEM_2(x,i,j);
--            i := i+1;
--            j:= 0;
--         end if;
--    else
--        x := x+1;
--        i := 0;
--    end if;
  
--  else
----  done <= '1';
--  end if;
--else
--end if;
--end process;

debug_LED : process (clk)
begin
if(bobot_cmplt = '1') then LED_bobot_cmplt <= '1'; else LED_bobot_cmplt <= '0'; end if;
if(Input_cmplt = '1') then LED_masukan_cmplt <= '1'; else LED_masukan_cmplt <= '0'; end if;
if(Conv_cmplt = '1') then LED_conv_cmplt <= '1'; else LED_conv_cmplt <= '0'; end if;
if(Mxpool_cmplt = '1') then LED_mxpool_cmplt <= '1'; else LED_mxpool_cmplt <= '0'; end if;
end process;

TX_DATA <= Luaran_Conv(0);
done <= conv_done;
Cek_State <= Count;
end Behavioral;
