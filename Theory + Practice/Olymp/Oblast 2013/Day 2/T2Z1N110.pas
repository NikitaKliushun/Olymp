var a,p:array[1..2] of integer;
    kf1,kf2:real;
    n,k,min,i :integer;



procedure for1;
  begin
  if k>a[1] then begin
                 writeln(k-a[1]);
                 for i:=a[1] to k do
                 writeln(1);
                 end
            else begin
                 writeln(a[1]-k);
                 for i:=k to a[1]-1 do
                 writeln(-1);
                 end;
  if k=a[1] then writeln(0);
  end;




begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
readln(n,k);
for i:=1 to 1 do
  begin
  read(a[i]);
  read(p[i]);
  end;

if n=1 then for1;
Close(input); Close(output);
end.
