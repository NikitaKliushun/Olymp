Var
a:array [1..110] of Longint;
i,j,n:Integer;
x,y,max:Longint;

procedure first;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
end;

procedure last;
begin
close(input);
close(output);
end;

Begin
first;
read(n);
For i:=1 to n do read(a[i]);

For i:=1 to n-1 do
 For j:=1 to n-i do
 if a[j]<a[j+1] then
 begin
     x:=a[j];
   a[j]:=a[j+1];
 a[j+1]:=x;
 end;
x:=0;
y:=0;
For i:=1 to n div 2 do x:=x+a[i];
For j:=i+1 to n do y:=y+a[j];
max:=x-y;
write(max);

last;
End.
