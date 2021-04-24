----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/22/2021 10:20:44 AM
-- Design Name: 
-- Module Name: c880_test - Behavioral
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
use IEEE.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity c880_test is
--  Port ( );
end c880_test;

architecture Behavioral of c880_test is
    component c880 is
        port (
            L1gat, L8gat, L13gat, L17gat, L26gat, L29gat, L36gat, L42gat, L51gat, L55gat, L59gat, L68gat, L72gat, L73gat, L74gat,L75gat, L80gat, L85gat, L86gat, L87gat, L88gat, L89gat, L90gat, L91gat, L96gat, L101gat, L106gat, L111gat, L116gat, L121gat, L126gat, L130gat, L135gat, L138gat, L143gat, L146gat, L149gat, L152gat, L153gat, L156gat, L159gat, L165gat, L171gat,L177gat, L183gat, L189gat, L195gat, L201gat, L207gat, L210gat, L219gat, L228gat, L237gat, L246gat, L255gat, L259gat, L260gat,L261gat, L267gat, L268gat, K1, K2, K3, K4, K5, K6, K7, K8, K9: in std_logic;
            
            L388gat, L389gat, L390gat, L391gat, L418gat, L419gat, L420gat, L421gat, L422gat, L423gat, L446gat, L447gat, L448gat, L449gat, L450gat, L767gat, L768gat, L850gat, L863gat, L864gat, L865gat, L866gat, L874gat, L878gat, L879gat, L880gat: out std_logic
        );
    end component
    
    signal key : std_logic_vector (8 downto 0) := "000000000";
    signal L1gat, L8gat, L13gat, L17gat, L26gat, L29gat, L36gat, L42gat, L51gat, L55gat, L59gat, L68gat, L72gat, L73gat, L74gat,L75gat, L80gat, L85gat, L86gat, L87gat, L88gat, L89gat, L90gat, L91gat, L96gat, L101gat, L106gat, L111gat, L116gat, L121gat, L126gat, L130gat, L135gat, L138gat, L143gat, L146gat, L149gat, L152gat, L153gat, L156gat, L159gat, L165gat, L171gat,L177gat, L183gat, L189gat, L195gat, L201gat, L207gat, L210gat, L219gat, L228gat, L237gat, L246gat, L255gat, L259gat, L260gat,L261gat, L267gat, L268gat, L388gat, L389gat, L390gat, L391gat, L418gat, L419gat, L420gat, L421gat, L422gat, L423gat, L446gat, L447gat, L448gat, L449gat, L450gat, L767gat, L768gat, L850gat, L863gat, L864gat, L865gat, L866gat, L874gat, L878gat, L879gat, L880gat : std_logic := '0';
begin
    process
    begin
        key <= "10100100";
        wait for 10ns;
        
        --for(key="000000000" , key<"111111111", key <= key+"000000001")
        --begin
            --wait for 10ns;
            --for (L1gat="0", L1gat<"1", L1gat++)
            --begin
                --for (L8gat="0", L8gat<"1", L8gat++)
--                begin
--                    for (L13gat="0", L13gat<"1", L13gat++)
--                    begin
--                        for (L17gat="0", L17gat<"1", L17gat++)
--                        begin
--                            for (L26gat="0", L26gat<"1", L26gat++)
--                            begin
--                                for (L29gat="0", L29gat<"1", L29gat++)
--                                begin
--                                    for (L36gat="0", L36gat<"1", L36gat++)
--                                    begin
                            
--                                    end
--                                end
--                            end
--                        end
--                    end
--                end
--            end
        
--        key <= "10100100";
--        wait for 10ns;
--         L1gat<='1'; L8gat<='0'; L13gat<='1'; L17gat<='0'; L26gat<='1'; L29gat<='0'; L36gat<='0'; L42gat<='1'; L51gat<='0'; L55gat<='0'; L59gat<='1'; L68gat<='1'; L72gat<='1'; L73gat<='0'; L74gat<='1'; L75gat<='0'; L80gat<='0'; L85gat<='0'; L86gat<='0'; L87gat<='1'; L88gat<='1'; L89gat<='0'; L90gat<='0'; L91gat<='0'; L96gat<='0'; L101gat<='0'; L106gat<='1'; L111gat<='1'; L116gat<='0'; L121gat<='0'; L126gat<='0'; L130gat<='0'; L135gat<='0'; L138gat<='1'; L143gat<='0'; L146gat<='0'; L149gat<='1'; L152gat<='0'; L153gat<='0'; L156gat<='0'; L159gat<='0'; L165gat<='0'; L171gat<='1'; L177gat<='1'; L183gat<='0'; L189gat<='1'; L195gat<='0'; L201gat<='0'; L207gat<='0'; L210gat<='1'; L219gat<='1'; L228gat<='1'; L237gat<='0'; L246gat<='1'; L255gat<='0'; L259gat<='1'; L260gat<='0'; L261gat<='1'; L267gat<='1'; L268gat<='1';
--                       wait for 10ns;
--                       N1 <= '0'; N2 <= '0'; N3 <= '0'; N6 <= '0'; N7 <= '1';
--                       wait for 10ns;
--                       N1 <= '1'; N2 <= '0'; N3 <= '1'; N6 <= '1'; N7 <= '0';
--                       wait for 10ns;        
--                       N1 <= '1'; N2 <= '0'; N3 <= '0'; N6 <= '0'; N7 <= '1';
--                       wait for 10ns;
--                       N1 <= '1'; N2 <= '1'; N3 <= '0'; N6 <= '1'; N7 <= '1';
--                       wait for 10ns;
--                       N1 <= '0'; N2 <= '1'; N3 <= '1'; N6 <= '1'; N7 <= '0';
--                       wait for 10ns;
        
        end
end Behavioral;
