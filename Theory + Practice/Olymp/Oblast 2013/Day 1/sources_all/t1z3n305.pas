{Терехов Константин Николаевич г. Борисов Задача 3}
program dd;
var n, m, i, j, k, p_k, t, v, u, q, w, w1:integer;
a:array[1..400, 1..400] of boolean;
c:char;
e:boolean;
begin
  Assign(input, 'input.txt');
  Reset(input);
  Assign(output, 'output.txt');
  ReWrite(output);

  readln(input, n, m);
  for i:=1 to n do
  begin
    for j:=1 to m do
      begin
        read(input, c);
        if (c='1') then a[i,j]:=true else a[i,j]:=false;
      end;
    readln(input);
  end;
  k:=0;
  p_k:=0;
 // w:=1;
    for v:=3 to n do
    for u:=1 to n-v+1 do
      for i:=u to n-v+1 do
      begin
        for j:=1 to m do
        begin
          e:=true;
          {for q:=0 to (v div 2)-1 do
            if (a[i+q,j]<>a[i+v-q*2-1,j]) then
            begin
              e:=false;
              break;
            end;  }
          e:=a[i,j]=a[i+2,j];
          if e then inc(p_k) else begin
            for t:=1 to p_k do
              k:=k+p_k+1-t;
            p_k:=0;
          end;
        end;
        for t:=1 to p_k do
          k:=k+p_k+1-t;
        p_k:=0;

      end;
  writeln(output, k);
  close(input);
  close(output);

end.
