{Gud Roman, soligorsk,n55}
program t2z1n55;
var a: array [1..50] of longint;
    n,i,j,ind: word;
    sk,si,big,p:longint;
Begin
assign (input,'input.txt');
reset (input);
assign (output,'output.txt');
rewrite (output);
readln (n);
for i:= 1 to n do
read (a[i]);
big:=0;
p:=n div 2;
if (n < 2) or (n mod 2 <> 0)
then write ('Slishkom malenkoe ili nechotnoe znachenie')
else
 begin
 for i:= 1 to p do
  begin
  for j:= 1 to n do
   if a[j] > big
    then
    begin
    big:=a[j];
    end;
  si:=si + big;
  for ind := 1 to n do
  if a[ind] = big
  then a[ind]:=0;
  big:= 0;
 end;
for i:= 1 to n do
sk:= sk + a[i];
end;
write (si-sk);
close (input);
close (output);
end.
