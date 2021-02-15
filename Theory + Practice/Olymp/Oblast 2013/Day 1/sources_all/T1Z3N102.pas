{$IFDEF NORMAL}
  {$H-,I+,OBJECTCHECKS-,Q-,R-,S-}
{$ENDIF NORMAL}
{$IFDEF DEBUG}
  {$H-,I+,OBJECTCHECKS-,Q+,R+,S-}
{$ENDIF DEBUG}
{$IFDEF RELEASE}
  {$H-,I-,OBJECTCHECKS-,Q-,R-,S-}
{$ENDIF RELEASE}
{Козелько Никита Сергеевич, город Солигорск, 9 класс, задача 3}

var a:array[1..500,1..500] of integer;
    n, m, i, j, ii, jj, bool,x, y:longint;
    kk:int64;
    s:ansistring;
begin
assign(input, 'input.txt');reset(input);
assign(output, 'output.txt');rewrite(output);
readln(n, m);
for i:=1 to n do
 begin
 readln(s);
  for j:=1 to m do
  if s[j]='0' then a[i, j]:=0
              else a[i, j]:=1;
 end;
kk:=0;
for i:=1 to n-1 do
 for j:=1 to m do
  for ii:=i+1 to n do
   for jj:=j to m do
    begin
    y:=ii-i+1; y:=y div 2; bool:=0;
     for x:=1 to y do
     if a[i+x-1, jj]<>a[ii-x+1, jj] then begin
                                     bool:=1;
                                     break;
                                     end;
    if bool=0 then begin
                   inc(kk);
                   //writeln(i, ' ', j, '-', ii, ' ', jj);
                   end
              else break;

    end;

    writeln(kk);
close(input);close(output);
end.