{Kunovski Igor, Borisov, Liceum, zadacha 3}
program T1Z3N02;

procedure OpenF;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
end;

procedure CloseF;
begin
  close(input);
  close(output);
end;

var basa:array[1..65535] of longint;
    n,m,z:longint;
    i,j:longint;
begin
  OpenF;
  readln(n,m);
  i:=1;
  for i:=1 to n do basa[i]:=i;
  for i:=1 to m do begin
    read(z);
    write(basa[z],' ');
    j:=1;
    for j:=1 to n do
      if basa[j]<basa[z] then basa[j]:=basa[j]+1;
    basa[z]:=1;
  end;
  CloseF;
end.
