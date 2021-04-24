----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2021 08:23:31 PM
-- Design Name: 
-- Module Name: Combi - Behavioral
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
use IEEE.numeric_std.all;
use ieee.std_logic_textio.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Combi is
--  Port ( );
end Combi;

architecture Behavioral of Combi is
    component c17 is
        port (N1, N2, N3, N6, N7, K1, K2 : in std_logic; -- K4, K5 : in std_logic;
         N22, N23 : out std_logic);
     end component;
     
     signal key : std_logic_vector (1 downto 0) := "00";
     signal N1, N2, N3, N6, N7, N22, N23 : std_logic := '0';
     
begin

 --   N1 <= '1';
 --   N2 <= '1';
 --   N3 <= '0';
 --   N6 <= '0';
 --   N7 <= '1';
    process
    begin
        key <= "00";
        wait for 10ns;
         N1 <= '1'; N2 <= '1'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                       wait for 10ns;
                       N1 <= '0'; N2 <= '0'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                       wait for 10ns;
                       N1 <= '1'; N2 <= '0'; N3 <= '1'; N6 <= '1'; N7 <= '0';
                       wait for 10ns;        
                       N1 <= '1'; N2 <= '0'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                       wait for 10ns;
                       N1 <= '1'; N2 <= '1'; N3 <= '0'; N6 <= '1'; N7 <= '1';
                       wait for 10ns;
                       N1 <= '0'; N2 <= '1'; N3 <= '1'; N6 <= '1'; N7 <= '0';
                       wait for 10ns;
        key <= "01";
        wait for 10ns;
        N1 <= '1'; N2 <= '1'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                wait for 10ns;
                N1 <= '0'; N2 <= '0'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                wait for 10ns;
                N1 <= '1'; N2 <= '0'; N3 <= '1'; N6 <= '1'; N7 <= '0';
                wait for 10ns;        
                N1 <= '1'; N2 <= '0'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                wait for 10ns;
                N1 <= '1'; N2 <= '1'; N3 <= '0'; N6 <= '1'; N7 <= '1';
                wait for 10ns;
                N1 <= '0'; N2 <= '1'; N3 <= '1'; N6 <= '1'; N7 <= '0';
                wait for 10ns;
        key <= "10";
        wait for 10ns;
        N1 <= '1'; N2 <= '1'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                wait for 10ns;
                N1 <= '0'; N2 <= '0'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                wait for 10ns;
                N1 <= '1'; N2 <= '0'; N3 <= '1'; N6 <= '1'; N7 <= '0';
                wait for 10ns;        
                N1 <= '1'; N2 <= '0'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                wait for 10ns;
                N1 <= '1'; N2 <= '1'; N3 <= '0'; N6 <= '1'; N7 <= '1';
                wait for 10ns;
                N1 <= '0'; N2 <= '1'; N3 <= '1'; N6 <= '1'; N7 <= '0';
                wait for 10ns;
        key <= "11";
         N1 <= '1'; N2 <= '1'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                       wait for 10ns;
                       N1 <= '0'; N2 <= '0'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                       wait for 10ns;
                       N1 <= '1'; N2 <= '0'; N3 <= '1'; N6 <= '1'; N7 <= '0';
                       wait for 10ns;        
                       N1 <= '1'; N2 <= '0'; N3 <= '0'; N6 <= '0'; N7 <= '1';
                       wait for 10ns;
                       N1 <= '1'; N2 <= '1'; N3 <= '0'; N6 <= '1'; N7 <= '1';
                       wait for 10ns;
                       N1 <= '0'; N2 <= '1'; N3 <= '1'; N6 <= '1'; N7 <= '0';
--        wait for 10ns;
--        key <= "100";
--        wait for 10ns;
--        key <= "101";
--        wait for 10ns;
--        key <= "110";
--        wait for 10ns;
--        key <= "111";
        
--        wait for 10ns;
--        key <= "1000";
--        wait for 10ns;
--        key <= "1001";
--        wait for 10ns;
--        key <= "1010";
--        wait for 10ns;
--        key <= "1011";
--        wait for 10ns;
--        key <= "1100";
--        wait for 10ns;
--        key <= "1101";
--        wait for 10ns;
--        key <= "1110";
--        wait for 10ns;
--        key <= "1111";
--        wait for 10ns;
--        key <= "10000";
--        wait for 10ns;
--        key <= "10001";
--        wait for 10ns;
--        key <= "10010";
--        wait for 10ns;
--        key <= "10011";
--        wait for 10ns;
--        key <= "10100";
--        wait for 10ns;
--        key <= "10101";
--        wait for 10ns;
--        key <= "10110";
--        wait for 10ns;
--        key <= "10111";
--        wait for 10ns;
--        key <= "11000";
--        wait for 10ns;
--        key <= "11001";
--        wait for 10ns;
--        key <= "11010";
--        wait for 10ns;
--        key <= "11011";
--        wait for 10ns;
--        key <= "11100";
--        wait for 10ns;
--        key <= "11101";
--        wait for 10ns;
--        key <= "11110";
--        wait for 10ns;
--        key <= "11111";
        wait;
    end process;
    test: c17 port map (N1 => N1, N2 => N2, N3 => N3, N6 => N6, N7 => N7, K1 => key(1), K2 => key(0), N22 => N22, N23 => N23); -- K4 => key(1), K5 => key(0), N22 => N22, N23 => N23)
    
end Behavioral;
