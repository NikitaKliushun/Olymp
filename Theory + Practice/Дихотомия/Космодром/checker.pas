{$R+,S+,Q+}

 Uses SysUtils;

 Procedure Assert(B:Boolean;S:String);
  Var F:Text;
   Begin
    if Not B then Exit;
    Assign(F,ParamStr(4));
    ReWrite(F);
    Writeln(F,'error!!!');
    Writeln(F,S);
    Close(F);
    Halt(0);
   end;

 Procedure WA(B:Boolean;S:String);
  Var F:Text;
   Begin
    if Not B then Exit;
    Assign(F,ParamStr(4));
    ReWrite(F);
    Writeln(F,'Wrong Answer');
    if (Length(S) > 0) then Writeln(S);
    Close(F);
    Halt(0);
   end;

 Procedure WA(B:Boolean);
  Begin
   WA(B,'');
  end;

 Procedure WA;
  Begin
   WA(True);
  end;

 Procedure Ok(B:Boolean;S:String);
  Var F:Text;
   Begin
    if (Not B) then Exit;
    Assign(F,ParamStr(4));
    ReWrite(F);
    Writeln(F,'Ok');
    if (Length(S) > 0) then Writeln(S);
    Close(F);
    Halt(0);
   end;

 Procedure Ok(B:Boolean);
  Begin
    Ok(B,'');
  end;

 Procedure Ok;
  Begin
   Ok(True);
  end;

 Procedure PE(B:Boolean;S:String);
  Var F:Text;
   Begin
    if Not B then Exit;
    Assign(F,ParamStr(4));
    ReWrite(F);
    Writeln(F,'Presentation Error');
    if (Length(S) > 0) then Writeln(S);
    Close(F);
    Halt(0);
   end;

 Procedure PE(B:Boolean);
  Begin
   PE(B,'');
  end;

 Procedure PE;
  Begin
   PE(True);
  end;

 Procedure IE(B:Boolean;S:String);
  Var F:Text;
   Begin
    if Not B then Exit;
    Assign(F,ParamStr(4));
    ReWrite(F);
    Writeln(F,'Internal Error');
    if (Length(S) > 0) then Writeln(S);
    Close(F);
    Halt(0);
   end;

 Procedure IE(B:Boolean);
  Begin
   IE(B,'');
  end;

 Procedure IE;
  Begin
   IE(True);
  end;

 Const MinR = 1;
       MaxR = 1000000000;
       MinN = 1;
       MaxN = 65536;
       MinM = 1;
       MaxM = 65536;

 Type Request = Record
                 S, F, R:LongInt;
                end;

 Var  A, Ans, Out:Array of LongInt;
      Rqs: Array of Request;
      N, M:LongInt;

  Procedure InputData;
   Var F:Text;
       i:LongInt;
    Begin
     {$I-}
     Assign(F, ParamStr(1));
     Reset(F);
     IE(IOResult <> 0, 'File Not Found');
     Readln(F, N, M);
     IE(IOResult <> 0);
     SetLength(A, N);
     For i:=1 to N do
      Begin
       Read(F, A[i - 1]);
       IE(IOResult <> 0);
      end;
     SetLength(Rqs, M);
     For i:=1 to M do
      Begin
       Read(F, Rqs[i - 1].S, Rqs[i - 1].F, Rqs[i - 1].R);
       IE(IOResult <> 0);
       IE(Not Eoln(F));
      end;
     IE(Not SeekEof(F));
     Close(F);
    end;

  Procedure ProcessData;
   Var F:Text;
       i:LongInt;
    Begin
     IE(N < MinN);
     IE(N > MaxN);
     IE(M < MinN);
     IE(M > MaxM);
     For i:=0 to N - 1 do IE((A[i] < MinR)or(A[i] > MaxR));
     For i:=0 to M - 1 do
      Begin
       IE(Rqs[i].S < MinN);
       IE(Rqs[i].S > Rqs[i].F);
       IE(Rqs[i].F < MinN);
       IE(Rqs[i].F > N);
       IE(Rqs[i].R < MinR);
       IE(Rqs[i].R > MaxR);
      end;
     {$I-}
     Assign(F, ParamStr(3));
     Reset(F);
     IE(IOResult <> 0, 'Answer File Not Found');
     SetLength(Ans, M);
     For i:=0 to M - 1 do
      Begin
       Read(F, Ans[i]);
       IE(IOResult <> 0);
       IE(Not Eoln(F));
       IE(Ans[i] < MinN);
       IE(Ans[i] > N);
       IE(Ans[i] < Rqs[i].S);
       IE(Ans[i] > Rqs[i].F);
      end;
     IE(Not SeekEof(F));
     Close(F);
     Assign(F, ParamStr(2));
     Reset(F);
     PE(IOResult <> 0);
     SetLength(Out, M);
     For i:=0 to M - 1 do
      Begin
       Readln(F, Out[i]);
       PE(IOResult <> 0);
       PE(Out[i] < MinN);
       PE(Out[i] > N);
       PE(Out[i] < Rqs[i].S);
       PE(Out[i] > Rqs[i].F);
      end;
     PE(Not SeekEof(F));
     Close(F);
     For i:=0 to M - 1 do
      Begin
       WA(Abs(A[Out[i] - 1] - Rqs[i].R) > Abs(A[Ans[i] - 1] - Rqs[i].R));
       IE(Abs(A[Out[i] - 1] - Rqs[i].R) < Abs(A[Ans[i] - 1] - Rqs[i].R));
      end;
    end;

  Procedure OutputData;
   Begin
    Ok;
   end;

 Begin
  InputData;
  ProcessData;
  OutputData;
 end.
