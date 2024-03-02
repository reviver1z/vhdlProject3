library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity my_mux is
    Port ( data_in_0 : in  STD_LOGIC_VECTOR (7 downto 0);
           data_in_1 : in  STD_LOGIC_VECTOR (7 downto 0);
           data_in_2 : in  STD_LOGIC_VECTOR (7 downto 0);
           data_in_3 : in  STD_LOGIC_VECTOR (7 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           mux_out : out  STD_LOGIC_VECTOR (7 downto 0));
end my_mux;

architecture Structural of my_mux is
    signal temp0, temp1, temp2, temp3: STD_LOGIC_VECTOR (7 downto 0);
begin
    -- Decode the select lines
    temp0 <= data_in_0 when sel="00" else (others => '0');
    temp1 <= data_in_1 when sel="01" else (others => '0');
    temp2 <= data_in_2 when sel="10" else (others => '0');
    temp3 <= data_in_3 when sel="11" else (others => '0');

    -- Combine the outputs
    mux_out <= temp0 or temp1 or temp2 or temp3;
end Structural;
