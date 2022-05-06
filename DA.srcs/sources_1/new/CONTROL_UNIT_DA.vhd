----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2020 10:40:33 PM
-- Design Name: 
-- Module Name: CONTROL_UNIT_DA - Behavioral
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

entity CONTROL_UNIT_CONV is
  Port ( 
  Clk : in STD_LOGIC;
  Reset : in STD_LOGIC;
  Bobot_cmplt : in std_logic;
  Input_cmplt : in std_logic; 
  Conv_cmplt : in std_logic;
  Buff_bobot_Active : Out STD_LOGIC;
  Buff_masukan_Active : Out STD_LOGIC;
  Conv_Active : Out STD_LOGIC;
  TX_DATA_VALID : out STD_LOGIC;
  Sys_Reset : out STD_LOGIC);
end CONTROL_UNIT_CONV;

architecture Behavioral of CONTROL_UNIT_CONV is
--Membuat state
subtype internal_state is natural range 1 to 5;
signal state : internal_state := 1;

begin
process(clk, reset, state)
begin
case state is
    when 1 => -- Masukan ke bobot
            Buff_bobot_active <= '1';
            Buff_masukan_Active <= '0';
            Conv_Active <= '0';
            TX_DATA_VALID <= '0';
            Sys_Reset <= '0';
            
    when 2 => -- Masukan ke masukan
            Buff_bobot_active <= '0';
            Buff_masukan_Active <= '1';
            Conv_Active <= '0';
            TX_DATA_VALID <= '0';
            Sys_Reset <= '0';
            
    when 3 => -- conv
            Buff_bobot_active <= '0';
            Buff_masukan_Active <= '0';
            Conv_Active <= '1';
            TX_DATA_VALID <= '0';
            Sys_Reset <= '0';
            
    when 4 => -- Menuju luaran
            Buff_bobot_active <= '0';
            Buff_masukan_Active <= '0';
            Conv_Active <= '0';
            TX_DATA_VALID <= '1';
            Sys_Reset <= '0';
            
    when 5 => --reset
            Buff_bobot_active <= '0';
            Buff_masukan_Active <= '0';
            Conv_Active <= '0';
            TX_DATA_VALID <= '0';
            Sys_Reset <= '1';
    end case;
if(reset='1') then state <= 5;
elsif clk'event and clk = '1' then
    case state is
        when 1 => if Bobot_cmplt = '1' then state <= 2; else state<= 1; end if;
        when 2 => if Input_cmplt = '1' then state <= 3; else state <= 2; end if;
        when 3 => if Conv_cmplt = '1' then state <= 4; else state <= 3; end if;
        when 4 => state <= 4;
        when 5 =>  state <= 1;
   end case;
else
end if;
end process;
                

end Behavioral;
