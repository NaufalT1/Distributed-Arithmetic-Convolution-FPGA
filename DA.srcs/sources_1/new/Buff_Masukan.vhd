----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2020 05:57:33 PM
-- Design Name: 
-- Module Name: Buff_Masukan - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Buff_Masukan is
  Port (
    Data_in : in std_logic_vector(7 downto 0);
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Buff_masukan_Active : in STD_LOGIC;
    RX_DATA_VALID : in STD_LOGIC;
    Conv_Active : in STD_LOGIC;
    Input_cmplt : out std_logic := '0';
    Conv_cmplt : out std_logic := '0';
    Conv_done : out STD_LOGIC := '0';
    Reset_conv : out std_logic := '0';
    Count : Out std_logic_vector (3 downto 0) := (others => '0');
    Input_Conv_0 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_1 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_2 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_3 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_4 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_5 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_6 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_7 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Input_Conv_8 : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0')
  );
end Buff_Masukan;

architecture Behavioral of Buff_Masukan is
--Signal UART ke masukan--
type t_Input is array (0 to 27, 0 to 27) of std_logic_vector(7 downto 0);
signal Masukan : t_Input;
signal Data_out_buff : std_logic_vector(7 downto 0) := (Others=>'0');
--signal kendali
signal s_Count : integer :=0;
Signal s_Conv_done : STD_LOGIC :='0';
signal s_Conv_cmplt : std_logic := '0';
signal s_Input_cmplt : STD_LOGIC := '0';
signal s_Reset_Conv : STD_LOGIC := '0';

--signal luaran
signal s_Input_Conv_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal s_Input_Conv_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal s_Input_Conv_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal s_Input_Conv_3 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal s_Input_Conv_4 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal s_Input_Conv_5 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal s_Input_Conv_6 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal s_Input_Conv_7 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal s_Input_Conv_8 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

begin

Masukan_ke_memori : process(Clk, reset)
variable i : integer range 0 to 4 := 0;
variable j : integer range 0 to 4 := 0;
variable first_conv : std_logic := '0';
begin
if(reset = '1') then i:=0;j:=0; s_count<=0;Masukan <= (others => (others=> (others =>'0')));
else
if(rising_edge(Clk) AND Buff_masukan_Active = '1' AND RX_DATA_VALID = '1') then
    if(i<4)then
        if(j<3) then
            Masukan(i,j) <= DATA_IN;
            j := j+1;
         else 
            Masukan(i,j) <= DATA_IN;
            if(i=3 AND j =3) then s_Input_cmplt <= '1'; else s_Input_cmplt <= '0'; end if;
            i := i+1;
            j:= 0;
         end if;
    else i:=0; j:=0;
    end if;
else
end if;

if(rising_edge(Clk) AND Conv_Active = '1') then
    if(first_conv = '0') then first_conv := '1'; s_reset_conv <= '1';
    elsif(first_conv = '1' AND s_count = 0) then
        s_Reset_Conv <= '0';
        if(i<2) then
            if(j<1) then
                s_Input_Conv_0 <= Masukan(i,j);
                s_Input_Conv_1 <= Masukan(i+0,j+1);
                s_Input_Conv_2 <= Masukan(i+0,j+2);
                s_Input_Conv_3 <= Masukan(i+1,j+0);
                s_Input_Conv_4 <= Masukan(i+1,j+1);
                s_Input_Conv_5 <= Masukan(i+1,j+2);
                s_Input_Conv_6 <= Masukan(i+2,j+0);
                s_Input_Conv_7 <= Masukan(i+2,j+1);
                s_Input_Conv_8 <= Masukan(i+2,j+2);
                j := j+1;
            else 
                s_Input_Conv_0 <= Masukan(i,j);
                s_Input_Conv_1 <= Masukan(i+0,j+1);
                s_Input_Conv_2 <= Masukan(i+0,j+2);
                s_Input_Conv_3 <= Masukan(i+1,j+0);
                s_Input_Conv_4 <= Masukan(i+1,j+1);
                s_Input_Conv_5 <= Masukan(i+1,j+2);
                s_Input_Conv_6 <= Masukan(i+2,j+0);
                s_Input_Conv_7 <= Masukan(i+2,j+1);
                s_Input_Conv_8 <= Masukan(i+2,j+2);
                i := i+1;
                if(i=2) then s_Conv_cmplt <= '1'; else
                    j := 0;
                end if;
            end if;
        else 
        end if;
        s_Count <= s_Count + 1;
    elsif (s_count < 9) then -- Clock yg diperlukan untuk konvolusi
        s_Count <= s_Count + 1;
    elsif (s_count = 9 AND s_Conv_done ='0')then
        s_Conv_done <= '1';
    elsif (s_count = 9 AND s_Conv_done = '1')then
        s_Count <= s_Count + 1;
    elsif (s_Count = 10) then
        s_Reset_Conv <= '1';
        s_Count <= 0;
        s_Conv_done <= '0';
    end if; 
else
end if;
end if;

end process;

Input_Conv_0 <= s_Input_Conv_0;
Input_Conv_1 <= s_Input_Conv_1;
Input_Conv_2 <= s_Input_Conv_2;
Input_Conv_3 <= s_Input_Conv_3;
Input_Conv_4 <= s_Input_Conv_4;
Input_Conv_5 <= s_Input_Conv_5;
Input_Conv_6 <= s_Input_Conv_6;
Input_Conv_7 <= s_Input_Conv_7;
Input_Conv_8 <= s_Input_Conv_8;
count <= std_logic_vector(to_unsigned(s_Count,4));
Conv_done <= s_Conv_done;
Conv_cmplt <= s_Conv_cmplt;
Input_cmplt <= s_Input_cmplt;
Reset_Conv <= s_Reset_Conv;

end Behavioral;
