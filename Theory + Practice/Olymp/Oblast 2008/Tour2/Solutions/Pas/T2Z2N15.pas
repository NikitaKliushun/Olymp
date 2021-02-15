{Косик Иван, г.Воложин)}
program T2Z2N15;
var
  N,K,i,b,j,c,j2:longint;
  a:array[1..1000000] of char;
  d:boolean;
begin
ASSIGN(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
  readln(N,K);
  for i:=1 to N do
    read(a[i]);
  b:=0;
  for i:=1 to N do
  begin
    d:=true;
    b:=b+1;
    c:=1;
    for j:=i to N-1 do
    begin
      if d=false
        then break;
    {  if (j<>1) and (a[j]<>a[j+1])
        then b:=b+1;
      if (j<>1) and (a[j]<>a[j-1])
        then c:=1;                }
      for j2:=i to j-1 do
        if a[j]=a[j2]
          then
          begin
            c:=c+1;
            if c>K
              then
              begin
                d:=false;
                break
              end
          end;
      if (j<>1) and (d=true)
        then b:=b+1;
      if (j<>1) and (a[j]<>a[j-1]) {and (d=true) }
        then c:=1;
    end
  end;
  writeln(b-1);
  close(input);
  close(output);
end.
