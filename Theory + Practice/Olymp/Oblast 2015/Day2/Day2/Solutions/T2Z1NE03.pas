uses math;
type
 mas = array[0..100011] of string[1];
var
 a,b:mas;
 i,kol,m,n,dl:longint;
 x:char;
 t:string[1];

procedure Per(var xx:mas;var y:longint);
 var
  i:longint;
 begin
  for i:=1 to y div 2 do
   begin
     t:=xx[i];
     xx[i]:=xx[y-i+1];
     xx[y-i+1]:=t;
   end;
 end;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
  i:=0;
  while not eoln do
   begin
    inc(i);
    read(x);
    a[i]:=x;
   end;
   readln;
  n:=i;
  i:=0;
  while not eoln do
   begin
    read(x);
    inc(i);
    b[i]:=x;
   end;
   kol:=0;
   m:=i;
   per(a,n);
   per(b,m);
  if m < n then n:=m;
 for i:=1 to n do
  if a[i] =  b[i] then inc(kol)
                  else break;
 write(kol);
 close(input);
 close(output);
end.
