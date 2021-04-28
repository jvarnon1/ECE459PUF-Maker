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
    
    signal key : std_logic_vector (8 downto 0) := "110100100"; --the correct key is 420
    --signal key1, key2, key4, key7 : std_logic := '1';
    --signal key3, key5, key6, key8, key9: std_logic := '0'; 
    signal L1gats, L8gats, L13gats, L17gats, L26gats, L29gats, L36gats, L42gats, L51gats, L55gats, L59gats, L68gats, L72gats, L73gats, L74gats,L75gats, L80gats, L85gats, L86gats, L87gats, L88gats, L89gats, L90gats, L91gats, L96gats, L101gats, L106gats, L111gats, L116gats, L121gats, L126gats, L130gats, L135gats, L138gats, L143gats, L146gats, L149gats, L152gats, L153gats, L156gats, L159gats, L165gats, L171gats,L177gats, L183gats, L189gats, L195gats, L201gats, L207gats, L210gats, L219gats, L228gats, L237gats, L246gats, L255gats, L259gats, L260gats,L261gats, L267gats, L268gats, L388gats, L389gats, L390gats, L391gats, L418gats, L419gats, L420gats, L421gats, L422gats, L423gats, L446gats, L447gats, L448gats, L449gats, L450gats, L767gats, L768gats, L850gats, L863gats, L864gats, L865gats, L866gats, L874gats, L878gats, L879gats, L880gats : std_logic := '0';
    --signal key0, key1, key2, key3, key4, key5, key6, key7, key8 : std_logic;
begin
    test: c880g port map( K9 => key(0), K8 => key(1), K7 => key(2), K6 => key(3), K5 => key(4), K4 => key(5), K3 => key(6), K2 => key(7), K1 => key(8),   
        L1gat => L1gats, L8gat => L8gats, L13gat => L13gats, L17gat => L17gats, L26gat => L26gats, L29gat => L29gats, L36gat => L36gats, L42gat => L42gats, L51gat => L51gats, L55gat => L55gats, L59gat => L59gats, L68gat => L68gats, 
        L72gat => L72gats, L73gat => L73gats, L74gat => L74gats,L75gat => L75gats, L80gat => L80gats, L85gat => L85gats, L86gat => L86gats, L87gat => L87gats, L88gat => L88gats, L89gat => L89gats, L90gat => L90gats, L91gat => L91gats, L96gat => L96gats, 
        L101gat => L101gats, L106gat => L106gats, L111gat => L111gats, L116gat => L116gats, L121gat => L121gats, L126gat => L126gats, L130gat => L130gats, L135gat => L135gats, L138gat => L138gats, L143gat => L143gats, L146gat => L146gats, L149gat => L149gats, 
        L152gat => L152gats, L153gat => L153gats, L156gat => L156gats, L159gat => L159gats, L165gat => L165gats, L171gat => L171gats,L177gat => L177gats, L183gat => L183gats, L189gat => L189gats, L195gat => L195gats, L201gat => L201gats, L207gat => L207gats, 
        L210gat => L210gats, L219gat => L219gats, L228gat => L228gats, L237gat => L237gats, L246gat => L246gats, L255gat => L255gats, L259gat => L259gats, L260gat => L260gats,L261gat => L261gats, L267gat => L267gats, L268gat => L268gats, 
        L388gat  => L388gats, L389gat => L389gats, L390gat => L390gats, L391gat => L391gats, L418gat => L418gats, L419gat => L419gats, L420gat => L420gats, L421gat => L421gats, L422gat => L422gats, 
        L423gat => L423gats, L446gat => L446gats, L447gat => L447gats, L448gat => L448gats, L449gat => L449gats, L450gat => L450gats, L767gat => L767gats, L768gat => L768gats, L850gat => L850gats, L863gat => L863gats, L864gat => L864gats, L865gat => L865gats, L866gat => L866gats, 
        L874gat => L874gats, L878gat => L878gats, L879gat => L879gats, L880gat => L880gats);
    process
    begin
    
    stimloop : for i in 0 to 511 loop
    
            wait for 10ns;
    
                 key <= std_logic_vector(to_unsigned(i, 9)); 
    
            wait for 10ns;
    
        end loop stimloop;
      


        
    end process;
end Behavioral;
