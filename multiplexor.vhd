library ieee;
use ieee.std_logic_1164.all;

entity multiplexor is
port(
i3:in std_logic_vector(2 downto 0);
i2:in std_logic_vector(2 downto 0);
i1:in std_logic_vector(2 downto 0);
i0:in std_logic_vector(2 downto 0);
sel:in std_logic_vector(1 downto 0);
o: out std_logic_vector(2 downto 0)
);
end multiplexor;

architecture behavior of multiplexor is
begin
process(i3,i2,i1,i0,sel)
begin
case sel is
	when "00"=>o<=i0;
	when "01"=>o<=i1;
	when "10"=>o<=i2;
	when "11"=>o<=i3;
	when others=>o<="ZZZ";
end case;
end process;
end behavior;
