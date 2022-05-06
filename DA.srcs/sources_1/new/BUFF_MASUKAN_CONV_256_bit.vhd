----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2021 12:04:21 AM
-- Design Name: 
-- Module Name: BUFF_MASUKAN_CONV_256_bit - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BUFF_MASUKAN_CONV_256_bit is
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
end BUFF_MASUKAN_CONV_256_bit;

architecture Behavioral of BUFF_MASUKAN_CONV_256_bit is
--Signal UART ke masukan--
type t_Input is array (0 to 8) of std_logic_vector(n downto 0);
signal Masukan : t_Input;
signal Data_out_buff : std_logic_vector(n downto 0) := (Others=>'0');
--signal kendali
signal s_Count : integer :=0;
signal s_Conv_cmplt : std_logic := '0';
signal s_Input_cmplt : STD_LOGIC := '0';
signal s_Reset_Conv : STD_LOGIC := '0';
signal s_delay : STD_LOGIC := '0';

--signal luaran
signal s_Input_Conv_0 : STD_LOGIC_VECTOR (n downto 0) := (Others=>'0');
signal s_Input_Conv_1 : STD_LOGIC_VECTOR (n downto 0) := (Others=>'0');
signal s_Input_Conv_2 : STD_LOGIC_VECTOR (n downto 0) := (Others=>'0');
signal s_Input_Conv_3 : STD_LOGIC_VECTOR (n downto 0) := (Others=>'0');
signal s_Input_Conv_4 : STD_LOGIC_VECTOR (n downto 0) := (Others=>'0');
signal s_Input_Conv_5 : STD_LOGIC_VECTOR (n downto 0) := (Others=>'0');
signal s_Input_Conv_6 : STD_LOGIC_VECTOR (n downto 0) := (Others=>'0');
signal s_Input_Conv_7 : STD_LOGIC_VECTOR (n downto 0) := (Others=>'0');
signal s_Input_Conv_8 : STD_LOGIC_VECTOR (n downto 0) := (Others=>'0');

begin

Masukan_ke_memori : process(Clk, reset)
variable i : integer range 0 to 9 := 0;
begin
if reset = '1' then i:=0; Input_cmplt <= '0'; Masukan <= (others =>(others =>'0'));
else
if(rising_edge(Clk) AND Buff_masukan_Active = '1' AND RX_DATA_VALID = '1') then
        if(i<9) then
            masukan(i) <= DATA_IN;
            i := i+1;
            if(i=9) then 
                Input_cmplt <= '1';
            else end if;
         else end if;
    else end if;
end if;
end process;

Memori_ke_konv : process(Clk, reset)
variable first_conv : std_logic := '0';
begin
if(reset = '1') then s_count<=0; first_conv := '0'; Conv_cmplt <='0';
else
if(rising_edge(Clk) AND Conv_Active = '1') then
    if(first_conv = '0') then first_conv := '1'; s_reset_conv <= '1';
    elsif(first_conv = '1' AND s_count = 0) then
        Reset_Conv <= '0';
        Input_Conv_0 <= Masukan(0);
        Input_Conv_1 <= Masukan(1);
        Input_Conv_2 <= Masukan(2);
        Input_Conv_3 <= Masukan(3);
        Input_Conv_4 <= Masukan(4);
        Input_Conv_5 <= Masukan(5);
        Input_Conv_6 <= Masukan(6);
        Input_Conv_7 <= Masukan(7);
        Input_Conv_8 <= Masukan(8);
        s_Count <= s_Count + 1;
    elsif (s_count < n+3) then -- Clock yg diperlukan untuk konvolusi
        s_Count <= s_Count + 1;
    elsif (s_Count = n+3) then
        Conv_cmplt <='1';
    else s_count <= 0;
    end if; 
else
end if;
end if;
end process;

count <= std_logic_vector(to_unsigned(s_Count,16));


end Behavioral;
