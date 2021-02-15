{Барковский Николай Анатольевич,г. Воложин,10,4}
var a:array[1..2000,1..4000] of longint;
    n,k,i,j,min,l:longint;
function dl(i:longint):longint;
 var t,q:longint;
 begin
  dl:=0;
  for j:=2 to n do
   begin
    t:=0;
    q:=0;
    while i-t>0 do
     begin
      if (a[j,i+t]=a[1,i]) or (a[j,i-t]=a[1,i])
       then begin
             dl:=dl+t;
             q:=1;
             break;
            end;
      inc(t);
     end;
    if q=0 then begin
                 dl:=-1;
                 exit;
                end;
   end;
 end;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 readln(n,k);
 for i:=1 to n do
  for j:=1 to k do
   begin
    read(a[i,j]);
    a[i,j+k]:=a[i,j];
   end;
 min:=-1;
 for i:=1 to k do
  begin
   l:=dl(i);
   if ((min>l) and (l<>-1)) or (min=-1)
    then min:=l;
  end;
 write(min);
 close(input);
 close(output);
end.
