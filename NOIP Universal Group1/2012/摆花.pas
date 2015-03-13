var
	n,m,i,j,k:longint;
	a:array[0..100] of longint;
	f:array[0..100,0..100] of longint;
begin
	readln(n,m);
	for i:=1 to n do
		read(a[i]);
	for i:=0 to a[1] do
		f[1,i]:=1;
	for i:=2 to n do
		for j:=0 to m do
			for k:=0 to a[i] do
				if j>=k then
					f[i,j]:=(f[i,j]+f[i-1,j-k]) mod 1000007;
	writeln(f[n,m]);
end.