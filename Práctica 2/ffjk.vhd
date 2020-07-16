LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY JKF IS
  PORT (
    j, k, clk, rst: IN STD_LOGIC;
    q, qb: OUT STD_LOGIC
  );

END JKF;

ARCHITECTURE BEHAVORIAL OF JKF IS
  BEGIN
  PROCESS(j, k, clk, rst)
    BEGIN
      IF(rst='1') THEN
        q <= '0';
        qb <= '0';

      ELSIF(rising_edge(clk)) THEN
        IF(j/=k) THEN
          q <= j;
          qb <= not j;

        ELSIF(j='1' and k='1') THEN
          q <= not j;
          qb <= j;

        END IF;
      END IF;
    END PROCESS;
END BEHAVORIAL;
