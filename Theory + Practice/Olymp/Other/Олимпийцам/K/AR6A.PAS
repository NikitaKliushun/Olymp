{Resheto Eratosfena}
program ar6;
var a:array[1..64000] of byte;
    n,i,j,k:longint;
begin
  Assign(output,'out.txt');
  Rewrite(output);
  Read(n);
  FillChar(a,SizeOf(a),0);
  i:=1;
  a[1]:=1; k:=0;
  while i<=Sqrt(n) do
    begin
      while a[i]=1 do
        i:=i+1;
      j:=i+i;
      while j<=n do
        begin
          a[j]:=1;
          j:=j+i;
        end;
      i:=i+1;
    end;
  for i:=1 to n do
    if a[i]=0
       then begin
              Write(i,',');
              k:=k+1;
             if k mod 10=0
                then Writeln;
            end;
  Writeln;
  Writeln(k);
  Close(output);
end.
