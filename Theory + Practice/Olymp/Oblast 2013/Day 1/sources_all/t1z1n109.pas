//Головащенко Александр, МГОЛ, задача1
type
  integer = longint;
var
  s: string;
  time: array [1..46800] of integer;
  i, j, t, k, n: integer;

function proc: integer;
begin
  proc:= ord(s[8]) - 48 + (ord(s[1]) - 48)*36000 + (ord(s[2]) - 48)*3600 + (ord(s[4]) - 48)*600 + (ord(s[5]) - 48)*60 + (ord(s[7]) - 48)*10 - 28799;
end;

procedure opred;
var
  x: integer;
begin
  s:= '';
  x:= i + 28799;
  s:= chr(x div 36000 + 48);
  x:= x mod 36000;
  s:= s + chr(x div 3600 + 48) + ':';
  x:= x mod 3600;
  s:= s + chr(x div 600 + 48);
  x:= x mod 600;
  s:= s + chr(x div 60 + 48) + ':';
  x:= x mod 60;
  s:= s + chr(x div 10 + 48);
  x:= x mod 10;
  s:= s + chr(x + 48);

  x:= j + 28799;
  s:= s + '-';

  s:= s + chr(x div 36000 + 48);
  x:= x mod 36000;
  s:= s + chr(x div 3600 + 48) + ':';
  x:= x mod 3600;
  s:= s + chr(x div 600 + 48);
  x:= x mod 600;
  s:= s + chr(x div 60 + 48) + ':';
  x:= x mod 60;
  s:= s + chr(x div 10 + 48);
  x:= x mod 10;
  s:= s + chr(x + 48);
end;

begin
  assign(input, 'input.txt');
  reset(input);
  assign(output, 'output.txt');
  rewrite(output);
  readln(n, t);

  fillchar(time, sizeof(time), 0);
  for i:=1 to n * 2 do begin
    readln(s);
    inc(time[proc]);
    //writeln(proc);
  end;

  i:= 1;
  j:= t + 1;

  while j <= 46800 do begin
    if time[i] <> 0  then begin
      opred;
      for k:= 1 to time[i] do
        writeln(s);
      dec(time[j],time[i]);
    end;
    inc(i);
    inc(j);
  end;

  close(input);
  close(output);
end.
