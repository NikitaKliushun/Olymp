{NB15, Karasik Simon, Borovliany gymnasium, 11 klass}
const
  SIZE=10;
  INF=200;
var
  f1, f2:text;
  a:array[0..SIZE+1, 0..SIZE+1] of integer;
  i, j, count, ci, cj, n:integer;
  c:char;
  s:string;



Function to_co(c:char):integer;
Begin
  if c in ['a'..'i'] then
    to_co:=ord(c)- ord('a')+1
  else
    to_co:=10;
End;

Procedure rd(var ci, cj:integer);
var
  s:string;
Begin
  readln(f1, s);

  if length(s)=3 then begin
    ci:=ord(s[1])-ord('0');
    cj:=to_co(s[3]);
  end
  else begin
    ci:=10;
    cj:=to_co(s[4]);
  end;
End;

Procedure ship(i0, j0:integer);
var
  i1, j1, i2, j2, i, j, l:integer;

Begin
  i1:=i0; j1:=j0; i2:=i0; j2:=j0;

  if (a[i0, j0+1]=-1) then begin
    i2:=i0; j2:=j0+1;
    while(a[i2, j2]=-1) do
      inc(j2);

    dec(j2);
  end;
  if (a[i0, j0-1]=-1) then begin
    i1:=i0; j1:=j0-1;
    while(a[i1, j1]=-1) do
      dec(j1);

    inc(j1);
  end;
  if (a[i0+1, j0]=-1) then begin
    i2:=i0+1; j2:=j0;
    while(a[i2, j2]=-1) do
      inc(i2);

    dec(i2);
  end;
  if (a[i0-1, j0]=-1) then begin
    i1:=i0-1; j1:=j0;
    while(a[i1, j1]=-1) do
     dec(i2);

    inc(i2);
  end;

  l:=abs((i1-i2)+(j1-j2))+1;

  for i:=i1 to i2 do
    for j:=j1 to j2 do
      a[i, j]:=l;




End;


Function fight(ci, cj:integer):string;
var
  i, j:integer;
Begin
  if(a[ci, cj]=0) then
    fight:='MISS'
  else if ((a[ci, cj]=1) and (count=1)) then
    fight:='GAME OVER'
  else if (a[ci, cj]=1) then begin
    fight:='DEAD';
    a[ci, cj]:=0;
    dec(count);
  end
  else begin
    fight:='HIT';

    a[ci, cj]:=INF;

    i:=ci; j:=cj+1;
    while ((a[i, j]>0) and (a[i, j]<>INF)) do begin
      dec(a[i, j]);
      inc(j);
    end;

    i:=ci; j:=cj-1;
    while ((a[i, j]>0) and (a[i, j]<>INF)) do begin
      dec(a[i, j]);
      dec(j);
    end;
    i:=ci+1; j:=cj;
    while ((a[i, j]>0) and (a[i, j]<>INF)) do begin
      dec(a[i, j]);
      inc(i);
    end;
    i:=ci-1; j:=cj;
    while ((a[i, j]>0) and (a[i, j]<>INF)) do begin
      dec(a[i, j]);
      dec(i);
    end;
  end;


End;

BEGIN
  assign(f1, 'input.txt'); reset(f1);
  assign(f2, 'output.txt'); rewrite(f2);

  for i:=0 to SIZE+1 do begin
    a[0, i]:=0;
    a[SIZE+1, i]:=0;
    a[i, 0]:=0;
    a[i, SIZE+1]:=0;
  end;

  for i:=1 to SIZE do begin
    for j:=1 to SIZE do begin
       read(f1, c);
       //write(f2, c, ' ');

       if(c='.') then
         a[i, j]:=0
       else
         a[i, j]:=-1;
    end;
    readln(f1);
    //writeln(f2);
  end;

  {for i:=0 to SIZE+1 do begin
    for j:=0 to SIZE+1 do
      write(f2, a[i, j], ' ');
    writeln(f2);
  end;

  writeln(f2); }

  count:=0;
  for i:=1 to SIZE do
    for j:=1 to SIZE do
      if a[i, j]=-1 then begin
        ship(i, j);
        inc(count);
      end;
  {for i:=1 to SIZE do begin
    for j:=1 to SIZE do
      write(f2, a[i, j], ' ');
    writeln(f2);
  end ;   }

  //writeln(f2, count);

  readln(f1, n); i:=0;

  repeat
    rd(ci, cj);
    inc(i);
   // writeln(f2, ci, ' ', cj);

    s:=fight(ci, cj);
    writeln(f2, s);
  until (s='GAME OVER') or (i=n);

 { for i:=1 to n do begin
    rd(ci, cj);

    writeln(f2, ci, ' ', cj);
  end;  }



  {for i:=1 to SIZE do begin
    for j:=1 to SIZE do
      write(f2, a[i, j], ' ');
    writeln(f2);
  end;  }





  close(f1);
  close(f2);
END.
