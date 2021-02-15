{
  Time : O( KLogK )
  Memory : O( 1 )
  Solved by Sikorsky Alexey
}

Var 
 K, H, W:LongInt;

 Procedure InputData;
  Var F:Text;
   Begin
    Assign(F, 'input.txt');
    Reset(F);
    Readln(F, K);
    Close(F);
   end;

 Procedure ProcessData;
  Var Ans, i, j:LongInt;
   Begin
    Ans:=MaxLongInt;
    For i:=1 to K do
     For j:=1 to K Div i do
      if Abs(i - j) + (K - i*j) < Ans then
       Begin
        Ans:=Abs(i - j) + K - i * j;
        W:=i;
        H:=j;
       end;

   end;

 Procedure OutputData;
  Var F:Text;
   Begin
    Assign(F, 'output.txt');
    ReWrite(F);
    Writeln(F, W, ' ', H);
    Close(F);
   end;

  Begin
   InputData;
   ProcessData;
   OutputData;
  end.