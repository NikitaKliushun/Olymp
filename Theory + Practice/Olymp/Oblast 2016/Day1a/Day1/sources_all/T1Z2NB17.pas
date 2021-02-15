var
a,b1,b2,c:array[1..30] of shortint;

i,j,k,x,n,m,r,g,bx1,bx2:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(r,x);
i:=0;
g:=1;
while x<>0 do
 begin
 i:=i+1;
 if x mod 2=1
  then begin a[i]:=1; k:=k+1; end
  else begin c[g]:=i; g:=g+1; end;
 x:=x div 2;
 end;
 if g<r
  then begin writeln('-1'); halt; end;
b1[30-n+c[i]]:=1;
 bx1:=1;
 for j:=29 downto 30-n do
  bx1:=(bx1+b1[j])*2;
 b1[30-n+c[i]]:=0;
 bx2:=1;
 for j:=29 downto 30-n do
  bx2:=(bx2+b1[j])*2;
 writeln(bx1,' ',bx2,' ');

  close(input);
 close(output); 
end. 