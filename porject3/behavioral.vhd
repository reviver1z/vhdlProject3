library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use std.standard.all;

entity my_mux is
port(
data_in_0:in std_logic_vector(7 downto 0);
data_in_1:in std_logic_vector(7 downto 0);
data_in_2:in std_logic_vector(7 downto 0);
data_in_3:in std_logic_vector(7 downto 0);
sel:in std_logic_vector(1 downto 0);
mux_out:out std_logic_vector(7 downto 0)
);
end my_mux;

architecture Behavioral of my_mux is
begin
process(sel,data_in_0,data_in_1,data_in_2,data_in_3)
begin
if sel="00"then 
mux_out<=data_in_0;
elsif sel="01"then 
mux_out<=data_in_1;
elsif sel="10"then
mux_out<=data_in_2;
elsif sel="11"then
mux_out<=data_in_3;
end if;
end process;
end Behavioral;
