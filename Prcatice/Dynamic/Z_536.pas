Var
 N,K,C,i,j : Longint;
 Num,p : Int64;
 S : ansistring;
 a : array [0..50000] of Int64;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N,C,K);
  ReadLn(S);
 Close(Input);
 p:=1;
 For i:=1 to K do
  p:=p*10;
 FillChar(A,Sizeof(a),0);
 a[0]:=1;
 For i:=1 to N do
 begin
  Num:=0;
  for j:=i to N do
  begin
   Num:=Num*10 + (ord(s[j]) - ord('0'));
   If Num > C then Break;
   a[j]:=(a[j]+a[i-1]) mod P;
   If s[i] = '0' then Break;
  end;
 end;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(a[n]);
 Close(Output);
End.
