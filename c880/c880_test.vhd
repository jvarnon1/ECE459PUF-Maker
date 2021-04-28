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
            L1gat, L8gat, L13gat, L17gat, L26gat, L29gat, L36gat, L42gat, L51gat, L55gat, L59gat, L68gat, L72gat, L73gat, L74gat,L75gat, L80gat, L85gat, L86gat, L87gat, L88gat, L89gat, L90gat, L91gat, L96gat, L101gat, L106gat, L111gat, L116gat, L121gat, L126gat, L130gat, L135gat, L138gat, L143gat, L146gat, L149gat, L152gat, L153gat, L156gat, L159gat, L165gat, L171gat,L177gat, L183gat, L189gat, L195gat, L201gat, L207gat, L210gat, L219gat, L228gat, L237gat, L246gat, L255gat, L259gat, L260gat,L261gat, L267gat, L268gat, K1, K2, K3, K4, K5, K6, K7, K8, K9: in std_logic;
            
            L388gat, L389gat, L390gat, L391gat, L418gat, L419gat, L420gat, L421gat, L422gat, L423gat, L446gat, L447gat, L448gat, L449gat, L450gat, L767gat, L768gat, L850gat, L863gat, L864gat, L865gat, L866gat, L874gat, L878gat, L879gat, L880gat: out std_logic
        );
    end component;
    
    signal key : std_logic_vector (8 downto 0) := "110100100"; --the correct key is 420
    --signal key1, key2, key4, key7 : std_logic := '1';
    --signal key3, key5, key6, key8, key9: std_logic := '0'; 
    signal L1gat, L8gat, L13gat, L17gat, L26gat, L29gat, L36gat, L42gat, L51gat, L55gat, L59gat, L68gat, L72gat, L73gat, L74gat,L75gat, L80gat, L85gat, L86gat, L87gat, L88gat, L89gat, L90gat, L91gat, L96gat, L101gat, L106gat, L111gat, L116gat, L121gat, L126gat, L130gat, L135gat, L138gat, L143gat, L146gat, L149gat, L152gat, L153gat, L156gat, L159gat, L165gat, L171gat,L177gat, L183gat, L189gat, L195gat, L201gat, L207gat, L210gat, L219gat, L228gat, L237gat, L246gat, L255gat, L259gat, L260gat,L261gat, L267gat, L268gat, L388gat, L389gat, L390gat, L391gat, L418gat, L419gat, L420gat, L421gat, L422gat, L423gat, L446gat, L447gat, L448gat, L449gat, L450gat, L767gat, L768gat, L850gat, L863gat, L864gat, L865gat, L866gat, L874gat, L878gat, L879gat, L880gat : std_logic := '0';
    --signal key0, key1, key2, key3, key4, key5, key6, key7, key8 : std_logic;
begin
    test: c880g port map( K9 => key(0), K8 => key(1), K7 => key(2), K6 => key(3), K5 => key(4), K4 => key(5), K3 => key(6), K2 => key(7), K1 => key(8),   
        L1gat => L1gat, L8gat => L8gat, L13gat => L13gat, L17gat => L17gat, L26gat => L26gat, L29gat => L29gat, L36gat => L36gat, L42gat => L42gat, L51gat => L51gat, L55gat => L55gat, L59gat => L59gat, L68gat => L68gat, 
        L72gat => L72gat, L73gat => L73gat, L74gat => L74gat,L75gat => L75gat, L80gat => L80gat, L85gat => L85gat, L86gat => L86gat, L87gat => L87gat, L88gat => L88gat, L89gat => L89gat, L90gat => L90gat, L91gat => L91gat, L96gat => L96gat, 
        L101gat => L101gat, L106gat => L106gat, L111gat => L111gat, L116gat => L116gat, L121gat => L121gat, L126gat => L126gat, L130gat => L130gat, L135gat => L135gat, L138gat => L138gat, L143gat => L143gat, L146gat => L146gat, L149gat => L149gat, 
        L152gat => L152gat, L153gat => L153gat, L156gat => L156gat, L159gat => L159gat, L165gat => L165gat, L171gat => L171gat,L177gat => L177gat, L183gat => L183gat, L189gat => L189gat, L195gat => L195gat, L201gat => L201gat, L207gat => L207gat, 
        L210gat => L210gat, L219gat => L219gat, L228gat => L228gat, L237gat => L237gat, L246gat => L246gat, L255gat => L255gat, L259gat => L259gat, L260gat => L260gat,L261gat => L261gat, L267gat => L267gat, L268gat => L268gat, 
        L388gat  => L388gat, L389gat => L389gat, L390gat => L390gat, L391gat => L391gat, L418gat => L418gat, L419gat => L419gat, L420gat => L420gat, L421gat => L421gat, L422gat => L422gat, 
        L423gat => L423gat, L446gat => L446gat, L447gat => L447gat, L448gat => L448gat, L449gat => L449gat, L450gat => L450gat, L767gat => L767gat, L768gat => L768gat, L850gat => L850gat, L863gat => L863gat, L864gat => L864gat, L865gat => L865gat, L866gat => L866gat, 
        L874gat => L874gat, L878gat => L878gat, L879gat => L879gat, L880gat => L880gat);
    process
    begin
    
    stimloop : for i in 0 to 511 loop
    
            wait for 10ns;
    
                 key <= std_logic_vector(to_unsigned(i, 9)); 
    
            wait for 10ns;
    
        end loop stimloop;
      


        
    end process;
end Behavioral;
