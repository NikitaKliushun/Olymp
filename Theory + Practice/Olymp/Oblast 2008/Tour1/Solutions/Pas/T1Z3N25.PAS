Program task;
 var
n,y,s,t,m,i,k,j   :  LOnGInt;
a,b       :  array [1..10000] of LonGint;
kol       :  LonGint;

Procedure Input1;
 begin
  Assign(Input,'input.txt');
  Reset(Input);
  Readln(n,m);
   for i:=1 to m do
  Read(a[i]);
  Close(Input);
 end;

Procedure Mesto;
 begin
 s:=s-1;
  b[s]:=a[i];
  b[j]:=0;
   for y:=j to n*m-1 do
    b[y]:=b[y+1]
 end;

 Procedure Per(x  :  Longint);
  begin
    While i<=m do
     begin
     for j:=1 to n+m do
     if (b[j]=a[i]) then begin
                  if i > m then Exit;
                        Mesto;
                        a[i]:=kol;
                        kol:=1;
                        i:=i+1;
                        Per(a[i+1]);
                       end
                  else  begin
                  if b[j]<>0 then kol:=kol+1;
                  end;
    end;
  end;

 Procedure Output1;
  begin
   Assign(Output,'output.txt');
   Rewrite(Output);
    for i:=1 to m do
   Write(a[i],' ');
   Close(Output);
  end;


 begin
  Input1;
  s:=m+1;
  t:=0;
   for i:=m+1 to n+m do
    begin
    if t<=n-1 then begin
                   Inc(t);
                   b[i]:=t;
                  end;
    end;
     i:=1;
  kol:=1;
  Per(a[i]);
  Output1;
 end.
