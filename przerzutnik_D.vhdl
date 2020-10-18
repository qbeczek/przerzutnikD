library ieee;
use ieee.std_logc_1164.all;

entity dffr_module is
	port(
	clk		: in std_logic;
	rst		: in std_logic;
	d		: in std_logic;
	q		: out std_logic;
	);
end dffr_module;

architecture data_flow of dffr_module is
begin 
	as_proc:
	process(clk, rst)
	begin 
		if(rst = '1') then
			q <= '0';
		elsif rising_edge(clk) then
			q <= d;
		end if;
	end as_proc;
end data_flow;