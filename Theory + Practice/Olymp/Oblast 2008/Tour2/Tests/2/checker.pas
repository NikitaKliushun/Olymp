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

 Const MaxN = 1000000;

 Var N, K:LongInt;
     S:AnsiString;
     Ans, Out:Int64;

  Procedure InputData;
   Var F:Text;
       i:LongInt;
    Begin
     {$I-}
     Assign(F, ParamStr(1));
     Reset(F);
     IE(IOResult <> 0, 'File Not Found');
     Read(F, N);
     IE(IOResult <> 0, 'Wrong Data N');
     IE((N < 1) or (N > MaxN), 'Wrong N');
     IE(Eoln(F));
     Read(F, K);
     IE(IOResult <> 0);
     IE(Not Eoln(F));
     Readln(F);
     Read(F, S);
     IE(Not Eoln(F));
     IE(Not SeekEof(F));
     Close(F);
     IE(N <> Length(S));
     For i:=1 to N do
      IE(Not(((S[i] >= 'a') And (S[i] <='z')) Or 
         ((S[i] >='0') And (S[i] <='9'))));
    end;

  Procedure ProcessData;
   Var F:Text;
	
    Begin
     {$I-}
     Assign(F, ParamStr(3));
     Reset(F);
     IE(IOResult <> 0, 'Answer File Not Found');
     Readln(F, Ans);
     IE(IOResult <> 0);
     Close(F);
     Assign(F, ParamStr(2));
     Reset(F);
     PE(IOResult <> 0);
     Readln(F, Out);
     PE(IOResult <> 0);
     PE(Not SeekEof(F));
     Close(F);
     WA(Ans <> Out);
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
