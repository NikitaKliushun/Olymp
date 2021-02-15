Var
a,b:array[1..10000]of byte;
min:longint;
i,j,k,n:byte;
Begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
Readln(n,k);
For i:=1 to k do
Read(a[i]);
For i:=1 to k do
Read(b[i]);
min:=100000;
For i:=1 to k do
For j:=1 to k do
if a[i]=b[j]
then if abs(i-j)>k div 2
     then if j>i
          then if k-j+i<min
               then min:=k-j+i
               else min:=min
          else if k-i+j<min
               then min:=k-i+j
               else min:=min
     else if abs(i-j)<min
          then min:=abs(i-j);
if min=100000
then Writeln(-1)
else Writeln(min);
Close(input);
Close(output);
End.


