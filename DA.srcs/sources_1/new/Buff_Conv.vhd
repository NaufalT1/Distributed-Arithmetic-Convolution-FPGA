----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/08/2020 03:57:14 PM
-- Design Name: 
-- Module Name: Buff_Conv - Behavioral
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

entity Buff_Conv is
  Port ( 
    Luaran_Conv         : in std_logic_vector(7 downto 0);
    Clk                 : in STD_LOGIC;
    Buff_Conv_Active    : in STD_LOGIC;
    Mxpool_Active       : in STD_LOGIC;
    reset               : in STD_LOGIC;
    Mxpool_done         : out STD_LOGIC := '0';
    Masukan_MaxPool_0   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Masukan_MaxPool_1   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Masukan_MaxPool_2   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    Masukan_MaxPool_3   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0')
  );
end Buff_Conv;

architecture Behavioral of Buff_Conv is
--Signal Conv ke Mem--
type t_Mem is array (0 to 25, 0 to 25) of std_logic_vector(7 downto 0);
signal Mem_1 : t_Mem;

--signal ke Maxpool--
signal s_Masukan_MaxPool_0 : std_logic_vector(7 downto 0);
signal s_Masukan_MaxPool_1 : std_logic_vector(7 downto 0);
signal s_Masukan_MaxPool_2 : std_logic_vector(7 downto 0);
signal s_Masukan_MaxPool_3 : std_logic_vector(7 downto 0);

--buff maxpool
signal maxpool_done_buff : STD_LOGIC := '0';
signal maxpool_done_delay : STD_LOGIC := '0';

begin
Conv_ke_Mem : process (Clk, reset)
variable i : integer range 0 to 2 := 0;
variable j : integer range 0 to 2 := 0;
begin
if (reset='1') then i:=0;j:=0;Mem_1 <= (others=>(others=>(others=>'0')));
else
if(rising_edge(Clk) AND Buff_Conv_Active = '1') then
    
    if(i<2)then
        if(j<1) then
            Mem_1(i,j) <= Luaran_Conv;
            j := j+1;
        else 
            Mem_1(i,j) <= Luaran_Conv;
            i := i+1;
            if(i=2) then i:=0; j:=0; else
                j:= 0;
            end if;
         end if;
    else 
    end if;
    
else 
end if;


if(Mxpool_Active = '1' AND rising_edge(Clk)) then
    if(maxpool_done_buff = '0') then
        if(i<2) then
            if(j<0) then
                s_Masukan_Maxpool_0 <= Mem_1(i,j);
                s_Masukan_Maxpool_1 <= Mem_1(i,j+1);
                s_Masukan_Maxpool_2 <= Mem_1(i+1,j);
                s_Masukan_Maxpool_3 <= Mem_1(i+1,j+1);
                Mxpool_done <= '1';
                maxpool_done_buff <= '1';
                j := j+2;
            else 
                s_Masukan_Maxpool_0 <= Mem_1(i,j);
                s_Masukan_Maxpool_1 <= Mem_1(i,j+1);
                s_Masukan_Maxpool_2 <= Mem_1(i+1,j);
                s_Masukan_Maxpool_3 <= Mem_1(i+1,j+1);
                Mxpool_done <= '1';
                maxpool_done_buff <= '1';
                i := i+2;
                if(i>1) then Mxpool_done <='0'; 
                else
                    j := 0;
                end if;
            end if;
        else maxpool_done_buff <= '0';
        end if;
    else  end if;
else
end if;
end if;
end process;

Masukan_MaxPool_0 <= s_Masukan_Maxpool_0;
Masukan_MaxPool_1 <= s_Masukan_Maxpool_1;
Masukan_MaxPool_2 <= s_Masukan_Maxpool_2;
Masukan_MaxPool_3 <= s_Masukan_Maxpool_3;

--Masukan_MaxPool_0 <= Mem_1(1,1);
--Masukan_MaxPool_1 <= Mem_1(0,1);
--Masukan_MaxPool_2 <= Mem_1(1,0);
--Masukan_MaxPool_3 <= Mem_1(1,1);


end Behavioral;
