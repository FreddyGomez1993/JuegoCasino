library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

Entity contador_1to15 is
	Port(Resetn, clock, En, Ld: in std_logic;
	Ent: in std_logic_vector(3 downTo 0);
	Q: Buffer std_logic_vector(3 downTo 0));
End contador_1to15;

Architecture sol of contador_1to15 is

Begin
	Process(Resetn, clock)
	Begin
		if resetn = '0' then Q <= (others => '0');
		elsif clock'event and clock = '1' then
			if En = '1' then
				if Ld = '1' then Q <= Ent;
				elsif Q = "0000" then Q <= "0001";
				elsif Q = "1111" then Q <= "0001";
				else Q <= Q+1;
				end if;
			end if;
		end if;
	end Process;
end sol;