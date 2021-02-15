{сугак даниил викторович 10 1}
Var b:array[1..1000] of longint;
    a:array[1..1000] of string;
    n,t:longint;
    f1,f2:text;

Procedure reading;
var i,f,x,j,m,l:longint;
    s,y,mk,ms,z:string;

begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,n,t);
readln(f1);
for i:=1 to n*2 do begin
                    x:=0;
                    y:='';
                    b[i]:=0;
                    readln(f1,a[i]);
                    s:=a[i];

                    y:=s[1]+s[2];
                    val(y,x,f);
                    b[i]:=x*3600;

                    y:=s[4]+s[5];
                    val(y,x,f);
                    b[i]:=b[i]+x*60;

                    y:=s[7]+s[8];
                    val(y,x,f);
                    b[i]:=b[i]+x;
                    end;


For i:=1 to n*2 do begin
m:=b[i];
ms:=a[i];
l:=i;
for j:=i+1 to n*2 do
              if m>=b[j] then begin
                             m:=b[j];
                             ms:=a[j];
                             l:=j;
                             end;
x:=b[i];
b[i]:=b[l];
b[l]:=x;

mk:=a[i];
a[i]:=a[l];
a[l]:=mk;
end;


i:=2;
while i<=n*2  do begin
               z:=a[i-1]+#45+a[i];
               write(f2,z);
               writeln(f2);
               i:=i+2;
               end;
end;

Begin
reading;
close(f1);
close(f2);
End.
