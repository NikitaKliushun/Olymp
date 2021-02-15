{GOLIKOW ALEXANDER, STOLBTSY, 11 CLASS, TASK3}
program t3;
var a:array[1..66000]of longint;
    n,k,j,i,c:longint;
procedure indata;
	begin
	assign(INPUT,'input.txt');
	reset(input);
	readln(n,k);
        assign(output,'output.txt');
        rewrite(output);
        for i:=1 to n do
         a[i]:=i;
	
	for i:=1 to k do
  	 begin
	 read(c);
	 write(a[c],' ');
         for j:=1 to n do
          begin
          if a[j]<a[c] then inc(a[j]);
          end;                        
	 a[c]:=1;
	 end;
         close(input);
         close(output);
	end;
begin
indata;
end.