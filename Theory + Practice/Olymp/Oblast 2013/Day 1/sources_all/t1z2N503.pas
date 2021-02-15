program z1;
 var
f1,f2:text;
a,c,b,i,k,max,min,kol:longint;
d:array [1..10000] of integer;

begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,a,c);
k:=0;
kol:=0;
if a>c then begin  max:=a; min:=c; end
        else begin max:=c; min:=a; end;
for i:=min to (max div 2)  do if (max mod i=0) then begin k:=k+1; d[k]:=i;  end;
if a=b then writeln(f2,1)
           else begin for i:=1 to k do
             if (d[i] mod min) = 0 then
                 kol:=kol+1;
              writeln(f2,kol+1); end;

    close(f1);
    close(f2);
   end.
