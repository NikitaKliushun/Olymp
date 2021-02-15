{Mazhut' Roman Sergeevich Molodechno 9 54}
program T2Z3N54;
var
n,m,i,j,sum: longint;
c1,c2,c3: array[1..1000] of longint;
function InFont(nc,rez,f,isf: longint):longint;
 var
 tmpi: longint;
 begin
 InFont:=rez;
 for tmpi:=1 to m do
  if (c1[tmpi]=nc)and(nc<>f) then
   begin
   InFont:=InFont+1;
   InFont:=InFont(c2[tmpi],InFont,f,0);
   end else
   if (c1[tmpi]=nc)and(isf=1) then
   begin
   InFont:=InFont+1;
   InFont:=InFont(c2[tmpi],InFont,f,0);
   end;
 end;
function InBack(nc,rez,f,isf: longint):longint;
 var
 tmpi: longint;
 begin
 InBack:=rez;
 for tmpi:=1 to m do
  begin
  if (c2[tmpi]=nc)and(nc<>f) then
   begin
   InBack:=InBack+1;
   InBack:=InBack(c1[tmpi],InBack,f,0);
   end else
   if (c2[tmpi]=nc)and(isf=1) then
   begin
   InBack:=InBack+1;
   InBack:=InBack(c1[tmpi],InBack,f,0);
   end;
  if (c2[tmpi]=nc)and(nc<>f)and(isf=0) then
   begin
   exit;
   end
  end;
 end;
begin
read(n,m);
for i:=1 to m do
 begin
 read(c1[i]);
 readln(c2[i]);
 end;
for i:=1 to m do sum:=sum+InFont(i,0,i,1)-1+InBack(i,0,i,1)-1;
if sum<0 then sum:=0;
writeln('!!!!!',InBack(5,0,5,1)-1);
writeln(sum);
end.