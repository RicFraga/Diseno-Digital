LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY RU IS
	PORT (
		D0, D1, D2, D3: IN STD_LOGIC;		-- Entradas en paralelo
		ES: IN STD_LOGIC;					-- Bit que se cargará en los flip flops desplazados
		OPER0, OPER1: IN STD_LOGIC;			-- Selectores de las operaciones a realizar
		CLK, CLR: IN STD_LOGIC;				-- Reloj y Clear
		Q0, Q1, Q2, Q3: OUT STD_LOGIC		-- Salidas
	);

END RU;

ARCHITECTURE BEHAVE OF RU IS
BEGIN
	PROCESS(CLK)
		VARIABLE V0: STD_LOGIC;				-- Variables para almacenar los valores introducidos
		VARIABLE V1: STD_LOGIC;
		VARIABLE V2: STD_LOGIC;
		VARIABLE V3: STD_LOGIC;
		BEGIN
			IF(CLK='1' AND CLK'EVENT) THEN
				IF(CLR='1') THEN			-- Operacion de limpieza (todos los valores se van a 0)
					V0:='0';
					V1:='0';
					V2:='0';
					V3:='0';

				ELSIF(OPER1='0' AND OPER0='0') THEN		-- Operación de retención (se mantienen los valores)
					V0:=V0;
					V1:=V1;
					V2:=V2;
					V3:=V3;

				ELSIF(OPER1='0' AND OPER0='1') THEN		-- Operación de carga (se guardan las entradas actuales)
					V0:=D0;
					V1:=D1;
					V2:=D2;
					V3:=D3;

				ELSIF(OPER1='1' AND OPER0='0') THEN		-- Operación de Corrimiento a la Izquierda
					V0:=V1;
					V1:=V2;
					V2:=V3;
					V3:=ES;

				ELSIF(OPER1='1' AND OPER0='1') THEN		-- Operación de Corrimiento a la Derecha
					V0:=ES;
					V1:=V0;
					V2:=V1;
					V3:=V2;									

				END IF;
			END IF;

		Q0<=V0;				-- Salidas del registro
		Q1<=V1;
		Q2<=V2;
		Q3<=V3;

	END PROCESS;
END BEHAVE;
