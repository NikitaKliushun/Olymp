{Barkovsky Nikolay Anatolevich,Boloshin,10,2}
var a:array[1..3000,1..2] of longint;
    q:array[0..3000] of longint;
    n,m,i,j,w:longint;
procedure qwe(i,j,s:longint);
 var k:longint;
 begin
  if i>m
   then w:=1;;
  for k:=j+1 to n do
   if a[i,1]+q[k]>s
    then begin
          if w=1
           then exit;
          a[i,2]:=k;
          qwe(i+1,k,a[i,1]+q[k]);
         end;
 end;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 readln(m,n);
 for i:=1 to m do
  read(a[i,1]);
 for i:=1 to n do
  read(q[i]);
 w:=0;
 qwe(1,0,0);
 if a[m,2]<>0
  then for i:=1 to m do
        write(a[i,2],' ')
  else write('-1');
 close(input);
 close(output);
end.