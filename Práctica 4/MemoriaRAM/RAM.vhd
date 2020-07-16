----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:25:37 09/13/2019 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Dependencies: 
-- Description: 
--
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
	PORT(
		D : IN STD_LOGIC_VECTOR(7 downto 0);		
		A : IN STD_LOGIC_VECTOR(2 downto 0);
		CLK : IN STD_LOGIC;
		W : IN STD_LOGIC;
		R : IN STD_LOGIC;
		O: OUT STD_LOGIC_VECTOR(7 downto 0)
	);
end RAM;

architecture Behavioral of RAM is
	type ram_type is array(6 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
	signal RAM: ram_type;
begin

	PROCESS(CLK)
		BEGIN
			IF(CLK'EVENT AND CLK = '1') THEN
				IF(W='1') THEN
					RAM(TO_INTEGER(UNSIGNED(A))) <= D;
				
				ELSIF(R='1') THEN
					O <= RAM(TO_INTEGER(UNSIGNED(A)));				
				END IF;
			END IF;
		END PROCESS;
end Behavioral;