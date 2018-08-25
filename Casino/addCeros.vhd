library ieee;
use ieee.std_logic_1164.all;

Entity addCeros is
	Generic(n: integer:=4; nn: integer:=6);
	Port(	Ent: in std_logic_vector(n-1 downTo 0);
			Sal: out std_logic_vector(nn-1 downTo 0));
end addCeros;

Architecture sol of addCeros is

Begin
	Sal(n-1 downTO 0) <= Ent;
	Sal(nn-1 downTo n) <= (Others => '0');
end sol;