----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2020 02:01:19 PM
-- Design Name: 
-- Module Name: TOP_LVL_CB_TB - Behavioral
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
use ieee.numeric_std.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP_LVL_CB_TB is
--  Port ( );
end TOP_LVL_CB_TB;

architecture Behavioral of TOP_LVL_CB_TB is

COMPONENT TOP_LVL_COBA is
--  generic (
--        g_CLKS_PER_BIT : integer := 10417;  --Baudrate
--        g_CLKS_PER_HALF_BIT : integer := 5208 );
  Port ( 
        Clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        rx_data : in std_logic_vector(7 downto 0);
        tx_data : out std_logic_vector(7 downto 0);
        LED_bobot_cmplt : out STD_LOGIC;
        LED_masukan_cmplt : out STD_LOGIC;
        LED_conv_cmplt : out STD_LOGIC;
        LED_mxpool_cmplt : out STD_LOGIC;
        LED_done : out STD_LOGIC);
end COMPONENT;

signal Clk : STD_LOGIC;
signal reset : STD_LOGIC := '0';
signal rx_data : std_logic_vector(7 downto 0);
signal tx_data : std_logic_vector(7 downto 0);
signal LED_bobot_cmplt : STD_LOGIC;
signal LED_masukan_cmplt : STD_LOGIC;
signal LED_conv_cmplt : STD_LOGIC;
signal LED_mxpool_cmplt : STD_LOGIC;
signal LED_done : STD_LOGIC;


begin

uut : TOP_LVL_COBA Port map(
    Clk => Clk,
    Reset => Reset,
    rx_data => rx_data,
    tx_data => tx_data,
    LED_bobot_cmplt => LED_bobot_cmplt,
    LED_masukan_cmplt => LED_masukan_cmplt,
    LED_conv_cmplt => LED_conv_cmplt,
    LED_mxpool_cmplt => LED_mxpool_cmplt,
    LED_done => LED_done);

stimulus : process
begin
-- Clk <= '1';
-- wait for 100ns;
-- Clk <= '0';
-- wait for 100ns;
 Clk <= '1';
 wait for 100ns;
 Clk <= '0';
 wait for 100ns;
--rx_data <= "01100100";
for I in 0 to 107 loop
rx_data <= "00000001"; --STD_LOGIC_VECTOR(TO_UNSIGNED(I,8));
 Clk <= '1';
 wait for 100ns;
 Clk <= '0';
 wait for 100ns;
end loop;

 Clk <= '1';
 wait for 100ns;
 Clk <= '0';
 wait for 100ns;
 
-- Masukan Input--
for I in 0 to 15 loop
rx_data <= STD_LOGIC_VECTOR(TO_UNSIGNED(I,8));
Clk <= '1';
wait for 100ns;
Clk <= '0';
wait for 100ns;
end loop;

--rx_data <= "00000001";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000001";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000001";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000010";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000010";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000010";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000010";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000011";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000011";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000011";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000011";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000010";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000010";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000010";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;

--rx_data <= "00000010";
--Clk <= '1';
--wait for 100ns;
--Clk <= '0';
--wait for 100ns;



for i in 0 to 200 loop
 Clk <= '1';
 wait for 100ns;
 Clk <= '0';
 wait for 100ns;
end loop;
    
wait;
end process;
    



end Behavioral;
