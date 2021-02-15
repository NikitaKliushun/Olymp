Const
 Inf = maxlongint;

Type
 t = record
      s,f,d : Longint;
     end;

Var
 n,m,i,j,k,x : Longint;
 Ans : String;
 A : Array [1..10000] of T;
 d : array [1..100] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N); m:=0;
     For i:=1 to N do
      For j:=1 to N do
      begin
       Read(x);
       if x <> 100000 then begin
                               inc(m);
                               a[m].s:=i;
                               a[m].f:=j;
                               a[m].d:=x;
                           end;
      end;
    Close(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     for i:=1 to n do
      d[i]:=Inf;
     for k:=1 to N do
     begin
      d[k]:=0;
      for i:=1 to N-1 do
       for j:=1 to m do
        if d[a[j].s] <> Inf then
           if d[a[j].s] + a[j].d < d[a[j].f] then d[a[j].f]:=d[a[j].s] + a[j].d;
      for i:=1 to m do
       if d[a[i].s] <> Inf then
          if d[a[i].s] + a[i].d < d[a[i].f] then begin
                                                     Write('YES');
                                                     Close(Output);
                                                     Halt;
                                                 end;
     end;
    WriteLn('NO');
   Close(Output);
End.