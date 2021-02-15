{Шкет Никита Николаевич, г.Молодечно, 10 класс, 1 задача}
program T2Z1N613;
var a,p,z:array [1..1000] of integer;
    i,j,n,k,x:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

 readln(n,k);
 for i:=1 to n do begin
  read(a[i]);
  readln(p[i]);   end;

 j:=0;
 for i:=1 to n do
  j:=j+a[i];

 x:=0;
 if j<>k then begin
 if j<k then begin
  i:=1;
  repeat
   if a[i]<p[i] then begin
    a[i]:=a[i]+1;
    j:=j+1;
    x:=x+1;
    z[x]:=i; end else i:=i+1;


  until j=k;
             end
  else if j>k then begin
   i:=1;
   repeat
    if a[i]>0 then begin
     a[i]:=a[i]-1;
     j:=j-1;
     x:=x+1;
     z[x]:=0-i; end else i:=i+1;
    until j=k;     end;

              end;
  writeln(x);
  for i:=1 to x do
   writeln(z[i]);

close(input);
close(output);
end.
