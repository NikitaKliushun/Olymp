Uses
 Math;

Var
 N,M,L1,L2,i,j,LN1,LN2,p,MinN,Ost1,Ost2,s : Longint;
 Num1,Num2,NumA : Array [0..100000] of Int64;

Procedure Swap;
Begin
    NumA:=Num1;
    Num1:=Num2;
    Num2:=NumA;
    s:=Ln1;
    Ln1:=Ln2;
    Ln2:=s;
    FillChar(NumA,Sizeof(NumA),0);
End;

Procedure Add (k  : Longint);
Begin
    p:=p+k;
    MinN:=Min(Num1[i],Num2[j]);
    NumA[p]:=NumA[p]+MinN;
    If Num1[i] = Num2[j] then begin
                                  Num2[j]:=0;
                                  Num1[i]:=0;
                                  Inc(i);
                                  Inc(j);
                              end
                         else
   begin
    If MinN = Num1[i] then begin
                               Dec(Num2[j],Num1[i]);
                               Num1[i]:=0;
                               Inc(i);
                           end;
    If MinN = Num2[j] then begin
                                Dec(Num1[i],Num2[j]);
                                Num2[j]:=0;
                                Inc(j);
                           end;
  end;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N,M);
  L1:=0;
  LN1:=0;
  For i:=1 to N do
  begin
   Read(Num1[i]);
   Inc(L1,Num1[i]);
   Inc(LN1);
  end;
  L2:=0;
  LN2:=0;
  For i:=1 to M do
  begin
   Read(Num2[i]);
   Inc(L2,Num2[i]);
   Inc(LN2);
  end;
 Close(Input);
 If L1 < L2 then begin
                     Swap;
                     Num2[0]:=L2-L1;
                 end;
 If L2 < L1 then begin
                     Swap;
                     Num1[0]:=L1-L2;
                 end;
 i:=0;
 j:=0;
 p:=0;
 While True do
 begin
     If (i>LN1) or (j>LN2) then Break;
     Ost1:=i mod 2;
     Ost2:=j mod 2;
     If Ost1 xor Ost2 = 0 then begin
                                   if p mod 2 = 0 then Add(0)
                                                  else Add(1);
                               end
                          else begin
                                   If p mod 2 = 0 then Add(1)
                                                  else Add(0);
                               end;
 end;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  s:=1;
  If NumA[1] = 0 then s:=3;
  For i:=s to p-1 do
   Write(NumA[i],' ');
  Write(NumA[p]);
 Close(Output);
End.
