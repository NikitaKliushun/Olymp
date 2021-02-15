type
	int = longint;
const
	maxn = 10000;
	maxk = 1000;
	maxx = 1000000000;
var
	n, k : int;
	c : array [1..maxn + 1] of int;

	s, new_s : array [0..maxk] of int;
	i, j : int;

function Max(a,b : LongInt) : LongInt;
begin
    if a > b then Max:=a
             else Max:=b;
end;

begin
        assign(input,'guitar.in');
	reset(input);
	assign(output, 'guitar.out');
        rewrite(output);
	read(n, k);
	for i := 1 to n do begin
		read(c[i]);
	end;

	fillchar(s, sizeof(s), 0);
	for i:=1 to n + 1 do
            begin
		for j:=0 to k do
		  new_s[0]:= max(new_s[0], s[j]);
		for j:=1 to k do
		  new_s[j]:= s[j-1] + c[i];
		s:=new_s;
	    end;
	writeln(s[0]);
end.
