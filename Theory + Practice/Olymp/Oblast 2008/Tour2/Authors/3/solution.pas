{
  Time : O( N )
  Memory : O( N )
  Solved by Sikorsky Alexey
}

{$M 8000000, 8000000}

Const MaxN = 100000;

 Type Computer = Record
                  Ports:Array[1..2] of LongInt;
                 end;

  Var C:Array[1..MaxN] of Computer;
      Use:Array[1..MaxN] of Boolean;
      N, M:LongInt;
      Ans:Int64;

   Procedure InputData;
    Var F:Text;
        X, Y, i:LongInt;
     Begin
      Assign(F, 'input.txt');
      Reset(F);
      Readln(F, N, M);
      For i:=1 to M do
       Begin
        Readln(F, X, Y);
        if C[X].Ports[1] = 0 then C[X].Ports[1]:=Y else C[X].Ports[2]:=Y;
        if C[Y].Ports[1] = 0 then C[Y].Ports[1]:=X else C[Y].Ports[2]:=X;
       end;
      Close(F);
     end;

   Procedure ProcessData;
    Var _N, _M, i:LongInt;

     Procedure Force(X:LongInt; Var _N, _M:LongInt);
      Begin
       if Use[X] then Exit else Use[X]:=True;
       Inc(_N);
       if C[X].Ports[1] <> 0 then 
        Begin
         Force(C[X].Ports[1], _N, _M);
         Inc(_M);
        end;
       if C[X].Ports[2] <> 0 then 
        Begin
         Force(C[X].Ports[2], _N, _M);
         Inc(_M);
        end;
      end;

     Function Calc(N, M:LongInt):Int64;
      Var Ans:Int64;
          i:LongInt;
       Begin
        if N = M then
         Begin
          if N Mod 2 = 0 then 
           Begin
            Ans:=(Int64(N Div 2 - 1)*(N Div 2 - 2) +  N Div 2 - 1)*N;
           end else
           Begin
            Ans:=(Int64((N - 1) Div 2)*((N - 1) Div 2 - 1))*N;
           end;
         end else 
         Begin
          Ans:=0;
          For i:=1 to N do Ans:= Ans + Int64(i - 2)*(i - 1) Div 2 + 
                                       Int64(N - i - 1)*(N - i) Div 2;
         end;
        Calc:=Ans;
       end;

     Begin
      For i:=1 to N do
       if Not Use[i] then
        Begin
         _N:=0;
         _M:=0;
         Force(i, _N, _M);
         Ans:=Ans + Calc(_N, _M Div 2);
        end;
     end;

   Procedure OutputData;
    Var F:Text;
     Begin
      Assign(F, 'output.txt');
      ReWrite(F);
      Writeln(F, Ans);
      Close(F);
     end;

   Begin
    InputData;
    ProcessData;
    OutputData;
   end.
