//Pogireycik_Margarita_Soligorsk_Gimn1
program T2Z1ND05;
 var m,w,i,s1,s,h,b,j,q,t,dm,a,k,max:integer;
     d:array[1..100000]of integer;
     p:array[1..2,1..100000]of integer;
     f1,f2:text;
begin
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 read(f1,m,w);
 readln(f1);
 for i:=1 to m do
  read(f1,d[i]);
 read(f1,s,b,t);
 close(f1);
 k:=0;
 s1:=s;
 max:=d[1];
 for i:=1 to m do
  if d[i]>max
   then max:=d[i];
 for q:=1 to m do
  begin
   for j:=1 to d[q] do
    begin
     p[1,j]:=j;
    end;
   for h:=max downto d[q]+1 do
    p[1,h]:=0;
   dm:=d[i];
   a:=1;
   while j<>0 do
    begin
     j:=j-1;
     p[2,a]:=s1;
     inc(a);
     if s1<w
      then inc(s1)
      else s1:=1;
    end;
   for h:=max downto d[q]+1 do
    p[2,h]:=0;
   for j:=1 to dm do
    if (p[1,j]=t)and(p[2,j]=b)
     then inc(k);
  end;
 writeln(f2,k);
 close(f2);
end.