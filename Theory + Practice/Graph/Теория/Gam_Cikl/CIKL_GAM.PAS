const
  Dl           =              100;
var
  a            :              array [1..Dl,1..Dl] of Byte;
  St           :              array [1..Dl*Dl] of Integer;
  n,m,i,dx,dy  :              Integer;
  met          :              array [1..Dl] of Byte;

procedure InputData;
begin
  Assign(Input,'Input.txt');
  ReSet(Input);
  ReadLn(n);
  ReadLn(m);
  for i:=1 to m do
    begin
      ReadLn(dx,dy);
      a[dx,dy]:=1;
      a[dy,dx]:=1;
    end;
  Close(Input);
  Assign(Output,'Output.txt');
  ReWrite(Output);
end;

procedure Print;
begin
  for i:=1 to n - 1 do
    Write(St[i],' ');
  WriteLn(St[n]);
end;

procedure Per(x : Integer);
var
  v,j : Integer;
begin
  v:=St[x-1];
  for j:=1 to n do
    if a[v,j] <> 0 then
         if (x = n+1) and (j=1) then Print
                                else
            if met[j] = 0 then
                             begin
                               St[x]:=j;
                               met[j]:=1;
                               Per(x+1);
                               met[j]:=0;
                               St[x]:=0;
                             end;
end;

begin
  InputData;
  St[1]:=1;
  met[1]:=1;
  Per(2);
  Close(Output);
end.