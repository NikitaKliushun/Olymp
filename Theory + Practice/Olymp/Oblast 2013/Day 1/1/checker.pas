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
    // if (Length(S) > 0) then Writeln(S);
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
    // if (Length(S) > 0) then Writeln(S);
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
    // if (Length(S) > 0) then Writeln(S);
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
       MaxN = 1000000000;
       MinT = 1;
       MaxT = 43200;
	MinAllowedTime = 8 * 60 * 60;
	MaxAllowedTime = 21 * 60 * 60 - 1;

 Var  
N:LongInt;
T:LongInt;
Used : array[0..90000] of longint;
Test : array[0..90000] of longint;
i: longint;

function isLegit(digit: char; minAllowed: longint; maxAllowed: longint) : boolean;
begin
	isLegit := ((ord(digit) >= ord('0') + minAllowed) and (ord(digit) <= ord('0') + maxAllowed));
end; 

function convertToNumber(time: ansistring) : longint;
var
	stringLength : longint;
	startIndex, finishIndex : longint;
begin
	stringLength := length(time);
	startIndex := -1;
	finishIndex := -1;
	for i := 1 to stringLength do begin
		if (isLegit(time[i], 0, 9)) then
		begin
			if startIndex = -1 then startIndex := i;
			finishIndex := i;
		end;

		if ((not isLegit(time[i], 0, 9)) and (time[i] <> ' ') and (time[i] <> ':')) then begin
			convertToNumber := -1;
			exit;
		end;
	end;  	

	if ((startIndex = -1) or (finishIndex = -1) or (finishIndex - startIndex <> 7)) then begin
		convertToNumber := -1;
		exit;
	end;

	if (not (isLegit(time[startIndex], 0, 2))) then begin
		convertToNumber := -1;
		exit;
	end;
	if (not (isLegit(time[startIndex + 1], 0, 9))) then begin
		convertToNumber := -1;
		exit;
	end;
	if (time[startIndex + 2] <> ':') then begin
		convertToNumber := -1;
		exit;
	end;
	
	if (not (isLegit(time[startIndex + 3], 0, 9))) then begin
		convertToNumber := -1;
		exit;
	end;
	if (not (isLegit(time[startIndex + 4], 0, 9))) then begin
		convertToNumber := -1;
		exit;
	end;
	if (time[startIndex + 5] <> ':') then begin
		convertToNumber := -1;
		exit;
	end;

	if (not (isLegit(time[startIndex + 6], 0, 9))) then begin
		convertToNumber := -1;
		exit;
	end;
	if (not (isLegit(time[startIndex + 7], 0, 9))) then begin
		convertToNumber := -1;
		exit;
	end;

	convertToNumber := 0;
	convertToNumber := convertToNumber + (ord(time[startIndex]) - ord('0')) * 10 * 60 * 60;
	convertToNumber := convertToNumber + (ord(time[startIndex + 1]) - ord('0')) * 60 * 60;
	convertToNumber := convertToNumber + (ord(time[startIndex + 3]) - ord('0')) * 10 * 60;
	convertToNumber := convertToNumber + (ord(time[startIndex + 4]) - ord('0')) * 60;
	convertToNumber := convertToNumber + (ord(time[startIndex + 6]) - ord('0')) * 10;
	convertToNumber := convertToNumber + (ord(time[startIndex + 7]) - ord('0'));
	
end;

  Procedure InputData;
   Var 
	F:Text;
	newTime: ansistring;
	numberTime: longint;
	limit: longint;
	counter: longint;
    Begin
     {$I-}
	Assign(F, ParamStr(1));
	Reset(F);
	IE(IOResult <> 0, 'File Not Found');
	Read(F, N, T);
	IE(IOResult <> 0, 'Error while reading first line of input file');
	
	IE(N < MinN, 'N is smaller than MinN');
	IE(N > MaxN, 'N is bigger than MaxN');
    IE(T < MinT, 'T is smaller than MinT');
	IE(T > MaxT, 'T is bigger than MaxT');
	
	for i := 1 to 90000 do begin
		used[i] := 0;
		test[i] := 0;
	end;

	IE(Not Eoln(F), 'Can not reach eoln before reading next line');
	Readln(F);

	limit := N + N;
	for counter := 1 to limit do begin
		readln(F, newTime);
		numberTime := convertToNumber(newTime);
		IE(numberTime = -1, 'Not all lines in HH:MM:SS format');
		IE(numberTime < minAllowedTime, 'There is moment in input file which is smaller than min allowed moment');
		IE(numberTime > maxAllowedTime, 'There is moment in input file which is bigger than max allowed moment');
		used[numberTime] := used[numberTime] + 1;	
		test[numberTime] := used[numberTime];
	end;	
	
	IE(Not SeekEof(F), 'Garbage at end of input file');
	Close(F);

	for counter := 0 to 90000 - T do begin
		if (test[counter] > 0) then begin
			test[counter + T] := test[counter + T] - test[counter];
			test[counter] := 0;
		end;
	end;

	for counter := 0 to 90000 do begin
		IE(test[counter] <> 0, 'It is impossible to construct schedule');
	end;
    end;

  Procedure ProcessData;
   Var 
	F:Text;
	line:ansistring;
	hyphenPosition:longint;
	startTime, finishTime, counter: longint;

    Begin
     {$I-}
     Assign(F, ParamStr(2));
     Reset(F);
     PE(IOResult <> 0, 'Can not open output file');
     
	for counter := 1 to N do begin
		readln(F, line);
		PE(IOResult <> 0, 'Can not read line');
		hyphenPosition := ansipos('-', line);
		PE(hyphenPosition = 0, 'Can not find hyphen in line');
		
		startTime := convertToNumber(copy(line, 1, hyphenPosition - 1));
		finishTime := convertToNumber(copy(line, hyphenPosition + 1, length(line) - hyphenPosition));
		
		PE((startTime = -1) or (finishTime = -1), 'Incorrect format HH:MM:SS');
		PE((startTime < minAllowedTime) or (finishTime < minAllowedTime), 'There is moment in output file which is smaller than min allowed time');
		PE((startTime > maxAllowedTime) or (finishTime > maxAllowedTime), 'There is moment in output file which is bigger than max allowed time');
		WA(finishTime - startTime <> T, 'Lesson must have length exactly T seconds');

		used[startTime] := used[startTime] - 1;
		used[finishTime] := used[finishTime] - 1;
	end;

 	PE(Not SeekEof(F), 'Garbage at end of file');
	Close(F);

	for i := 0 to 90000 do begin
		WA(used[i] <> 0, 'Some of moments was used for incorrect number of times');
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
