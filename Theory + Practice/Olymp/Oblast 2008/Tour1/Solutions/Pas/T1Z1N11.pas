{Zhuk Dmitry Vladimirovich Slutsk}
program tasknew;
const
        infile  = 'input.txt';
        Outfile = 'output.txt';
var
        N,W,K                   : int64;
        BestH,BestW,BestCost   : int64;
        H                       : Longint;
procedure inputdata;
begin
        assign(input,Infile); reset(input);

          readln(K);

        close(input);
end;
procedure SolveproblemMaybe;
var
        Cost    : int64;
begin
        BestCost:=High(int64);
        for h:= 1 to K do begin
         W:=(K div H);
         Cost:=Abs(H-W)+(K-H*W);

        if Cost<BestCost then begin
         BestCost:=Cost; BestH:=H; BestW:=W;
                              end;

                          end;
end;
procedure outputdata;
begin
        assign(output,Outfile); rewrite(output);

         writeln(BestH,' ',BestW);

        close(output);
end;
begin
        inputdata; SolveProblemMaybe; Outputdata;

end.
