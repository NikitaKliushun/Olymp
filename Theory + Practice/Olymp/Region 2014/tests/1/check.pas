program Check01;
var
  a, b, c, a1, b1, c1, t : int64;
  d, d1 : array [1..3] of int64;
  s, s2 : string;
  op1, op2, op :char;
  error, i, j : integer;
  f1, f2, f3 : text;
begin
  assign ( f1, 'input.txt' );
  reset ( f1 );
  assign ( f2 , 'output.txt' );
  reset ( f2 );
  assign ( f3 , ParamStr(1) );
  reset ( f3 );

  read ( f2, s);
  read ( f3, s2);
  if (s2=s)
     then begin
            writeln('Correct');
            Halt(0);
          end;
  a := 0;
  i := 1;
  while (i<=Length(s)) and (s[i] in ['0'..'9']) do
    begin
      a := a * 10 + ord ( s[i] ) - ord('0');
      i:=i+1;
    end;
  if (i>Length(s)) or (i=1)
     then begin
            writeln('Error in position ',i);
            Halt(0);
          end;
  op1:=s[i]; i:=i+1; j:=i; b:=0;
  if not (op1 in ['=','+','-','*','/'])
     then begin
            writeln('Error in position ',i-1);
            Halt(0);
          end;
 while (i<=Length(s)) and (s[i] in ['0'..'9']) do
    begin
      b := b * 10 + ord ( s[i] ) - ord('0');
      i:=i+1;
    end;
  if (i>Length(s)) or (i=j)
     then begin
            writeln('Error in position ',i);
            Halt(0);
          end;
  op2:=s[i]; i:=i+1; j:=i; c:=0;
  if not (op2 in ['=','+','-','*','/'])
     then begin
            writeln('Error in position ',i-1);
            Halt(0);
          end;
  while i<=Length(s) do
    begin
      c := c * 10 + ord ( s[i] ) - ord('0');
      i:=i+1;
    end;
  if i=j
     then begin
            writeln('Error in position ',i);
            Halt(0);
          end;
  d[1] := a; d[2] := b; d[3] := c;
  read (f1, d1[1], d1[2], d1[3]);
  for i:=1 to 2 do
    for j:=1 to 3-i do
      if d[j]>d[j+1]
         then begin
                t:=d[j]; d[j]:=d[j+1]; d[j+1]:=t;
              end;
  for i:=1 to 2 do
    for j:=1 to 3-i do
      if d1[j] > d1[j+1]
         then begin
                t:=d1[j]; d1[j]:=d1[j+1]; d1[j+1]:=t;
              end;
  t:=1;
  for i:=1 to 3 do
    if d[i]<>d1[i]
       then t:=0;
  if t=0
     then begin
            writeln('Error: set of numbers not equal.');
            Halt(0);
          end;
  if not ((op1='=') and (op2 in ['+','-','*','/']) or
          (op2='=') and (op1 in ['+','-','*','/']))
     then begin
            writeln('Error: set of operations is bad.');
            Halt(0);
          end;
  if op1='='
     then begin
            c1:=a;
            a1:=b;
            b1:=c;
            op:=op2;
          end
     else begin
            c1:=c;
            a1:=a;
            b1:=b;
            op:=op1;
          end;
  case op of
    '+':t:=a1+b1;
    '-':t:=a1-b1;
    '*':t:=a1*b1;
    '/':t:=a1 div b1;
  end;

  if t = c1
     then writeln('Correct')
     else writeln('Error: Incorrect equation.');
  close (f1);
  close (f2);
  close (f3);
end.

