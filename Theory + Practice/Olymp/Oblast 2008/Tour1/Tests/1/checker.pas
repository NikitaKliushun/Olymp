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

 Const MaxK = 1000000;
       MinK = 1;

 Var K, AnsW, AnsH, OutW, OutH, Ans, Out:LongInt;

  Procedure InputData;
   Var F:Text;
    Begin
     {$I-}
     Assign(F, ParamStr(1));
     Reset(F);
     IE(IOResult <> 0, 'File Not Found');
     Readln(F, K);
     IE(IOResult <> 0, 'Wrong Data K');
     IE((K < MinK) or (K > MaxK), 'Wrong K');
     Close(F);
    end;

  Procedure ProcessData;
   Var F:Text;
	
    Begin
     {$I-}
     Assign(F, ParamStr(3));
     Reset(F);
     IE(IOResult <> 0, 'Answer File Not Found');
     Readln(F, AnsW, AnsH);
     IE(IOResult <> 0);
     Close(F);
     IE((AnsW < MinK) or (AnsW > K), 'Wrong W in Answer File');
     IE((AnsH < MinK) or (AnsH > K), 'Wrong H in Answer File');
     IE( (K Div AnsW < AnsH) or (AnsW * AnsH > K), 'Wrong W & H, W*H > K');
     Assign(F, ParamStr(2));
     Reset(F);
     PE(IOResult <> 0);
     Readln(F, OutW, OutH);
     PE(IOResult <> 0);
     PE(Not SeekEof(F));
     Close(F);
     PE((OutW < MinK)or(OutW > K));
     PE((OutH < MinK)or(OutH > K));
     PE((K Div OutW < OutH) or (OutW * OutH > K));

     Ans:=K - AnsW * AnsH + Abs(AnsW - AnsH);
     Out:=K - OutW * OutH + Abs(OutW - OutH);
     IE(Ans > Out, 'Ans > Out');
     WA(Ans < Out);
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
