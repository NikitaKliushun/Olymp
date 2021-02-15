{Zhuk Dmitry Vladimirovich Slutsk}
program tasknew;
const
        Infile  = 'input.txt';
        outfile = 'output.txt';
var
        A,Next,Count       : Array[0..100000] of Longint;

        n,M,First     : Longint;
procedure Init;
var
        i       : Longint;
begin
        Fillchar(Count,Sizeof(Count),0);
        FirsT:=1;
        for I:= 1 to n do begin
        A[i]:=i; Next[i]:=i+1;
                          end;
        Next[N]:=0;
end;
procedure makeFirst(i,X   : Longint);
var
        Pred,cur,Posit       : Longint;
begin
        Cur:=First; pred:=0; posit:=0;

        while Cur<>0 do begin
        inc(posit);

          if A[cur]=X then begin
          if Cur<>First then begin

            Next[pred]:=Next[Cur];
            Next[Cur]:=First;
                      First:=Cur;
                                end;
            Count[i]:=Posit;
            Exit;
                           end;
            Pred:=Cur; Cur:=Next[Cur];
                        end;


end;
procedure inputdata;
var
        I,X     : Longint;
begin
        assign(input,Infile); reset(input);

         readln(N,M); Init;

         for i:=1 to m do  begin
         read(x); MakeFirst(i,X);
                           end;

        close(input);
end;
procedure outputdata;
var
        i       : Longint;
begin
        assign(output,Outfile); rewrite(output);

         for i:= 1 to M do
          write(Count[i],' ');

        close(output);
end;
begin
        inputdata; Outputdata;
end.
