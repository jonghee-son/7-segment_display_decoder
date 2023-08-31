----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2022 12:25:14 PM
-- Design Name: 
-- Module Name: segdec - Behavioral
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

entity segdec is
    Port ( XX : in STD_LOGIC_VECTOR (3 downto 0);
           LampTest : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (7 downto 0);
           SEG : out STD_LOGIC_VECTOR (7 downto 0));
end segdec;

architecture Behavioral of segdec is

begin
    Q <= "11111110";
    process (XX, LampTest)
    begin
        if (LampTest = '1') then SEG <= "00000000";
        elsif(XX = "0000") then SEG <= "11000000";
        elsif(XX = "0001") then SEG <= "11111001";
        elsif(XX = "0010") then SEG <= "10100100";
        elsif(XX = "0011") then SEG <= "10110000";
        elsif(XX = "0100") then SEG <= "10011001";
        elsif(XX = "0101") then SEG <= "10010010";
        elsif(XX = "0110") then SEG <= "10000010";
        elsif(XX = "0111") then SEG <= "11111000";
        elsif(XX = "1000") then SEG <= "10000000";
        elsif(XX = "1001") then SEG <= "10010000";
        elsif(XX = "1010") then SEG <= "10001000";
        elsif(XX = "1011") then SEG <= "10000011";
        elsif(XX = "1100") then SEG <= "11000110";
        elsif(XX = "1101") then SEG <= "10100001";
        elsif(XX = "1110") then SEG <= "10000110";
        elsif(XX = "1111") then SEG <= "10001110";
        else SEG <= "11111111";
        end if;
    end process;

end Behavioral;
