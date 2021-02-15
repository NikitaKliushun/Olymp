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

 Var  Ans, Out, N, M, Y:int64;

  Procedure InputData;
   Var F:Text;

    Begin
     {$I-}
     Assign(F, ParamStr(1));
     Reset(F);
     IE(IOResult <> 0, 'File Not Found');
     // check input file
     readln(f, n, y);
     Close(F);
    end;

  var a, b: array[0 .. 111111] of int64; 

  procedure swap(var t, y : int64);
   var u : int64;
  begin
   u := t; t := y; y := u;
  end;
  
  procedure sort(l, r : longint);
   var i, j : longint;
    x : int64;
  begin
   i := l; j := r;
   x := a[l + random(r - l + 1)];
   while (i <= j) do
    begin
     while (a[i] < x) do i := i + 1;
     while (a[j] > x) do j := j - 1;
     if (i <= j) then
      begin
       swap(a[i], a[j]);
       i := i + 1;
       j := j - 1;
      end;
    end;
   if (l < j) then sort(l, j);
   if (i < r) then sort(i, r);
  end;

  Procedure ProcessData;
   Var F:Text;
       i, cnt1, cnt2: LongInt;
       ans, cur : int64;
       ok : boolean;
    Begin
     {$I-}
     randomize;
     Assign(F, ParamStr(3));
     Reset(F);
     readln(f, cur);
     ok := true;
     if cur = -1 then ok := false;
     close(f);
     // read answer
     Assign(F, ParamStr(2));
     Reset(F);
     IE(IOResult <> 0, 'Answer File Not Found');
     ans := -1;
     for i := 1 to n do
      begin
       read(f, cur);
       PE(IOResult <> 0);    
       a[i] := cur;
       if (cur = -1) and (ok = false) then break;
       if (cur <> -1) and (ok = false) then WA(true);
       if (ans = -1) then ans := cur else ans := ans and cur;
       if (cur < 0) and (ok) then WA(true);
       if (cur >= 1073741824) then WA(true);
      end;
     PE(Not SeekEoln(F));     
     if (ans <> y) and (ok) then WA(true);
     if (ok) then begin
      sort(1, n);
      for i := 1 to n - 1 do if (a[i] = a[i + 1]) then WA(true);
     end;
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
