{Свиpиденко Гpигоpий,11'Б, гимназия г.Дзеpжинска }
{$-02}
program t1z3n52;
var n,i,m,j,t,k:longint;
    a,b:array[1..65535] of longint;
begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);
  read(n,m);
  for i:=1 to m do
    read(a[i]);
  for i:=1 to n do
    b[i]:=i;
  for i:=1 to m do
   for j:=1 to n do
     if a[i]=b[j] then
                   begin
                     write(j,' ');
                     t:=b[j];
                     for k:=1 to j-1 do
                       b[j-k+1]:=b[j-k];
                     b[1]:=t;
                     break;
                   end;


  close(input);
  close(output);
end.