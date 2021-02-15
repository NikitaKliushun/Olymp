{Задача №2 Коледа Влад}
Var
a,b:array[1..3000]of longint;
m,n,k,i,j,max,min,p,z,x:longint;
Begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
Readln(m,n);
For i:=1 to m do
Read(a[i]);
For i:=1 to n do
Read(b[i]);
For i:=1 to m do
Begin
j:=i+1;
While (a[i]<>a[j])and(j<=m)do
j:=j+1;
if j=m+1
then k:=k+1;
end;
For i:=1 to n do
Begin
j:=i;
While j<n do
j:=j+1;
if a[i]=a[j]
then x:=x+1;
if x>max
then max:=x;
x:=0;
end;
if k<max
then Writeln('-1')
else if a[1]>a[2]
     then begin
          max:=0;
          min:=maxlongint;
          For i:=1 to n do
          if b[i]>max
          then begin max:=b[i];p:=i;end;
          For i:=1 to p do
          if b[i]<min
          then begin min:=b[i];z:=i;end;
          if min+a[1]>a[2]+max
          then Writeln('-1')
          else Writeln(z,' ',p);
          end
     else begin
          max:=0;
          min:=maxlongint;
          For i:=1 to n do
          if b[i]>max
          then begin max:=b[i];p:=i;end;
          For i:=p to n do
          if b[i]<min
          then begin min:=b[i];z:=i;end;
          if min+a[2]>a[1]+max
          then Writeln('-1')
          else Writeln(p,' ',z);
          end;
Close(input);
Close(output);
End.


