var
  f          : text;
  n,i        : integer;
  FileIn     : string;

begin
  ReadLn(FileIn);
  ReadLn(n);
  Assign(f,FileIn);
  ReWrite(f);
  WriteLn(f,n);
  Randomize;
  for i:=1 to n - 1 do
   Write(f,Random(100) + 1,' ');
  Write(f,Random(100) + 1);
  Close(f);
end.