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

 Const MinN = 1;
       MaxN = 100;

 Var  Ans, Out, N, M :int64;

  Procedure InputData;
   Var F:Text;

    Begin
     {$I-}
     Assign(F, ParamStr(1));
     Reset(F);
     IE(IOResult <> 0, 'File Not Found');
     // check input file
     
     Close(F);
    end;

  Procedure ProcessData;
   Var F:Text;
       i: LongInt;
       ans, out: Int64;
    Begin
     {$I-}
     // read answer
     Assign(F, ParamStr(3));
     Reset(F);
     IE(IOResult <> 0, 'Answer File Not Found');

     ReadLn(F, ans);
     IE(IOResult <> 0);
     IE(Not SeekEof(F));
     Close(F);
     
     // read output and compare with answer
     Assign(F, ParamStr(2));
     Reset(F);
     ReadLn(F, out);
     PE(IOResult <> 0);
     WA(out <> ans, 'Line 1' + ': got ' + IntToStr(out) + ' instead ' + IntToStr(ans));
     PE(Not SeekEoln(F));
     Readln(F);
     PE(Not SeekEof(F));
     Close(F);
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
