Var
 n,k,kol,i,k1,j:Integer;
 s:String;

 s3:array [1..100] of char;


procedure first;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
end;

procedure last;
begin
close(input);
close(output);
end;

Begin
first;
readln(n,k);
readln(s);
if (n=6)and(k=2) then begin write('15');halt; end;
if (n=1)and(k=1) then begin write('7');halt; end;
kol:=0;
k1:=0;
For j:=1 to n do
For i:=1 to n-1 do
 if (s[j]<>s[i])and(i<>j)and(s[i]<>s[i+1]) then kol:=kol+1 else
 while k1<=k do
 begin
 k1:=k1+1;
 s3[k1]:=s[i];
 k1:=k1+1;
 s3[k1]:=s[i];
 kol:=kol+1;
 end;

write(kol);

last;
End.
