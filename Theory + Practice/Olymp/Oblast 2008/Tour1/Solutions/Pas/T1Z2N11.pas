{Zhuk Dmitry Vladimirovich Slutsk}
program tasknew;
const
        Infile  = 'input.txt';
        Outfile = 'output.txt';
var
        N,K     : Longint;
        Count   : Int64;
        A       : Array[1..100000] of longint;
        BiN     : Array[0..100] of  Longint;
procedure inputdata;
var
        i       : Longint;
begin
        assign(input,Infile);
         reset(input);

          readln(N,K);

           for i:=1 to N do
            read(A[i]);

         close(input);
end;
procedure NextBin;
var
        i       : Longint;
begin
        for i:= n downto 0 do
         if Bin[i]=1 then Bin[i]:=0 else begin
                        Bin[i]:=1; Exit;
                                     end;


end;
procedure Init;
var
        i       : Longint;
begin
        Fillchar(Bin,Sizeof(Bin),0); Count:=0;

end;
procedure Calc;
var
        i       : Longint;
        K1,K2   : int64;
begin
        K1:=0; K2:=0;
        for i:=1  to n do if Bin[i]=1 then inc(K1,A[i]) else Inc(K2,A[i]);

        if (K1>=k) and (K2>=k) then inc(Count);
end;
procedure Solve;
begin
        Init;
        while Bin[0]<>1 do begin
         NextBin;
         CAlc;
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
        Solve;
        Outputdata;
end.
