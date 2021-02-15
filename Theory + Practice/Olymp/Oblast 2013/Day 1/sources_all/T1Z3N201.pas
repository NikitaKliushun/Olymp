{Яковлев Вячеслав Александрович, г.Борисов, 9 "А", 3}
Program T1Z3N201;
  Var a:array[1..400,1..400]of byte;
      i,j,n1,m1,n,m:longint;
      p:char;
      k:int64;
      f,f1:text;
Procedure Prov(v,g:longint);
  Var i1,j1,c:longint;
begin
  c:=0;
  For i1:=i to ((i+v-1) div 2) do
    For j1:=j to g do
    begin
      If a[i1,j1]<>a[v-(i1-i),j1] then
      begin
        c:=1;
        break;
      end;
    end;
  If c=0 then
  begin
    inc(k);
    If g<m then
      Prov(v,g+1)
    else
      If v<n then
        Prov(v+1,m1);
  end
  else
    If v<n then
      Prov(v+1,m1);
end;
Begin
  k:=0;
  assign(f,'input.txt');
  assign(f1,'output.txt');
  reset(f);
  rewrite(f1);
  read(f,n);
  readln(f,m);
  For i:=1 to n do
  begin
    For j:=1 to m do
    begin
      read(f,p);
      If p ='1' then
        a[i,j]:=1 else a[i,j]:=0;
    end;
    readln(f);
  end;
  For i:=1 to n-1 do
    For j:=1 to m do
    begin
      n1:=i+1;
      m1:=j;
      Prov(n1,m1);
    end;
  Write(f1,k);
  close(f);
  close(f1);
end.