library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use ieee.std_logic_textio.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all; 



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity c3540_sim is
--  Port ( );
end c3540_sim;

architecture Behavioral of c3540_sim is
    component c3540 is
        port (N1,N13,N20,N33,N41,N45,N50,N58,N68,N77,
          N87,N97,N107,N116,N124,N125,N128,N132,N137,N143,
          N150,N159,N169,N179,N190,N200,N213,N222,N223,N226,
          N232,N238,N244,N250,N257,N264,N270,N274,N283,N294,
          N303,N311,N317,N322,N326,N329,N330,N343,N349,N350,
          K1, K2, K3, K4, K5, K6, K7, K8, K9 : in std_logic;
          
          N1713,N1947,N3195,N3833,N3987,N4028,N4145,N4589,N4667,N4815,
          N4944,N5002,N5045,N5047,N5078,N5102,N5120,N5121,N5192,N5231,
          N5360,N5361 : out std_logic);
     end component;
     
     signal key : std_logic_vector (8 downto 0) := "110100100";
     signal input : std_logic_vector (49 downto 0) := "10010111111101010011001001110101101101110010110000";
     signal output : std_logic_vector (21 downto 0) := "0000000000000000000000";
     -- 0000001001101011111000 correct output
     -- 110100100 correct key
begin
test: c3540 port map (N1 => input(49), N13 => input(48), N20 => input(47), N33 => input(46), N41 => input(45), N45 => input(44), N50 => input(43), N58 => input(42), N68 => input(41),
            N77 => input(40), N87 => input(39), N97 => input(38),N107 => input(37),N116 => input(36),N124 => input(35),N125 => input(34),N128 => input(33),N132 => input(32),N137 => input(31),N143 => input(30),
            N150 => input(29),N159 => input(28),N169 => input(27),N179 => input(26),N190 => input(25),N200 => input(24),N213 => input(23),N222 => input(22),N223 => input(21),N226 => input(20),N232 => input(19),
            N238 => input(18),N244 => input(17),N250 => input(16),N257 => input(15),N264 => input(14),N270 => input(13),N274 => input(12),N283 => input(11),N294 => input(10),N303 => input(9),N311 => input(8),
            N317 => input(7),N322 => input(6),N326 => input(5),N329 => input(4),N330 => input(3),N343 => input(2),N349 => input(1),N350 => input(0),N1713 => output(21), N1947 => output(20),N3195 => output(19),
            N3833 => output(18),N3987 => output(17),N4028 => output(16),N4145 => output(15),N4589 => output(14),N4667 => output(13),N4815 => output(12),N4944 => output(11),N5002 => output(10),N5045 => output(9),
            N5047 => output(8),N5078 => output(7),N5102 => output(6),N5120 => output(5),N5121 => output(4),N5192 => output(3),N5231 => output(2),N5360 => output(1),N5361 => output(0), K1 => key(0), K2 => key(1),
            K3 => key(2),K4 => key(3),K5 => key(4),K6 => key(5),K7 => key(6),K8 => key(7),K9 => key(8));
            
    process

    begin
         
    stimloop : for i in 0 to 511 loop
    
            wait for 1ns;
    
            key <= std_logic_vector(to_unsigned(i, key'length));  
    
  --          wait for 1ns;
    
        end loop stimloop;
        
    end process;
    
end Behavioral;
