{Яковлев Вячеслав Александрович, г.Борисов, 9 "А", 2}
Program T1Z2N201;
  Var a,b,c,k,i:int64;
      f,f1:text;
Begin
  k:=0;
  assign(f,'input.txt');
  assign(f1,'output.txt');
  reset(f);
  rewrite(f1);
  Read(f,a);
  read(f,c);
  b:=a;
  If c mod a = 0 then
  begin
    While b<=c do
    begin
      If (c mod b = 0)and(b mod a = 0)then
        inc(k);
      inc(b,a);
    end;
  end;
  Write(f1,k);
  close(f);
  close(f1);
end.
