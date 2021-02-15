label 1;
var m,n,i,j,j1,sc,r,max,sc1:longint;b:array[1..2,0..30{3000}]of longint;h:array[1..3000]of longint;g:array[0..3000]of longint;f1,f2:text;
procedure read1;
begin
readln(f1,m,n);
For i:=1 to m do
read(f1,h[i]);
For i:=1 to n do
begin
read(f1,b[1,i]);
b[2,i]:=i;
end;
end;

BEGIN
assign(f1,'input.txt');reset(f1);
assign(f2,'output.txt');rewrite(f2);
 read1;
 sc:=0;
 for i:=1 to m-1 do
 if h[i]<>h[i+1]
  then sc:=1;
 if sc=0
  then begin writeln(f2,-1);goto 1;end;
  sc:=0;
 For j:=1 to n-1 do
  begin
   max:=b[1,j];r:=j;
   For i:=j+1 to n do
    If b[1,i]>max
     then begin max:=b[1,i];r:=i;end;
   If r<>j then begin b[1,r]:=b[1,j];b[2,r]:=b[2,j];b[1,j]:=max;b[2,j]:=r;end;
  end;
  sc:=0;
 For i:=1 to  n do
  begin
   if b[1,i]<>b[1,i-1]
    then begin sc:=sc+1; g[sc]:=g[sc]+1;end
    else g[sc]:=g[sc]+1;
  end;

    For j1:=1 to sc do
     begin
      for j:=g[j1-1]+1 to sc1+g[j1]-1 do
       begin
        max:=b[2,j];r:=j;
        for i:=j+1 to sc1+g[j1] do
         If b[2,i]<max
          then begin max:=b[2,i];r:=i;end;
        If r<>j then begin b[2,r]:=b[2,j];b[2,j]:=max;end;
       end;
      sc1:=sc1+g[j1];
     end;
    For j:=1 to m-1 do
     begin
      max:=b[2,j];r:=j;
      for i:=j+1 to m do
        If b[2,i]<max
         then begin max:=b[2,i];r:=i;end;
      If r<>j then begin b[2,r]:=b[2,j];b[2,j]:=max;end;
     end;
for i:=1 to m do
write(f2,b[2,i],' ');
1:close(f1);close(f2);
end.
