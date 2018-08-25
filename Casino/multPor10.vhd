library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multPor10 is
	generic(n: integer := 4);
	port(
		ent : in std_logic_vector(n-1 downTo 0);
		sal : out std_logic_vector(n+3 downTo 0)
	);
end multPor10;

architecture comp of multPor10 is
	signal int1 : std_logic_vector(n+3 downTo 0);
begin
	int1(n+3 downTo n) <= "0000";
	int1(n-1 downTo 0) <= ent;
	sal <= int1 + int1 + int1 + int1 + int1 + int1 + int1 + int1 + int1 + int1;
end comp;
