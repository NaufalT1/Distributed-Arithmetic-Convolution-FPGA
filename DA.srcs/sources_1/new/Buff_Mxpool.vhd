----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/08/2020 04:43:48 PM
-- Design Name: 
-- Module Name: Buff_Mxpool - Behavioral
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

entity Buff_Mxpool is
  Port ( 
    Luaran_Maxpool_0    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_1    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_2    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_3    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_4    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_5    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_6    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_7    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_8    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_9    : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_10   : in std_logic_vector(7 downto 0);
    Luaran_Maxpool_11   : in std_logic_vector(7 downto 0);
    Clk                 : in STD_LOGIC;
    reset               : in STD_LOGIC;
    Buff_Mxpool_Active  : in STD_LOGIC;
    Buff_Luaran         : in STD_LOGIC;
    TX_DATA_VALID       : out STD_LOGIC;
    TX_ACTIVE           : in STD_LOGIC;
    Mxpool_cmplt        : out STD_LOGIC := '0';
    done                : out STD_LOGIC := '0';
    Data_Luaran         : out STD_LOGIC_VECTOR(7 downto 0) := (others=>'0')
  );
end Buff_Mxpool;

architecture Behavioral of Buff_Mxpool is
--Signal Mxpool ke Mem--
type t_Mem_2 is array (0 to 11, 0 to 0, 0 to 0) of std_logic_vector(7 downto 0);
signal Mem_2 : t_Mem_2 := (others=>(others=>(others=>(others=>'0'))));

signal s_Data_Luaran : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal buff_Mxpool_cmplt : STD_LOGIC := '0';
signal s_done : STD_LOGIC := '0';
signal s_TX_DATA_VALID : STD_LOGIC := '0';

begin

Mxpool_ke_Mem : process (Clk)
variable x : integer range 0 to 12 := 0;
variable i : integer range 0 to 13 := 0;
variable j : integer range 0 to 12 := 0;
begin
if(reset = '1') then i:=0; j:=0; Mem_2<=(others=>(others=>(others=>(others=>'0'))));
else
if(rising_edge(Clk) AND Buff_Mxpool_Active ='1' AND buff_Mxpool_cmplt = '0') then
    if(i<1)then
        if(j<0) then
                Mem_2(0,i,j) <= Luaran_Maxpool_0;
                Mem_2(1,i,j) <= Luaran_Maxpool_1;
                Mem_2(2,i,j) <= Luaran_Maxpool_2;
                Mem_2(3,i,j) <= Luaran_Maxpool_3;
                Mem_2(4,i,j) <= Luaran_Maxpool_4;
                Mem_2(5,i,j) <= Luaran_Maxpool_5;
                Mem_2(6,i,j) <= Luaran_Maxpool_6;
                Mem_2(7,i,j) <= Luaran_Maxpool_7;
                Mem_2(8,i,j) <= Luaran_Maxpool_8;
                Mem_2(9,i,j) <= Luaran_Maxpool_9;
                Mem_2(10,i,j) <= Luaran_Maxpool_10;
                Mem_2(11,i,j) <= Luaran_Maxpool_11;
            j := j+1;
        else 
                Mem_2(0,i,j) <= Luaran_Maxpool_0;
                Mem_2(1,i,j) <= Luaran_Maxpool_1;
                Mem_2(2,i,j) <= Luaran_Maxpool_2;
                Mem_2(3,i,j) <= Luaran_Maxpool_3;
                Mem_2(4,i,j) <= Luaran_Maxpool_4;
                Mem_2(5,i,j) <= Luaran_Maxpool_5;
                Mem_2(6,i,j) <= Luaran_Maxpool_6;
                Mem_2(7,i,j) <= Luaran_Maxpool_7;
                Mem_2(8,i,j) <= Luaran_Maxpool_8;
                Mem_2(9,i,j) <= Luaran_Maxpool_9;
                Mem_2(10,i,j) <= Luaran_Maxpool_10;
                Mem_2(11,i,j) <= Luaran_Maxpool_11;
            i := i+1;
            if(i=1)then buff_Mxpool_cmplt <= '1'; i:= 0; j:= 0; else
                j:= 0;
            end if;
         end if;
    else
     
    end if;
else
end if;

if (rising_edge(Clk) AND Buff_Luaran ='1' AND TX_ACTIVE = '0') then
if(s_TX_DATA_VALID ='0') then
  if(x < 12) then
    if(i<1)then
        if(j<0) then
            s_TX_DATA_VALID <= '1';
            s_DATA_LUARAN <= MEM_2(x,i,j);
            j := j+1;
        else 
            s_TX_DATA_VALID <= '1';
            s_DATA_LUARAN <= MEM_2(x,i,j);
            i := i+1;
            if(i = 1) then x := x+1; i := 0; 
                if (x =12) then s_done <= '1'; else end if;
            else j:= 0;
            end if;
         end if;
    else
    end if;
  
  else
  end if;
else s_TX_DATA_VALID <= '0';
end if;
else 
end if;
end if;

end process;
Mxpool_cmplt <= buff_Mxpool_cmplt;
done <= s_done;
TX_DATA_VALID <= s_TX_DATA_VALID;
Data_Luaran <= s_DATA_LUARAN;
               --Mem_2(0,0,0);
               --"00000001";


end Behavioral;
