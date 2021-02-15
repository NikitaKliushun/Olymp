{Клюшун Никита Сергеевич , г. Березино, 8 класс}

Const
 Maxn =  1111111;

Var
 N,T,I,X,H1,M1,s1,J,R,R1,sum,cod,Par,Ost:Longint;
 H,M,s,st:string;
 F:Boolean;
 A:Array[1..2000] of Longint;
 P:Array[1..1000] of Longint;


Begin
 Assign(Input,'Input.txt');
 Reset(Input);
  ReadLn(N,T);
  Min:=Maxn;
  For I:=1 to 2*N do
  Begin
   sum:=0;
   ReadLn(st);
   H:=st[1]+st[2];
   Val(H,H1,cod);
   M:=st[4]+st[5];
   Val(M,M1,Cod);
   s:=st[7]+st[8];
   Val(s,s1,cod);
   A[I]:=H1*3600;
   A[I]:=A[I]+M1*60;
   A[I]:=A[I]+s1;
  End;
 Close(Input);
 For I:=1 to N*2-1 do
  For J:=1 to N*2-1 do
   If A[I]>A[I+1] then Begin
			C:=A[I];
			A[I]:=A[I+1];
			A[I+1]:=C;
	               End;	
{ For I:=1 to N*2 do
 Begin
  R:=A[I]-T;
  R1:=A[I]+T;
  F:=False;
  For J:=2 to N*2 do
   If (A[J]<>1111111) and (A[J]=R1) or (A[J]=R) then Begin
                                                      Par:=A[J];
                                                      A[J]:=1111111;
                                                      F:=True;
                                                      Break;
                                                  End;
  If F then P[I]:=Par;
 End;}

 Assign(Output,'Output.txt');
 ReWrite(Output);
{ For I:=1 to  2*N do
  If A[I]<>1111111 then If A[I]<P[I] then Begin
                      H1:=A[I] div 3600;
                      Ost:=A[I] mod 3600;
                      M1:=Ost div 60;
                      s1:=Ost mod 60;
                      str(H1,H);
                      str(M1,M);
                      str(s1,s);
                      If H1 div 10<1 then H:='0'+H;
                      If M1 div 10<1 then M:='0'+M;
                      If s1 div 10<1 then s:='0'+S;
                      Write(H,':',M,':',s,'-');
                      H1:=P[I] div 3600;
                      Ost:=P[I] mod 3600;
                      M1:=Ost div 60;
                      s1:=Ost mod 60;
                      str(H1,H);
                      str(M1,M);
                      str(s1,s);
                      If H1 div 10<1 then H:='0'+H;
                      If M1 div 10<1 then M:='0'+M;
                      If s1 div 10<1 then s:='0'+S;
                      WriteLn(H,':',M,':',s);
                     End
                   else Begin
                      H1:=P[I] div 3600;
                      Ost:=P[I] mod 3600;
                      M1:=Ost div 60;
                      s1:=Ost mod 60;
                      str(H1,H);
                      str(M1,M);
                      str(s1,s);
                      If H1 div 10<1 then H:='0'+H;
                      If M1 div 10<1 then M:='0'+M;
                      If s1 div 10<1 then s:='0'+S;
                      Write(H,':',M,':',s,'-');
                      H1:=A[I] div 3600;
                      Ost:=A[I] mod 3600;
                      M1:=Ost div 60;
                      s1:=Ost mod 60;
                      str(H1,H);
                      str(M1,M);
                      str(s1,s);
                      If H1 div 10<1 then H:='0'+H;
                      If M1 div 10<1 then M:='0'+M;
                      If s1 div 10<1 then s:='0'+S;
                      WriteLn(H,':',M,':',s);
                     End; }
 For I:=1 to N do
 Begin
  Write(A[I] div 3600,':',(A[I] mod 3600) div 60,':',(A[I] mod 3600) mod 60,'-');
  Write(A[I]+T div 3600,':',(A[I]+T mod 3600) div 60,':',(A[I]+T mod 3600) mod 60);
 Close(Output);
End.












