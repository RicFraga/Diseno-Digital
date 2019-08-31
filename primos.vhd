LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY PRIMOS IS
PORT (
	a0, a1, a2, a3: IN STD_LOGIC;		-- Entradas al circuito (4 bits)
	o: OUT STD_LOGIC 					-- Salida (1 en caso de que el número sea primo, 0 en caso contrario)
);
	attribute pin_numbers of PRIMOS:
	entity is "a0:1 a1:2 a2:3 a3:4 o:22";
END PRIMOS;

ARCHITECTURE BEHAVE OF PRIMOS IS
BEGIN	
	o <= ((not a0) and (not a1) and a2) or ((not a1) and a2 and a3) or ((not a0) and a2 and a3) or ((not a0) and a1 and a3) or (a1 and (not a2) and a3);	-- Ecuación obtenida mediante mapas de Karnaugh
END BEHAVE;
