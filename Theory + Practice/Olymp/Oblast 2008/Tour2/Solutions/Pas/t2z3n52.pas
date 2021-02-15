{Свиpиденко Гpигоpий, 11Б, гимназия г.Дзеpжинска}
{$-02}
program t2z3n52;
label l;
var n,m,j,k,d,f,s,d1:longint;
        i:longint;
        q:boolean;
   x,y:array[1..1000] of longint;
procedure found(z:longint; var s:longint;q:boolean);
var j:longint;
begin
  for j:=1 to m do
    begin
    if (z=x[i])  then
      begin
      s:=i;
      q:=true;
      end
      else s:=0;
    if (z=y[i])  then
      begin
      s:=i;
      q:=false;
      end
    else s:=0;
  end;
end;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(n,m);
for i:=1 to m do
  begin
  read(x[i]);
  read(y[i]);
  end;
if n =m then begin d :=m+2; goto l end;
for i:=1 to n do
begin
  k:=y[i];
  for j:=1 to m do
  begin
    if j<>1 then
    if q then k:=y[s]
         else k:=x[s];

    found(k,s,q);
    if s>0  then
    d:=d+1;
    if s<=0 then break;

    end;

   if d1>d then d1:=d;
end;

l:
write(d-2);
close(input);
close(output);

end.
