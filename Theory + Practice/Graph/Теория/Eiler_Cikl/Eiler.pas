program Task;
var
  m           :            array [1..200,1..200] of Integer;
  v           :            array [1..50000] of integer;
  f           :            text;
  i,j,n,m1    :            integer;
  x,y,kol,r   :            integer;

procedure InputData;
begin
  Assign(f,'Eiler.in');
  ReSet(f);
  ReadLn(f,n,m1);
  for i:=1 to m1 do
    begin
      ReadLn(f,x,y);
      Inc(m[x,y]);
      Inc(m[y,x]);
    end;
  Close(f);
end;

function Prov : boolean;
begin
  for i:=1 to n do
    begin
      kol:=0;
      for j:=1 to n do
        if m[i,j] <> 0 then Inc(kol,m[i,j]);
      if kol mod 2 <> 0 then begin
                               Prov:=false;
                               Exit;
                             end;
    end;
  Prov:=true;
end;

procedure Per(k : integer);
var
 q : integer;
begin
  for q:=1 to n do
    if m[k,q] > 0 then begin
                         Dec(m[k,q]);
                         Dec(m[q,k]);
                         Per(q);
                         Inc(r);
                         v[r]:=q;
                       end;
end;

procedure OutputData;
begin
  Assign(f,'Eiler.out');
  ReWrite(f);
  if r = 0 then WriteLn(f,'No')
           else begin
                  for j:=1 to r do
                    Write(f,v[j],' ');
                  WriteLn(f,'1');
                end;
  Close(f);
end;

begin
  InputData;
  r:=0;
  if Prov then Per(1);
  OutputData;
end.