//type
 // MyStr=string[30];
var
  f1, f2:text;
  k, y:longint;


Procedure print(a:longint);
var
  b, i:longint;
Begin
  b:=1;
  for i:=1 to 30 do begin
    if ((a and b)>0) then
      write(f2, 1)
    else
      write(f2, 0);
    b:=b shl 1;
  end;
End;

Function to_str(a:longint):string;
var
  b, i:longint;
  s:string;
Begin
  b:=1;
  s:='';
  for i:=1 to 30 do begin
    if ((a and b)>0) then
      s:=s+'1'
    else
      s:=s+'0';

    b:=b shl 1;
  end;

  to_str:=s;
End;

BEGIN
  assign(f1, 'input.txt'); reset(f1);
  assign(f2, 'output.txt'); rewrite(f2);


  read(f1, k, y);

  if y=0 then begin
    if k=1 then
      write(f2, 0)
    else if k=2 then
      write(f2, 1, ' ', 2)
    else if k=3 then
      write(f2, 1, ' ', 3, ' ', 2);
  end
  else if y=1 then begin
    if k=1 then
      write(f2, 1)
    else if k=2 then
      write(f2, 1, ' ', 5)
    else if (k=3) then
      write(f2, 1, ' ', 3, ' ',5);
  end
  else
    write(f2, -1);





  close(f1); close(f2);
END.
