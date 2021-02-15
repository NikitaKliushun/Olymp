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
       ans_n, out_n: Int64;
       out_score: array [1..100000] of Int64;
       ans_score: array [1..100000] of Int64;
    Begin
     {$I-}
     // read answer
     Assign(F, ParamStr(3));
     Reset(F);
     IE(IOResult <> 0, 'Answer File Not Found');

     ReadLn(F, ans_n);
     IE(IOResult <> 0);
        
     for i := 1 to ans_n do begin
        Read(F, ans_score[i]);
        IE(IOResult <> 0);
     end;
     IE(Not SeekEof(F));
     Close(F);
     
     // read output and compare with answer
     Assign(F, ParamStr(2));
     Reset(F);
     ReadLn(F, out_n);
     PE(IOResult <> 0);
     WA(out_n <> ans_n, 'Line 1' + ': got ' + IntToStr(out_n) + ' instead ' + IntToStr(ans_n));
     for i := 1 to out_n do begin
        Read(F, out_score[i]);
        PE(IOResult <> 0);
        
        WA(out_score[i] <> ans_score[i], 'Line 2 number ' + IntToStr(i) + ': got ' + IntToStr(out_score[i]) + ' instead ' + IntToStr(ans_score[i]));
     end;

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