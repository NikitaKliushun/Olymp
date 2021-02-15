{Golovin Artem, g. Zhodino, Gymnasia 1, 10 klass, zadacha 3}
type
    mas=array[1..100000] of byte;
    int=longint;
var
   s,ss,x,y:string;
   a,b:mas;
   ka,kb,g:int;
   i,j,n,m:int;
   k:integer;
   f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,m);
s:=''; ss:='';
 for i := 1 to n do
  begin
   read(f1,ka);
    if (i mod 2=1) then
                       for j := 1 to ka do s:=s+'1'
                   else
                       for j:= 1 to ka do s:=s+'0'
  end;
 for i := 1 to m do
  begin
   read(f1,kb);
    if (i mod 2=1) then
                       for j := 1 to kb do ss:=ss+'1'
                   else
                       for j:= 1 to kb do ss:=ss+'0'
  end;
y:='';
 for i := 1 to 255 do
  y:=y+'0';
 if length(s)<length(ss) then
                             begin
                              x:=s;
                              s:=copy(y,1,length(ss)-length(s))+x
                             end
                         else
                             begin
                              x:=ss;
                              ss:=copy(y,1,length(s)-length(ss))+x
                             end;
x:='';
 for i := length(s) downto 1 do
  if ((ss[i]='0') and (s[i]='0')) or ((ss[i]='1') and (s[i]='1')) then x:=x+'0'
                                                                  else
                                                                      if ((ss[i]='1') and (s[i]='0')) or ((ss[i]='0') and (s[i]='1')) then x:=x+'1';
y:=x;
j:=0;
 for i := length(y) downto 1 do
  begin
   j:=j+1;
   x[j]:=y[i]
  end;
if length(x)>1 then
                   for i := 1 to length(x) do
                    if x[i]='1' then break;
delete(x,1,i-1);
i:=1; g:=0; k:=1;
 while length(x)<>0 do
  begin
   i:=i+1;
    if x[i]<>x[i-1] then
                        begin
                         delete(x,1,k);
                         g:=g+1;
                         a[g]:=k;
                         k:=1
                        end
                    else
                        if length(x)=1 then
                                           begin
                                            delete(x,1,k);
                                            g:=g+1;
                                            a[g]:=k;
                                            k:=1
                                           end
                                        else
                                            k:=k+1
  end;
   for i := 1 to g do
    write(f2,a[i],' ');
//writeln(x);
close(f1);
close(f2)
end.