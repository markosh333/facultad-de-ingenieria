LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY deco_hex IS
	PORT (NUM: IN INTEGER RANGE 0 TO 15;
			SEG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY;

ARCHITECTURE BEAS OF deco_hex IS
BEGIN
	WITH NUM SELECT
		SEG <= "00000011" WHEN 0,
				 "10011111" WHEN 1,
				 "00100101" WHEN 2,
				 "00001101" WHEN 3,
				 "10011001" WHEN 4,
				 "01001001" WHEN 5,
				 "01000001" WHEN 6,
				 "00011111" WHEN 7,
				 "00000001" WHEN 8,
				 "00001001" WHEN 9,
				 "00010001" WHEN 10, -- A
				 "11000001" WHEN 11, -- b
				 "01100011" WHEN 12, -- C
				 "10000101" WHEN 13, -- d
				 "01100001" WHEN 14, -- E
				 "01110001" WHEN OTHERS;
END BEAS;