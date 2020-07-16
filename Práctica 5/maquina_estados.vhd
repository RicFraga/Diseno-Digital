library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ME is
	PORT (
        CLK, CLR: IN STD_LOGIC;				    -- Reloj y Clear
        ES: IN STD_LOGIC;					    -- Bit que se cargará en los flip flops desplazados
		D: IN STD_LOGIC_VECTOR(0 TO 3);		    -- Entradas en paralelo		
		OPER: IN STD_LOGIC_VECTOR(0 TO 1);	    -- Selectores de las operaciones a realizar		
		Q: OUT STD_LOGIC_VECTOR(0 TO 3)		    -- Salidas
	);
end ME;

architecture Behavioral of ME is
    signal Z: STD_LOGIC_VECTOR(0 TO 3);
    type S is(A, B, C, D, E);
    signal estado: S;
    estado <= A;
    BEGIN
        PROCESS(CLK, CLR, S, estado)
            BEGIN
                IF(CLR = '1') THEN                              -- Si el clear está en 1 se limpia el registro y se reinicia la máquina
                    Z<="0000";

                ELSIF(CLK'EVENT AND CLK='1') THEN           
                    CASE OPER IS
                        WHEN "11" => Z <= ES & Z(0 TO 2);       -- Si Oper(0)=0 y Opero(1)=1 se hace un corrimiento a la derecha

                        WHEN "10" => Z <= ES & Z(1 TO 3);       -- Si Oper(0)=0 y Opero(1)=1 se hace un corrimiento a la izquierda

                        WHEN "01" => Z <= D;                    -- Si Oper(0)=0 y Opero(1)=1 se carga el dato

                        WHEN OTHERS => Z <= D;                  -- Si Oper(0)=0 y Opero(1)=1 se retiene el dato
                    END CASE;

                    -- Ya que fueron modificados los valores se los mandamos a la máquina
                    -- aiiiuddaaaa    

                END IF;
                Q <= Z;
        END PROCESS;
end Behavioral;