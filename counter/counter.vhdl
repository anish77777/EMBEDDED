
 library IEEE;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity comparator is
port( a,b : in unsigned(2 downto 0);  --3 bit numbers to be compared
        a_eq_b : out std_logic;  --a equals b
        a_le_b : out std_logic;  --a less than b
        a_gt_b : out std_logic   --a greater than b
      );    
end comparator;

architecture gate_level of comparator is

signal temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9 : std_logic := '0';

BEGIN

temp1 <= not(a(2) xor b(2));  --XNOR gate with 2 inputs.
temp2 <= not(a(1) xor b(1));  --XNOR gate with 2 inputs.
temp3 <= not(a(0) xor b(0));  --XNOR gate with 2 inputs.
temp4 <= (not a(2)) and b(2);
temp5 <= (not a(1)) and b(1);
temp6 <= (not a(0)) and b(0);
temp7 <= a(2) and (not b(2));
temp8 <= a(1) and (not b(1));
temp9 <= a(0) and (not b(0));

a_eq_b <= temp1 and temp2 and temp3;  -- for a equals b.
a_le_b <= temp4 or (temp1 and temp5) or (temp1 and temp2 and temp6); --for a less than b
a_gt_b <= temp7 or (temp1 and temp8) or (temp1 and temp2 and temp9); --for a greater than b

end gate_level;
