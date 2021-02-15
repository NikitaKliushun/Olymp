Program T2Z2NB11;{Матвиевич Егор Сергеевич г.Солигорск}
const maxnm=3000;
type mas=array[1..maxnm] of longint;
masi=array[1..maxnm]of integer;
var i,j:longint; m,n,k:integer;h,b:mas;
h1,b1,d:masi;
c:array[1..maxnm] of int64;
 procedure sort(var x:mas;var x1:masi;raz:integer);
 var i,j,swn:integer;sw:longint;
  begin
   for i:=1 to raz-1 do
   for j:=1 to raz-i do
    if x[j]>x[j+1] then
     begin
      sw:=x[j];
      swn:=x1[j];
       x[j]:=x[j+1];
       x1[j]:=x1[j+1];
       x[j+1]:=sw;
       x1[j+1]:=swn;
     end;
  end;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
readln(m,n);
 for i:=1 to m do
 begin
 read(h[i]);
 h1[i]:=i;
 end;

  for i:=1 to n do
  begin
  read(b[i]);
  b1[i]:=i;
  end;

   sort(h,h1,m);

   sort(b,b1,n);

      j:=1;
       c[1]:=h[m]+b[1];
        d[h1[m]]:=b1[1];
        b[j]:=0;k:=j;
           for i:=m-1 downto 1 do
           begin
            for j:=2 to n do
            begin
             if(h[i]+b[j]>c[k])and(k<j)and(b[j]<>0)

             then
             begin
             c[h1[i]]:=h[i]+b[j];
             b[j]:=0;d[h1[i]]:=b1[j];
             break;
             end;
            end;
           end;
      for i:=1 to m-1 do
      if (c[i]>=c[i+1])and(c[i]<>0)and(c[i+1]<>0) then begin
      write(-1);exit;end;
       for i:=1 to m-1 do
       for j:=1 to m-i do
       if d[j]>d[j+1]
        then
        begin
         k:=d[j];
         d[j]:=d[j+1];
         d[j+1]:=k;
        end;
       for i:=1 to m do
       write(d[i],' ');
close(input);close(output);
end.
