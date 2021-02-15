Var
 i,j,L1,L2,L3,p,k   : Longint;
 S1,S2              : Ansistring;
 x                  : Char;
 A,B,C              : array [1..50001] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     l1:=0;
     While not EOLn do
     begin
      Read(x);
      Inc(l1);
      a[l1]:=Ord(x) - Ord('0');
     end;
     ReadLn;
     l2:=0;
     While not EOLn do
     begin
      Read(x);
      Inc(l2);
      b[l2]:=Ord(x) - Ord('0');
     end;
    Close(Input);
    if l1 > l2 then begin
                        c:=a;
                        a:=b;
                        b:=c;
                        p:=l1;
                        l1:=l2;
                        l2:=p;
                    end;
    fillchar(c,sizeof(c),0); l3:=1;
    For i:=l1 downto 1 do
     For j:=l2 downto 1 do
     begin
         p:=a[i] * b[j];
         k:=l1-i+1+l2-j;
         while p > 0 do
         begin
             p:=p+c[k];
             c[k]:=p mod 10;
             p:=p div 10;
             If k > l3 then l3:=k;
             inc(k);
         end;
     end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     For i:=l3 downto 1 do
      Write(c[i]);
    Close(Output);
End.
