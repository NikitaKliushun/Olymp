Uses Math;

Var
 N,M,i,j,ii,jj,L1,L2,Ost_1,Ost_2 : Longint;
 A,B,Ans : Array [1..5200] of Longint;

Procedure S;
Begin
 Ans[ii]:=Min(a[N],b[M]);
 If b[M] > a[N] then begin
                         b[M]:=B[M] - A[N];
                         a[N]:=0;
                     end;
 If a[N] > B[M] then begin
                         a[N]:=a[N] - b[M];
                         b[M]:=0;
                     end;
 If a[N] = b[M] then begin
                         a[N]:=0;
                         b[M]:=0;
                     end;
end;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N,M);
  L1:=0;
  For i:=1 to N do
  Begin
   Read(a[i]);
   Inc(L1,a[i]);
  End;
  L2:=0;
  For i:=1 to M do
  begin
   Read(b[i]);
   Inc(L2,a[i]);
  end;
 Close(Input);
 ii:=1;
 While (N > 0) and (M > 0) do
 begin
     Ost_1:=N mod 2;
     Ost_2:=M mod 2;
     If Ost_1 = Ost_2 then begin
                               If ii mod 2 = 1 then Inc(ii);
                           end
                      else If ii mod 2 = 0 then Inc(ii);
     S;
     If (a[N] = 0) then Dec(N);
     If (b[M] = 0) then Dec(M);
 end;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  If (N > 0) then begin
                      Ost_1:=N mod 2;
                      Ost_2:=ii mod 2;
                      If Ost_1 <> Ost_2 then Inc(ii);
                      For i:=1 to N do
                      begin
                          Inc(Ans[ii+i-1],a[i]);
                          ii:=ii+i-1;
                      end;
                  end;
  If (M > 0) then begin
                      Ost_1:=M mod 2;
                      Ost_2:=ii mod 2;
                      If Ost_1 <> Ost_2 then Inc(ii);
                      For i:=1 to M do
                      begin
                          Inc(Ans[ii+i-1],b[i]);
                          ii:=ii+i-1;
                      end;
                  end;
  jj:=1;
  If Ans[jj] = 0 then Inc(jj);
  If (ii mod 2 = 0) and (Ans[ii] > 0) then Dec(ii);
  For i:=ii downto jj+1 do
   Write(Ans[i],' ');
  Write(Ans[jj]);
 Close(Output);
End.
