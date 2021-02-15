program zz;
 var a,p,o:array [1..1000] of integer;
     kol,k,n,m,i:integer;
     f:text;
procedure did(l,n:integer);
 var i:integer;
 begin
 i:=1;
 while i<=n do
  if l>0 then if a[i]<>p[i]
            then begin
              a[i]:=a[i]+l;
              inc(o[i]);
              break;
              end
             else inc(i)
    else if a[i]<>0
    then begin
          a[i]:=a[i]+l;
          inc(o[i]);
          break;
         end
    else inc(i);
 end;
procedure proc(l,kol,k,n:integer; var m:integer);
 begin
 while kol<>k do
  begin
   kol:=kol+l;
   did(l,n);
   inc(m);
  end;
 end;
procedure inp;
begin
assign(f,'input.txt');
reset(f);
read(f,n,k);
kol:=0;
for i:=1 to n do
 begin
  readln(f,a[i],p[i]);
  kol:=kol+a[i];
 end;
close (f);
end;
procedure ras(m,l:integer);
var j:longint;
begin
 writeln(f,m);
 for i:=1 to n do
  if o[i]<>0
   then for j:=1 to o[i] do
         if l<0 then writeln(f,i*-1)
                else writeln(f,i);

end;

begin
inp;
assign(f,'output.txt');
rewrite(f);
if kol>k
 then begin
       proc(-1,kol,k,n,m);
       ras(m,-1)
      end
 else begin
       proc(1,kol,k,n,m);
       ras(m,1)
      end;
close(f);
end.