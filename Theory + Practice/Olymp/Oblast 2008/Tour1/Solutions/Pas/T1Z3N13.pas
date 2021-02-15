{Жуковский Алексей Андреевич, Березино, 9 класс, задача №3}

        Var a,b,otv                     :       array [1..10000] of longint;
            i,n,m,j,z,k2,k,k1           :       longint;

Procedure InputData;
begin
        Assign (Input,'Input.txt');
        Reset  (Input);
         Readln (n,m);
          for i:=1 to n do
           b[i]:=i;
          for i:=1 to m do
           Read (a[i]);
        Close  (Input);
end;

Procedure Sol;
begin
for i:=1 to m do
 for j:=1 to n do
  if (b[j]=a[i]) and (j <> 1) then begin
                     Inc(z);
                     Otv[z]:=j;
                      k2:=b[1];
                      b[1]:=b[j];
                       for k:=2 to n do
                        if b[k] <> a[i] then begin
                                              k1:=b[k];
                                              b[k]:=k2;
                                              k2:=k1;
                                             end
                                        else begin
                                              b[k]:=k2;
                                              k2:=b[k+1];
                                             end;
                                    end
                               else
  if (b[j]=a[i]) and (j = 1) then begin
                                   Inc (z);
                                   Otv[z]:=j;
                                  end;
end;

Procedure OutputData;
begin
     Assign  (Output,'Output.txt');
     Rewrite (Output);
      for i:=1 to z do
       Write (Otv[i],' ');
    Close   (Output);
end;

begin
InputData;
Sol;
OutputData;
end.
