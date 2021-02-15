{Karasik Simon, Borovliany gumnasium, 11 klass, NB15}
const
  MAX=3010;
var
  f1, f2:text;
  h, b:array[0..MAX] of longint;
  dp:array[0..MAX, 0..MAX] of integer;
  pr:array[1..MAX] of integer;
  n, m:longint;
  //
  i, j, k:longint;

Procedure read_data;
Begin
  read(f1, m, n);
  for i:=1 to m do
    read(f1, h[i]);
  for i:=1 to n do
    read(f1, b[i]);

  h[0]:=0; b[0]:=0;

  for i:=0 to m do
    for j:=0 to n do
      dp[i, j]:=0;

End;

Procedure print_dp;
BEgin
  for i:=0 to m do begin
    for j:=0 to  n do
      write(f2, dp[i, j]);
    writeln(f2);
  end;
End;

Procedure do_dp;
var
  max, maxp:integer;
Begin
  for i:=1 to m do begin
    for j:=1 to n do begin
      max:=0;
      for k:=0 to j-1 do begin
        if (h[i]+b[j]>h[i-1]+b[k]) and (dp[i-1, k]+1>max) then begin
          max:=dp[i-1, k]+1;
          maxp:=k;
        end;
      end;
      dp[i, j]:=max;
      pr[i]:=maxp;
      pr[i+1]:=j;
    end;
  end;
End;

Procedure res;
var
  max, maxp, prev:integer;
Begin
  max:=0;
  pr[1]:=0;
  for i:=1 to n do
    if dp[m, i]>max then begin
      max:=dp[m, i];
      maxp:=i;
    end;

  if max<m then
    writeln(f2, -1)
  else begin
    //for i:=1 to m+1 do
      //write(f2, pr[i], ' ');
     i:=m-1; j:=maxp-1; prev:=maxp;
     repeat
      // write(f2, prev);
       pr[i+1]:=prev;
       max:=0;
       for j:=1 to prev-1 do begin
         if (dp[i, j]>max) and (h[i]+b[j]<h[i+1]+b[prev]) then
         begin
           max:=dp[i, j];
           maxp:=j;
         end;
       end;

       prev:=maxp;
       dec(i);
     until i=-1;
     for i:=1 to m do
       write(f2, pr[i],' ');


  end;
End;

BEGIN
  assign(f1, 'input.txt'); reset(f1);
  assign(f2, 'output.txt'); rewrite(f2);

  read_data;
  do_dp;
  //print_dp;
  res;

  close(f1);
  close(f2);
END.
