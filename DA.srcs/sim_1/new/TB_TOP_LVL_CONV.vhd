----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2020 12:22:35 AM
-- Design Name: 
-- Module Name: TB_TOP_LVL_CONV - Behavioral
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

entity TB_TOP_LVL_CONV is
--  Port ( );
end TB_TOP_LVL_CONV;

architecture Behavioral of TB_TOP_LVL_CONV is
COMPONENT TOP_LVL_CONV is
  generic (n : integer := 7);
  Port ( 
        Clk : in STD_LOGIC;
        reset : in STD_LOGIC;
--        rx_line : in STD_LOGIC;
        rx_data : in STD_LOGIC_VECTOR (n downto 0);
--        tx_line : out STD_LOGIC;
        tx_data : out STD_LOGIC_VECTOR (n downto 0);
        LED_bobot_cmplt : out STD_LOGIC;
        LED_masukan_cmplt : out STD_LOGIC;
        LED_conv_cmplt : out STD_LOGIC;
        LED_done : out STD_LOGIC);
end COMPONENT;

signal clk : STD_LOGIC;
signal reset : std_LOGIC;
signal LED_bobot_cmplt : STD_LOGIC;
signal LED_masukan_cmplt : STD_LOGIC;
signal LED_conv_cmplt : STD_LOGIC;
signal LED_done : STD_LOGIC;
signal rx_data : STD_LOGIC_VECTOR (7 downto 0);
signal tx_data : STD_LOGIC_VECTOR (7 downto 0);

begin
uut : TOP_LVL_CONV Port map(
    Clk => Clk,
    Reset => Reset,
    rx_data => rx_data,
    tx_data => tx_data,
    LED_bobot_cmplt => LED_bobot_cmplt,
    LED_masukan_cmplt => LED_masukan_cmplt,
    LED_conv_cmplt => LED_conv_cmplt,
    LED_done => LED_done);
    
stimulus : process
begin

Clk <= '1';
wait for 100ns;
Clk <= '0';
wait for 100ns;

for I in 0 to 8 loop -- masukan bobot
rx_data <= "00000001";--STD_LOGIC_VECTOR(TO_UNSIGNED(I,8));
Clk <= '1';
wait for 100ns;
Clk <= '0';
wait for 100ns;
end loop;

Clk <= '1';
wait for 100ns;
Clk <= '0';
wait for 100ns;

for I in 0 to 8 loop
rx_data <= STD_LOGIC_VECTOR(TO_UNSIGNED(I,8));
Clk <= '1';
wait for 100ns;
Clk <= '0';
wait for 100ns;
end loop;

for i in 0 to 200 loop
 Clk <= '1';
 wait for 100ns;
 Clk <= '0';
 wait for 100ns;
end loop;

wait;

end process;

end Behavioral;
