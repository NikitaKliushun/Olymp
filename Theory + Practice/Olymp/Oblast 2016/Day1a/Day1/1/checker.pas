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

  var a, b: array[0 .. 111111] of string; 

  Procedure ProcessData;
   Var F:Text;
       i, cnt1, cnt2: LongInt;
       ans, out: string;
    Begin
     {$I-}
     // read answer
     Assign(F, ParamStr(3));
     Reset(F);
     IE(IOResult <> 0, 'Answer File Not Found');
     cnt1 := 0;
     while not eof(F) do
      begin
       readln(f, ans);
       cnt1 := cnt1 + 1;
       a[cnt1] := ans;
       if (cnt1 > 100) then WA(true);
      end;
     a[cnt1 + 1] := '';
     Close(F);
     
     // read output and compare with answer
     Assign(F, ParamStr(2));
     Reset(F);
     cnt2 := 0;
     while not eof(f) do
      begin
       readln(f, out);
       cnt2 := cnt2 + 1;                         
       if (cnt2 > cnt1) or (out <> a[cnt2]) then WA(true);
      end;
     if (cnt1 <> cnt2) then WA(true);
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
