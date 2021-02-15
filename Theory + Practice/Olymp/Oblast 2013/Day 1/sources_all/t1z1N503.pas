program z1;
 var
f1,f2:text;
n,t,i,j,b1,b2,b3:longint;
a1,a2,a3:string;
b:array [1..1000] of longint;
a:array [1..1000] of string;

begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,t) ;
for i:=1 to n*2 do begin readln(f1,a[i]);
   a1:=copy(a[i],1,2); a2:=copy(a[i],4,2); a3:=copy(a[i],7,2);
   val(a1,b1); val(a2,b2); val(a3,b3);
   b[i]:=b1*60*60+b2*60+b3;
  end;
  for i:=1 to 2*n-1 do for j:=i+1 to 2*n do begin
   if (b[i]+t)=b[j] then
    begin writeln(f2,a[i],'-',a[j]); b[i]:=0; b[j]:=0 ; break;   end;
   if b[j]+t=b[i] then
    begin writeln(f2,a[j],'-',a[i]); b[j]:=0; b[i]:=0; break; end; end;
    close(f1);
    close(f2);
   end.
