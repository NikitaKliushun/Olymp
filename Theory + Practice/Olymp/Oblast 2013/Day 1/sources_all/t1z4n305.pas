{Терехов Константин Николаевич г. Борисов Задача 4}
program t1z4n305;
var
i, o, n,m,k,f:longint;
start:array[1..200000] of boolean;
used:array[1..200000] of boolean;
put:array[1..200000] of longint;
arr_k:array[1..200000] of longint;
max_col:longint;
procedure rec(x,c:longint);
var i:longint;
begin
  //if (c<=k) then
 // begin

    if (start[x]) and (not used[x]) then
    begin
      inc(max_col);
      used[x]:=true;
     // writeln(x);
    end;
    for i:=1 to n do
    begin
      if (put[i]=x) and (i<>f) then
      begin
        if (arr_k[x]<k) then
        begin
           inc(arr_k[x]);
           rec(i,c+1);
        end;
      end;
    end;
 // end;
end;
begin
  Assign(input, 'input.txt');
  Reset(input);
  Assign(output, 'output.txt');
  ReWrite(output);
  max_col:=0;
  readln(input, n, m, k);
  for i:=1 to m do
  begin
    read(input, o);
    start[o]:=true;
  end;
  readln(input);
  for i:=1 to n do read(input, put[i]);
  readln(input);
  readln(f);
  //arr_k[f]:=1;
  rec(f,0);

  writeln(output, max_col);
  close(input);
  close(output);

end.
