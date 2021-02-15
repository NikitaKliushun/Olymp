        Type
           Zapis                        =       Record
                                                 x1 : integer;
                                                 x2 : integer;
                                                end;
        Var a,b                         :       array [1..100] of zapis;
            n,i,x,j                     :       integer;
            z                           :       boolean;

Procedure InputData;
begin
     Assign (Input,'Input.txt');
     Reset  (Input);
      Readln (n);
       for i:=1 to n do
      Readln (a[i].x1,a[i].x2);
     Close  (Input);
end;

Procedure Per (x : integer);
Var i : integer;
begin
for i:=1 to x do
 for j:=1 to x do
  if ((a[i].x2 = a[j+1].x1) and (b[j+1].x1 <> 1)) then begin
   b[j+1].x1:=1;
   b[i].x1:=1;
                                                       end;
end;

Procedure OutputData;
begin
     Assign  (Output,'Output.txt');
     Rewrite (Output);
      Writeln ('Yes');
     Close   (Output);
     Halt;
end;

Procedure Sol;
begin
if n = 1 then OutputData;
x:=n;
Per(x);
z:=false;
for i:=1 to n do begin
 if b[i].x1 = 1 then z:=True;
                 end;
end;

begin
InputData;
Sol;
Assign  (Output,'Output.txt');
Rewrite (Output);
 if z then Writeln ('Yes')
      else Writeln ('No');
Close   (Output);
end.