Type
   Song = record
            n : String;
            d,r : Longint;
       end;

Var
 N,M,K,i,j,l,cod,f,T : Longint;
 S,S1 : String;
 A : Array [1..1000] of Song;
 P,D : Array [1..1000] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     ReadLn(N);
     For i:=1 to N do
     begin
         ReadLn(s);
         j:=1; L:=Length(S); s1:='';
         While s[j] <> ' ' do
         begin
             s1:=s1 + s[j];
             Inc(j);
         end;
         Inc(j); a[i].n:=s1; s1:='';
         While j <=L do
         begin
             s1:=s1 + s[j];
             Inc(j);
         end;
         Val(s1,a[i].d,cod);
     end;
     ReadLn(M,K);
     For i:=1 to M do
     begin
         ReadLn(s);
         For j:=1 to N do
          If a[j].n = s then p[i]:=j;
     end;
     For i:=1 to K do
      Read(d[i]);
    Close(Input);
    f:=1; T:=0;
    For i:=1 to M do
    begin
        Inc(T,a[p[i]].d);
        If (T > d[f]) and (d[f] > T - a[p[i]].d) then begin
                                                        T:=d[f];
                                                        Dec(a[p[i]].r);
                                                        if f < k  then Inc(f);
                                                    end
                     else
          If T = d[f] then begin
                               T:=d[f]; Inc(a[p[i]].r);
                               Dec(a[p[i+1]].r);
                               if f < k then Inc(f);
                           end
                      else Inc(a[p[i]].r);
    end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     For i:=1 to N do
      Write(a[i].r,' ');
    Close(Output);
End.
