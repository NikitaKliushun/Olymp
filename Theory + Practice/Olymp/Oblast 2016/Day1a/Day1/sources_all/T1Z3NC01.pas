Var
a:array[1..100000]of byte;
n,i,j,k,p:longint;
Begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
Readln(n);
For i:=1 to n do
Read(a[i]);
For i:=1 to n-1 do
if a[i]<>a[i+1]
then k:=k+1;
if k>=2
then begin
     For i:=1 to n do
     if a[i]=1
     then p:=p+1;
     if p<=n div 2
     then For i:=1 to n do
          if a[i]=1
          then n:=n-1
          else k:=k
     else For i:=1 to n do
          if a[i]=2
          then n:=n-1
          else k:=k;
     end
else k:=k;
Writeln(n);
Close(input);
Close(output);
End.