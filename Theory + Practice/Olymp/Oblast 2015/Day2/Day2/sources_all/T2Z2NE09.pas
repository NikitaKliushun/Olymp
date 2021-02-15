//t2z2ne09

var a, j, z: qword;
    i : longint;
    ans : qword;
    b :array[1..50,1..2] of longint;
    c :boolean;
begin

assign (input,'input.txt');
assign (output,'output.txt');
reset(input);
rewrite(output);


fillchar(b, sizeof(b),0);


read(a);
z :=a;
c := false;
if a mod 2 = 0 then

begin
  b[1,1] := 2;
  while (a mod 2 =0) do
  begin
    a := a div 2;
    inc(b[1,2]);
  end;
  c := true;
end;

if c then j := 2 else j := 1;
i := 3;


while i <= sqrt(z) + 1 do

if a mod i = 0 then

begin

  b[j,1] := i;
  while (a mod i =0) do
  begin
    a := a div i;
    inc(b[j,2]);
  end;
  inc(j);
  i := i + 2;
 end else i := i + 2;





if a > 1 then
  begin
    b[j,1] := a;
    b[j,2] := 1;
  end;




ans := 1;

for  i := 1 to j do
  if b[i,2] mod 3 = 2 then
  begin
    ans := ans * b[i,1];
    dec(b[i,2]);
  end else
  if b[i,2] mod 3 = 1 then
  begin
    ans := ans * b[i,1]*b[i,1];
    dec(b[i,2],2);
  end;


writeln(ans);


close(input);
close(output);


end.
