{Zhuk Dmitry Vladimirovich Slutsk Task1}
program tasknew;
const
        Infile  = 'input.txt';
        Outfile = 'output.txt';
var
        N       :       Longint;
        A       : Array[1..1000000] of longint;
procedure inputdata;
var
        i       : Longint;
begin
        assign(input,Infile); reset(input);

         readln(N);

         for I:=  1to N do read(A[i]);

        close(input);
end;
procedure QSort(L,R     : Longint);
var
        z,x,i,j : Longint;
begin
        i:=l; j:=r; x:=A[L+random(R-l)+1];

         repeat
                while A[i]>x do inc(I);
                while A[j]<x do dec(J);
                  if i<=j then begin
                   z:=A[i]; A[i]:=A[j]; A[j]:=z;
                   inc(I); dec(J);
                               end;
         until i>j;
   if i<r then Qsort(I,R);
   if L<j then Qsort(L,J);

end;
procedure Outputdata;
var
        Ans,i     : Longint;
begin
        Qsort(1,N);
        Ans:=0;
        for i:= 1 to n div 2 do begin
         inc(Ans,A[i]-A[N-i+1]);
                                end;
         assign(output,Outfile); rewrite(output);

          writeln(Ans);

         close(output);
end;
begin
        Randomize;
        inputdata; Outputdata;
end.
