var
	n,m,x,y,i,j,xx,yy:longint;
	dx:array[1..8] of -2..2=(-1,-2,-2,-1,1,2,2,1);
	dy:array[1..8] of -2..2=(-2,-1,1,2,2,1,-1,-2);
	f:array[-10..20,-10..20] of int64;
begin
	readln(n,m,x,y);
	for i:=0 to n do
		for j:=0 to m do
			f[i,j]:=0;
	f[x,y]:=-1;
	for i:=1 to 8 do
	begin
		xx:=x+dx[i];
		yy:=y+dy[i];
		if (xx>=0) and (xx<=n) and (yy>=0) and (yy<=m) then
			f[xx,yy]:=-1;
	end;
	f[0,0]:=1;
	for i:=0 to n do
		for j:=0 to m do
			if f[i,j]=-1 then f[i,j]:=0
				else
					if f[i,j]=0 then
						f[i,j]:=f[i-1,j]+f[i,j-1];
	writeln(f[n,m]);
end.