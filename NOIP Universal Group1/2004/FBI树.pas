var
	n:longint;
	x:char;

function f(n:longint):char;
var
	ch,ch1,ch2:char;
begin
	if n=0 then
	begin
		read(ch);
		if ch='1' then ch:='I'
			else ch:='B';
	end
	else
	begin
		ch1:=f(n-1);
		ch2:=f(n-1);
		if ch1=ch2 then ch:=ch1
			else ch:='F';
	end;
	write(ch);
	exit(ch);
end;
 
begin
	readln(n);
	x:=f(n);
	writeln;
end.