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
    component c880g is
        port (
            L1gat, L8gat, L13gat, L17gat, L26gat, L29gat, L36gat, L42gat, L51gat, L55gat, L59gat, L68gat, L72gat, L73gat, L74gat,L75gat, L80gat, L85gat, L86gat, L87gat, L88gat, L89gat, L90gat, L91gat, L96gat, L101gat, L106gat, L111gat, L116gat, L121gat, L126gat, L130gat, L135gat, L138gat, L143gat, L146gat, L149gat, L152gat, L153gat, L156gat, L159gat, L165gat, L171gat,L177gat, L183gat, L189gat, L195gat, L201gat, L207gat, L210gat, L219gat, L228gat, L237gat, L246gat, L255gat, L259gat, L260gat,L261gat, L267gat, L268gat, K1, K2, K3, K4, K5, K6, K7, K8, K9: in std_logic := '0';
            
            L388gat, L389gat, L390gat, L391gat, L418gat, L419gat, L420gat, L421gat, L422gat, L423gat, L446gat, L447gat, L448gat, L449gat, L450gat, L767gat, L768gat, L850gat, L863gat, L864gat, L865gat, L866gat, L874gat, L878gat, L879gat, L880gat: out std_logic
        );
    end component;
    
    signal input : std_logic_vector (59 downto 0) := "000010011010011000010110001111010001100110111100100000100101"; --43454227759745061
    signal key : std_logic_vector (8 downto 0) := "110100100"; --the correct key is 420
    signal output : std_logic_vector (25 downto 0) := "00000000000000000000000000"; --correct output is 00000111111000111000000000 or 2067968
    
    --signal key1, key2, key4, key7 : std_logic := '1';
    --signal key3, key5, key6, key8, key9: std_logic := '0'; 
--    signal L1gats, L8gats, L13gats, L17gats, L26gats, L29gats, L36gats, L42gats, L51gats, L55gats, L59gats, L68gats, L72gats, L73gats, L74gats,L75gats, L80gats, L85gats, L86gats, L87gats, L88gats, L89gats, L90gats, L91gats, L96gats, L101gats, L106gats, L111gats, L116gats, L121gats, L126gats, L130gats, L135gats, L138gats, L143gats, L146gats, L149gats, L152gats, L153gats, L156gats, L159gats, L165gats, L171gats,L177gats, L183gats, L189gats, L195gats, L201gats, L207gats, L210gats, L219gats, L228gats, L237gats, L246gats, L255gats, L259gats, L260gats,L261gats, L267gats, L268gats, L388gats, L389gats, L390gats, L391gats, L418gats, L419gats, L420gats, L421gats, L422gats, L423gats, L446gats, L447gats, L448gats, L449gats, L450gats, L767gats, L768gats, L850gats, L863gats, L864gats, L865gats, L866gats, L874gats, L878gats, L879gats, L880gats : std_logic := '0';
    --signal key0, key1, key2, key3, key4, key5, key6, key7, key8 : std_logic;
begin
    test: c880g port map( K9 => key(8), K8 => key(7), K7 => key(6), K6 => key(5), K5 => key(4), K4 => key(3), K3 => key(2), K2 => key(1), K1 => key(0),   
        L1gat => input(59), L8gat => input(58), L13gat => input(57), L17gat => input(56), L26gat => input(55), L29gat => input(54), L36gat => input(53), L42gat => input(52), L51gat => input(51), L55gat => input(50), L59gat => input(49), L68gat => input(48), 
        L72gat => input(47), L73gat => input(46), L74gat => input(45),L75gat => input(44), L80gat => input(43), L85gat => input(42), L86gat => input(41), L87gat => input(40), L88gat => input(39), L89gat => input(38), L90gat => input(37), L91gat => input(36), L96gat => input(35), 
        L101gat => input(34), L106gat => input(33), L111gat => input(32), L116gat => input(31), L121gat => input(30), L126gat => input(29), L130gat => input(28), L135gat => input(27), L138gat => input(26), L143gat => input(25), L146gat => input(24), L149gat => input(23), 
        L152gat => input(22), L153gat => input(21), L156gat => input(20), L159gat => input(19), L165gat => input(18), L171gat => input(17),L177gat => input(16), L183gat => input(15), L189gat => input(14), L195gat => input(13), L201gat => input(12), L207gat => input(11), 
        L210gat => input(10), L219gat => input(9), L228gat => input(8), L237gat => input(7), L246gat => input(6), L255gat => input(5), L259gat => input(4), L260gat => input(3),L261gat => input(2), L267gat => input(1), L268gat => input(0), 
        L388gat  => output(25), L389gat => output(24), L390gat => output(23), L391gat => output(22), L418gat => output(21), L419gat => output(20), L420gat => output(19), L421gat => output(18), L422gat => output(17), 
        L423gat => output(16), L446gat => output(15), L447gat => output(14), L448gat => output(13), L449gat => output(12), L450gat => output(11), L767gat => output(10), L768gat => output(9), L850gat => output(8), L863gat => output(7), L864gat => output(6), L865gat => output(5), L866gat => output(4), 
        L874gat => output(3), L878gat => output(2), L879gat => output(1), L880gat => output(0));
    process
    begin
    
    stimloop : for i in 0 to 511 loop
    
            wait for 1ns;
    
                 key <= std_logic_vector(to_unsigned(i, 9)); 
    
   --         wait for 10ns;
    
        end loop stimloop;
             
    end process;
end Behavioral;
