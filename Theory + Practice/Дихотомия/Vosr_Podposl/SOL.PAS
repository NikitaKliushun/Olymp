program Task;
const
    MaxD         =           50001;
var
    a,d,p,m      :           array [1..MaxD] of LongInt;
    i,j,n,max    :           LongInt;
    nom          :           LongInt;
    met          :           array [1..maxD] of BooLean;

procedure InputData;
begin
  Assign(Input,'Posl.in');
  ReSet(Input);
  ReadLn(n);
  for i:=1 to n do
    Read(a[i]);
  Close(Input);
end;

procedure Sol;
begin
  nom:=1;
  for i:=1 to n do
    d[i]:=1;
  p[1]:=0;
  for i:=2 to n do
    begin
      for j:=i-1 downto 1 do
        if (a[i] > a[j]) and (d[i] < d[j] + 1)
                  then begin
                         d[i]:=d[j] + 1;
                         p[i]:=j;
                         if d[i] > Max then begin
                                              Max:=d[i];
                                              nom:=i;
                                            end;
                       end;
    end;
end;

procedure OutputData;
begin
  Assign(Output,'Posl.out');
  ReWrite(Output);
  i:=nom;
  j:=0;
  while i > 0 do
    begin
      Inc(j);
      m[j]:=a[i];
      met[i]:=True;
      i:=p[i];
    end;
  WriteLn(j);
  for i:=j downto 2 do
    Write(m[i],' ');
  WriteLn(m[1]);
  Close(Output);
end;

begin
  InputData;
  Sol;
  OutputData;
end.