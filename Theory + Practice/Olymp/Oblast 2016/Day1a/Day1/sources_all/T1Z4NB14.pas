program T1Z05NB14;
var f1:text; i,n,k,fans,j:integer;
    a:array [1..2000] of ansistring;
    ans,an:int64;
    col:array[1..2000] of byte;

function leng(b,h:integer):integer;
var p,o:integer; min,min1:integer;
begin
min:=2001;
for p:=1 to length(a[1])  do
 if p mod 2 =1 then
 if a[h][p]=a[1][b]
  then
   begin
   if ((b div 2)+1 < k div 2) and ( ((p div 2)+1)>(((b div 2 )+1)+ (k div 2)))
    then min1 :=(k div 2)-(p-(b+ (k div 2)))
     else if (((b div 2)+1) > k div 2) and (((p div 2)+1)< ((b div 2)+1) +(k div 2))
             then min1:= p-((((b div 2)+1) - ((( k div 2)) - p)))
      else min1 := round(((b div 2)+1) -((p div 2)+1));
   if (min1< min) and (min1>=0) then min:=min1;
end;
leng:=min
end;

procedure poick;
var p,o,v,code,aas:integer;c:char;
begin
 for p:=1 to k do
  if p mod 2=1
   then
    begin
     c:=a[1][p];
     val(a[1][p],v,code);
     aas:=1;
     for o:=2 to n do
      if pos(c,a[o])>0
       then aas:=aas+1;
      if aas=n
       then begin col[v]:=1; fans:=fans+1; end;
    end;
end;

begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n,k);
for i:=1 to n do
 readln(f1,a[i]);
close(f1);
assign(f1,'output.txt');
rewrite(f1);
fans:=0;
poick;
ans:=99999999999999999;
if fans=0
 then begin writeln(f1,'-1'); close(f1); exit; end;
for i:=1 to length(a[1]) do
 if (i mod 2=1) and (col[ord(a[1][i])-48]=1)
 then
  begin
   an:=0;
   for j:=2 to n do
    an:=an+leng(i,j);
    writeln(an);
   if (an < ans) then ans:=an;
  end;
writeln(f1,ans);
close(f1);
end.

