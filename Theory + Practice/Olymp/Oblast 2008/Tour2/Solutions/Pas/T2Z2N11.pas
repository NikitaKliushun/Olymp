{Zhuk Dmitry Vladimirovich Task2}
program tasknew;
const
        Infile  = 'input.txt';
        outfile = 'output.txt';
var
        A        : Array[1..1000010] of char;
        CountZ   : array['0'..'9'] of Longint;
        CountS   : array['a'..'z'] of Longint;
        N,K        : longint;
        Count      : int64;
procedure inputdata;
var
        i       : Longint;
begin

        assign(input,Infile); reset(input);

         readln(N,K);

          for I:=1 to n do read(A[i]);

         close(input);
         A[N+1]:='#';
end;
procedure Init;
begin
        fillchar(CountZ,Sizeof(CountZ),0);
        Fillchar(CountS,Sizeof(CountS),0);
end;
procedure Add(Symb      : Char);
begin
        if Symb in ['0'..'9'] then inc(CountZ[Symb])
        else Inc(CountS[Symb]);
end;
procedure Del(Symb      : char);
begin
        if Symb in['0'..'9'] then Dec(CountZ[Symb])
        else Dec(CountS[Symb]);
end;
function Uslovie(Num    : Longint)      : Boolean;
var
        i       : char;
        Max     : Longint;
begin
         Add(A[Num]);
        Max:=-Maxlongint;
        for i:= '0'to'9'  do
        if Countz[i]>max then Max:=CountZ[i];

        if Max>K then Exit(FAlse);

        for i:='a' to 'z' do
         if CountS[i]>max then max:=CountS[i];

         if Max>K then Exit(FAlse);

        Exit(True);
end;
function Uslovie2(Num   : Longint)      : Boolean;
var
        max   : Longint;
        I     : char;
begin
        Max:=-Maxlongint;
        for i:= '0'to'9'  do
        if Countz[i]>max then Max:=CountZ[i];

        if Max>K then Exit(FAlse);

        for i:='a' to 'z' do
         if CountS[i]>max then max:=CountS[i];

         if Max>K then Exit(FAlse);

        Exit(True);

end;
procedure Solveproblem;
var
        head,tail,PrevTail       : Longint;
begin
        Init;
        head:=1; tail:=1; Add(A[1]);
        PrevTail:=0; Count:=0;

        while head<=N do begin

         while (Tail+1<=N) and (Uslovie(tail+1)) do begin
          inc(Tail);
                          end;

          if A[Tail+1]<>'#' then Del(A[Tail+1]);

          Count:=Count+Round((tail-head+2)/2*(tail-head+1));
          if PreVTail<>0 then Dec(Count, Round((PrevTail-Head+2)/2*(PrevTail-Head+1)) );

                     PrevTail:=Tail;

                         inc(TAil);

          if Tail>N then EXit;
                Add(A[Tail]);

          while (head<=N) and (Uslovie2(TAil)=false) do begin

           del(A[Head]);
           inc(Head);
                                                       end;


                      end;
end;
procedure outputdata;
begin
        assign(output,Outfile); rewrite(output);

         writeln(Count);

        close(output);
end;

begin
        inputdata;
        Solveproblem;
        outputdata;
end.
