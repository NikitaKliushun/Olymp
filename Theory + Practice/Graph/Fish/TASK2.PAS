{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q-,R-,S+,T-,V+,X+}
{$M 16384,0,655360}
Const
   NameIn    = 'Input.txt';
   NameOut   = 'Output.txt';

Var
   N:Integer;
   X,Y : Array [1..100] of Integer;
   Tr: Array [1..100] of Boolean;

   Procedure Input;
   Var
     F:Text;
     I:Integer;
   Begin
     Assign(F,NameIn);
     Reset(F);
     Readln(F,N);
     For I:=1 to N do
      Readln(F,X[I],Y[I]);
     Close(F);
   End;

   Function Ok:Integer;
   Var
    I:Integer;
    K:Integer;
    Begin
    K:=0;
     For I:=1 to N do
      If Tr[I] Then
       Begin
       k:=k+1;
       End;
       Ok:=K;
    End;

    Procedure Output(S:String);
    Var
      F:Text;
    Begin
     Assign(F,NameOut);
     Rewrite(F);
     Writeln(F,S);
     Close(F);
    End;

   Procedure Resh;
   Var
     I:Integer;
     J:Integer;
   Begin
     For J:=1 to N do
      For I:=1 to N do
       If (x[I]=y[J]) And Tr[J] Then
        Begin
         Tr[J]:=False;

        End;
         If Ok<=1 Then OutPut('YES')
               Else Output('NO');
   End;

Begin
 FillChar(Tr,Sizeof(Tr),True);
 Input;
 Resh;
End.


