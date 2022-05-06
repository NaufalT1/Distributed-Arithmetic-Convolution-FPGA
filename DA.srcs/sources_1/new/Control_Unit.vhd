----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2020 05:00:53 PM
-- Design Name: 
-- Module Name: Control_Unit - Behavioral
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

entity Control_Unit is
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
--  Reset_Conv : out STD_LOGIC := '0';
  Buff_bobot_Active : Out STD_LOGIC;
  Buff_masukan_Active : Out STD_LOGIC;
  Conv_Active : Out STD_LOGIC;
  Buff_Conv_Active : Out STD_LOGIC;
  Mxpool_Active : Out STD_LOGIC;
  Buff_Mxpool_Active : Out STD_LOGIC;
  Buff_Luaran_Active : Out STD_LOGIC;
  Sys_Reset : out STD_LOGIC
--  Active : in STD_LOGIC;
--  Count : Out STD_LOGIC_VECTOR (3 downto 0)
  );
end Control_Unit;

architecture Behavioral of Control_Unit is
--Membuat state
subtype internal_state is natural range 0 to 7;
signal state : internal_state := 0;
--buff
signal s_Buff_bobot_Active : STD_LOGIC :='0';
signal s_Buff_masukan_Active : STD_LOGIC :='0';
signal s_Conv_Active : STD_LOGIC :='0';
signal s_Buff_Conv_Active : STD_LOGIC :='0';
signal s_Mxpool_Active : STD_LOGIC :='0';
signal s_Buff_Mxpool_Active : STD_LOGIC :='0';
signal s_Buff_Luaran_Active : STD_LOGIC :='0';
signal s_sys_reset : STD_LOGIC :='0';
signal s_done : STD_LOGIC := '0';



begin
process(clk, reset, state)
    begin
    case state is
        when 0 =>  -- Bobot ke memori
                  Buff_bobot_Active <= '1';
                  Buff_masukan_Active <= '0';
                  Conv_Active <= '0';
                  Buff_Conv_Active <= '0';
                  Mxpool_Active <= '0';
                  Buff_Mxpool_Active <= '0';
                  Buff_Luaran_Active <= '0';
                  sys_reset <= '0';

        when 1 =>  -- Input ke memori
                  Buff_bobot_Active <= '0';
                  Buff_masukan_Active <= '1';
                  Conv_Active <= '0';
                  Buff_Conv_Active <= '0';
                  Mxpool_Active <= '0';
                  Buff_Mxpool_Active <= '0';
                  Buff_Luaran_Active <= '0';
                  sys_reset <= '0';

        when 2 =>  -- Conv
                  Buff_bobot_Active <= '0';
                  Buff_masukan_Active <= '0';
                  Conv_Active <= '1';
                  Buff_Conv_Active <= '0';
                  Mxpool_Active <= '0';
                  Buff_Mxpool_Active <= '0';
                  Buff_Luaran_Active <= '0';
                  sys_reset <= '0';

        when 3 =>  -- Conv ke memori
                  Buff_bobot_Active <= '0';
                  Buff_masukan_Active <= '0';
                  Conv_Active <= '1';
                  Buff_Conv_Active <= '1';
                  Mxpool_Active <= '0';
                  Buff_Mxpool_Active <= '0';
                  Buff_Luaran_Active <= '0';
                  sys_reset <= '0';

        when 4 =>  -- Maxpool
                  Buff_bobot_Active <= '0';
                  Buff_masukan_Active <= '0';
                  Conv_Active <= '0';
                  Buff_Conv_Active <= '0';
                  Mxpool_Active <= '1';
                  Buff_Mxpool_Active <= '0';
                  Buff_Luaran_Active <= '0';
                  sys_reset <= '0';

        when 5 =>  -- Maxpool ke memori
                  Buff_bobot_Active <= '0';
                  Buff_masukan_Active <= '0';
                  Conv_Active <= '0';
                  Buff_Conv_Active <= '0';
                  Mxpool_Active <= '1';
                  Buff_Mxpool_Active <= '1';
                  Buff_Luaran_Active <= '0';
                  sys_reset <= '0';
                  
        when 6 =>  -- Memori ke luaran
                 Buff_bobot_Active <= '0';
                 Buff_masukan_Active <= '0';
                 Conv_Active <= '0';
                 Buff_Conv_Active <= '0';
                 Mxpool_Active <= '0';
                 Buff_Mxpool_Active <= '0';
                 Buff_Luaran_Active <= '1';
                 sys_reset <= '0';
                 
        when 7 =>  -- Reset
                 Buff_bobot_Active <= '0';
                 Buff_masukan_Active <= '0';
                 Conv_Active <= '0';
                 Buff_Conv_Active <= '0';
                 Mxpool_Active <= '0';
                 Buff_Mxpool_Active <= '0';
                 Buff_Luaran_Active <= '0';
                 sys_reset <= '1';


       end case;
       if reset = '1' then
          state <= 7;
          elsif clk'event and clk = '1' then
            case state is
                 when 0 => if Bobot_cmplt = '1' then state <= 1; else state <= 0; end if;
                 when 1 => if Input_cmplt = '1' then state <= 2; else state <= 1; end if;
                 when 2 => if Conv_done = '1' then state <= 3; else state <= 2; end if;
                 when 3 => if Conv_cmplt = '1' then state <= 4; else state <= 2; end if;
                 when 4 => if Mxpool_done = '1' then state <= 5; else state <= 4; end if;
                 when 5 => if Mxpool_cmplt = '1' then state <= 6; else state <= 4; end if;
                 when 6 => if done ='1' then s_done <= '1';state <= 6; else state <= 6; end if;
                 when 7 => state <= 0;
            end case;
         end if;
end process;



LED_bobot_cmplt <= '1' when (bobot_cmplt = '1') else '0';
LED_masukan_cmplt <= '1' when (Input_cmplt = '1') else '0';
LED_conv_cmplt <= '1' when (Conv_cmplt = '1') else '0';
LED_mxpool_cmplt <= '1' when (Mxpool_cmplt = '1') else '0';
LED_done <= '1' when s_done = '1' else '0';

--Buff_bobot_Active     <= s_Buff_bobot_Active  ;
--Buff_masukan_Active   <= s_Buff_masukan_Active;
--Conv_Active           <= s_Conv_Active        ;
--Buff_Conv_Active      <= s_Buff_Conv_Active   ;
--Mxpool_Active         <= s_Mxpool_Active      ;
--Buff_Mxpool_Active    <= s_Buff_Mxpool_Active ;
--Buff_Luaran_Active    <= s_Buff_Luaran_Active ;
--sys_reset             <= s_sys_reset          ;




end Behavioral;
