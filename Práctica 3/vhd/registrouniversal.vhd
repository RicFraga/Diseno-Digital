
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: registrouniversal.vhd

--    Date: Fri Sep 06 09:02:00 2019

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-15PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY ru IS
    PORT (
	                  d0 :    in std_logic ;
	                  d1 :    in std_logic ;
	                  d2 :    in std_logic ;
	                  d3 :    in std_logic ;
	                  es :    in std_logic ;
	               oper0 :    in std_logic ;
	               oper1 :    in std_logic ;
	                 clk :    in std_logic ;
	                 clr :    in std_logic ;
	                  q0 : inout std_logic ;
	                  q1 : inout std_logic ;
	                  q2 : inout std_logic ;
	                  q3 : inout std_logic
    );
END ru;

-- End of Test Bench Header

ARCHITECTURE DSMB of ru is

	signal jed_node1	: std_logic:='0' ; -- clk
	signal jed_node2	: std_logic:='0' ; -- d0
	signal jed_node3	: std_logic:='0' ; -- d1
	signal jed_node4	: std_logic:='0' ; -- d2
	signal jed_node5	: std_logic:='0' ; -- d3
	signal jed_node6	: std_logic:='0' ; -- oper0
	signal jed_node7	: std_logic:='0' ; -- oper1
	signal jed_node8	: std_logic:='0' ; -- es
	signal jed_node9	: std_logic:='0' ; -- clr
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node16	: std_logic:='0' ;
	signal jed_node17	: std_logic:='0' ;
	signal jed_node18	: std_logic:='0' ;
	signal jed_node19	: std_logic:='0' ;
	signal jed_node20	: std_logic:='0' ;
	signal jed_node21	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of clk:SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of d0:SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of d1:SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of d2:SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of d3:SIGNAL is "0005";

SIGNAL  jed_oept_6:std_logic:='0';
--Attribute PIN_NUMBERS of oper0:SIGNAL is "0006";

SIGNAL  jed_oept_7:std_logic:='0';
--Attribute PIN_NUMBERS of oper1:SIGNAL is "0007";

SIGNAL  jed_oept_8:std_logic:='0';
--Attribute PIN_NUMBERS of es:SIGNAL is "0008";

SIGNAL  jed_oept_9:std_logic:='0';
--Attribute PIN_NUMBERS of clr:SIGNAL is "0009";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of q3:SIGNAL is "0014";

SIGNAL  jed_oept_15:std_logic:='0';
SIGNAL  jed_sum_15,jed_fb_15:std_logic:='0';
--Attribute PIN_NUMBERS of q1:SIGNAL is "0015";

SIGNAL  jed_oept_22:std_logic:='0';
SIGNAL  jed_sum_22,jed_fb_22:std_logic:='0';
--Attribute PIN_NUMBERS of q0:SIGNAL is "0022";

SIGNAL  jed_oept_23:std_logic:='0';
SIGNAL  jed_sum_23,jed_fb_23:std_logic:='0';
--Attribute PIN_NUMBERS of q2:SIGNAL is "0023";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= clk ;
jed_node2 <= d0 ;
jed_node3 <= d1 ;
jed_node4 <= d2 ;
jed_node5 <= d3 ;
jed_node6 <= oper0 ;
jed_node7 <= oper1 ;
jed_node8 <= es ;
jed_node9 <= clr ;
Mcell_14:c22v10m
generic map(reg,
   ninv,
   xreg,
   	15 ns, --tpd
	15 ns, --tea
	15 ns, --ter
	8 ns, --tco
	10 ns, --ts
	0 ns, --th
	6 ns, --twh
	6 ns, --twl
	4 ns, --tcf
	15 ns, --taw
	10 ns, --tar
	20 ns, --tap
	10 ns  --tspr
)
port map(
     d=>jed_sum_14,
     clk=>jed_node1,
     oe=>jed_oept_14,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q3,
     fb=>jed_fb_14
   );

Mcell_15:c22v10m
generic map(reg,
   ninv,
   xreg,
   	15 ns, --tpd
	15 ns, --tea
	15 ns, --ter
	8 ns, --tco
	10 ns, --ts
	0 ns, --th
	6 ns, --twh
	6 ns, --twl
	4 ns, --tcf
	15 ns, --taw
	10 ns, --tar
	20 ns, --tap
	10 ns  --tspr
)
port map(
     d=>jed_sum_15,
     clk=>jed_node1,
     oe=>jed_oept_15,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q1,
     fb=>jed_fb_15
   );

Mcell_22:c22v10m
generic map(reg,
   ninv,
   xreg,
   	15 ns, --tpd
	15 ns, --tea
	15 ns, --ter
	8 ns, --tco
	10 ns, --ts
	0 ns, --th
	6 ns, --twh
	6 ns, --twl
	4 ns, --tcf
	15 ns, --taw
	10 ns, --tar
	20 ns, --tap
	10 ns  --tspr
)
port map(
     d=>jed_sum_22,
     clk=>jed_node1,
     oe=>jed_oept_22,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q0,
     fb=>jed_fb_22
   );

Mcell_23:c22v10m
generic map(reg,
   ninv,
   xreg,
   	15 ns, --tpd
	15 ns, --tea
	15 ns, --ter
	8 ns, --tco
	10 ns, --ts
	0 ns, --th
	6 ns, --twh
	6 ns, --twl
	4 ns, --tcf
	15 ns, --taw
	10 ns, --tar
	20 ns, --tap
	10 ns  --tspr
)
port map(
     d=>jed_sum_23,
     clk=>jed_node1,
     oe=>jed_oept_23,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q2,
     fb=>jed_fb_23
   );

jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_14<=(one);

jed_sum_14<= (((not(jed_fb_23)) and (jed_node6) and (jed_node7) and not(jed_node9)
) or
(not(jed_node6) and (jed_node7) and (jed_node8) and not(jed_node9)
) or
((jed_node5) and (jed_node6) and not(jed_node7) and not(jed_node9)
) or
(not(jed_node6) and not(jed_node7) and not(jed_node9)
 and (not(jed_fb_14))));

jed_oept_15<=(one);

jed_sum_15<= (((not(jed_fb_22)) and (jed_node6) and (jed_node7) and not(jed_node9)
) or
((not(jed_fb_23)) and not(jed_node6) and (jed_node7)
 and not(jed_node9)) or
((jed_node3) and (jed_node6) and not(jed_node7) and not(jed_node9)
) or
(not(jed_node6) and not(jed_node7) and not(jed_node9)
 and (not(jed_fb_15))));

jed_oept_22<=(one);

jed_sum_22<= (((jed_node6) and (jed_node7) and (jed_node8) and not(jed_node9)
) or
(not(jed_node6) and (jed_node7) and not(jed_node9) and (not(jed_fb_15))
) or
((jed_node2) and (jed_node6) and not(jed_node7) and not(jed_node9)
) or
((not(jed_fb_22)) and not(jed_node6) and not(jed_node7)
 and not(jed_node9)));

jed_oept_23<=(one);

jed_sum_23<= (((jed_node6) and (jed_node7) and not(jed_node9) and (not(jed_fb_15))
) or
(not(jed_node6) and (jed_node7) and not(jed_node9) and (not(jed_fb_14))
) or
((jed_node4) and (jed_node6) and not(jed_node7) and not(jed_node9)
) or
((not(jed_fb_23)) and not(jed_node6) and not(jed_node7)
 and not(jed_node9)));

end DSMB;
