Const
 Dx : Array [1..4] of Longint = (0,-1,0,1);
 Dy : Array [1..4] of Longint = (1,0,-1,0);

Var
 i,j,ii,N,Sum,Max : Longint;
 A,M : array [1..3,1..3] of Longint;
 Max1 : array [1..9] of Longint;

Procedure Per (x,y : Longint);
Var
 j : Longint;

Begin
 M[x,y]:=1;
 Inc(ii);
 Max1[ii]:=a[x,y];
 For j:=1 to 4 do
  If (x+Dx[j]>0) and (x+Dx[j]<=3) and
     (y+Dy[j]>0) and (y+Dy[j]<=3) and (m[x+Dx[j],y+Dy[j]]=0) then Begin                                                                      Per(x+Dx[j],y+Dy[j]);
                                                                      Inc(N);
                                                                      Per(x+Dx[j],y+Dy[j]);
                                                                  End;
If N=9 then Begin

            End;
End;


Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  For i:=1 to 3 do
   For j:=1 to 3 do
    Read(a[i,j]);
 Close(Input);
 Max:=0;
 For i:=1 to 3 do
  For j:=1 to 3 do
  Begin
   FillChar(m,Sizeof(m),0);
   Sum:=0;
   N:=0;
   ii:=0;
   Per(i,j);
  End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For i:=1 to MaxN+1 do
   Write(Max2[i]);
 Close(Output);
End.