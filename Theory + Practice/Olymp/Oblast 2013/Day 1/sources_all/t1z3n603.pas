{T1Z3N603}
program z;
 var t:text;
 mat:array[1..400,1..400]of byte;
 n,m,a,b,c,d:integer;
 k,p:byte;
 st:string;

 procedure pr(a1,b1,x,y:integer);
  var i,j,i1:integer;
 begin
  for i:=x to x+(a1 div 2) do
   for j:=y to y+b1 do
    begin
    i1:=2*x+a1-i;
    if mat[i,j]<>mat[i1,j]
     then begin
          p:=1;
          exit;
          end;
    end;
 end;

begin
 assign(t,'input.txt');
 reset(t);
 read(t,n,m);
 readln(t);
 for a:=1 to n do
  begin
  readln(t,st);
  for b:=1 to m do
   mat[a,b]:=ord(st[b])-48;
  end;
 close(t);

 k:=0;
 p:=0;
 for c:=1 to n-1 do
  for d:=1 to m do
   for a:=1 to n-c do
    for b:=0 to m-d do
     begin
     pr(a,b,c,d);
     if p=0
      then k:=k+1
      else p:=0;
     end;
 assign(t,'output.txt');
 rewrite(t);
 write(t,k);
 close(t);
end.
