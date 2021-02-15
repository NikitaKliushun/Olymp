type
   Mas = array [1..100000] of longint;
var
 a,P:Mas;
 i,N,s,K:longint;

begin
 Assign(input,'input.txt');Reset(input);
 Assign(output,'output.txt');Rewrite(output);
 Read(N,K);
  For i:=1 to  N do begin
                     Read(a[i],P[i]);
                     Inc(s,a[i]);
                    end;
 if s=K then begin
         Writeln(0);
         Halt;
             end;
 if s<K then begin
              Writeln(K-s);
              i:=1;
              While s<K do begin
                  While (a[i]<P[i])and
                        (s<K)     do begin
                                      Inc(s);
                                      Inc(a[i]);
                                      Writeln(i);
                                     end;
                  Inc(i);
                           end;
              Halt;
             end;
 Writeln(s-K);
 i:=1;
  While s>K do begin
      While (a[i]>0)and
            (s>K) do begin
                      Dec(s);
                      Dec(a[i]);
                      Writeln(-i);
                     end;
  Inc(i);
               end;
end.
