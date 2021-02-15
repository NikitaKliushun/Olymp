var m,w,s,b,t,i,sc:integer;d:array[1..100000]of longint;f1,f2:text;
procedure read1;
begin
readln(f1,m,w);
for i:=1 to m do
read(f1,d[i]);
readln(f1,s,b,t);
end;

Begin
 assign(f1,'input.txt');reset(f1);
 assign(f2,'output.txt');rewrite(f2);
 read1;
 For i:=1 to m do
  begin
   If b>s
    then If (t-1-b+s)mod w=0
          then sc:=sc+1;
   If (b<s)
    then If (t-1+s-b)mod w=0
          then sc:=sc+1;
   If b=s
    then If (t-1)mod w=0
          then sc:=sc+1;
   s:=s+(d[i] mod w);
  end;
writeln(f2,sc);
close(f1);close(f2);
End.