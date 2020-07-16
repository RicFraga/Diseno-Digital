library ieee;
use ieee. std_logic_1164.all;

entity SR_FF is
PORT(
	S,R,CLOCK: in std_logic;
	Q: out std_logic);
end SR_FF;
 
Architecture behavioral of SR_FF is
	begin
		PROCESS(CLOCK)
			begin
				if(CLOCK='1' and CLOCK'EVENT) then
					if(R='0' AND S='0') then
						Q <= Q;
					elsif(S='1' and R='1')then
						Q <='Z';
					elsif(S='0' and R='1')then
						Q <='0';
					else
						Q <='1';
					end if;
				end if;
		end PROCESS;
end behavioral;