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

 Const MaxN = 65535;
       MaxM = 65535;

 Var A, Ans, Out:Array[1..MaxN] of LongInt;
     N, M:LongInt;

  Procedure InputData;
   Var F:Text;
       i:LongInt;
    Begin
     {$I-}
     Assign(F,ParamStr(1));
     Reset(F);
     IE(IOResult <> 0);
     Read(F, N);
     IE(Eoln(F));
     Read(F, M);
     IE(Not Eoln(F));
     IE(IOResult<>0,'Wrond N M Data');
     IE((N < 1) or (N > MaxN), 'Wrond N');
     IE((M < 1) or (M > MaxM),'Wrong M');
     For i:=1 to M do
      Begin
       Read(F, A[i]);
       IE(IOResult<>0,'Wrong A[i] Data');
       IE((A[i] < 1) or (A[i] > N),'Wrong A[i]');
       if i = M then IE(Not Eoln(F)) else IE(Eoln(F));
      end;
     IE(Not SeekEof(F),'Additional Data');
     Close(F);
    end;

  Procedure ProcessData;
   Var F:Text;
       i:LongInt;
    Begin
     {$I-}
     Assign(F,ParamStr(3));
     Reset(F);
     IE(IOResult <> 0);
     For i:=1 to M do 
      Begin
       Read(F, Ans[i]); 
       IE(IOResult <> 0);
       IE((Ans[i] < 1) or (Ans[i] > N));
       if i = M then IE(Not Eoln(F)) else IE(Eoln(F));
      end;
     IE(Not SeekEof(F));
     Close(F);
     Assign(F, ParamStr(2));
     Reset(F);
     PE(IOResult <> 0);
     For i:=1 to M do
      Begin
       Read(F, Out[i]);
       PE(IOResult <> 0);
       PE(Out[i] < 1);
      end;
     PE(Not SeekEof(F));
     Close(F);
     For i:=1 to M do WA(Ans[i] <> Out[i]);
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
