 //Poplyovka Anon Vladimirovich logojsk z1 Morskoj boj
Program Z1;
   Var  A:array[0..11] of string;
        e,c:array[0..101] of integer;
        f1,f2:text;
        x:array[0..101] of string;

        i,i1,k,j1,q:integer;
        n:integer;

Begin

 Assign (f1,'input.txt');
   Reset (f1);
   Assign (f2,'output.txt');
   Rewrite (f2);

   for i:=1 to 10 do
      Readln (f1,A[i]);


   Readln (f1,n);
   for i:=1 to n do
   Begin
      Read (f1,x[i]);
      Readln(f1);
   end;

  for i:=1 to n do
  begin
 if pos('a',x[i])<>0 then e[i]:=1;
   if pos('b',x[i])<>0 then e[i]:=2;
   if pos('c',x[i])<>0 then e[i]:=3;
   if pos('d',x[i])<>0 then e[i]:=4;
   if pos('e',x[i])<>0 then e[i]:=5;
   if pos('f',x[i])<>0 then e[i]:=6;
   if pos('g',x[i])<>0 then e[i]:=7;
   if pos('h',x[i])<>0 then e[i]:=8;
   if pos('i',x[i])<>0 then e[i]:=9;
   if pos('k',x[i])<>0 then e[i]:=10;
   end ;



   for i:=1 to n do
  begin
 if pos('1',x[i])<>0 then c[i]:=1;
   if pos('2',x[i])<>0 then c[i]:=2;
   if pos('3',x[i])<>0 then c[i]:=3;
   if pos('4',x[i])<>0 then c[i]:=4;
   if pos('5',x[i])<>0 then c[i]:=5;
   if pos('6',x[i])<>0 then c[i]:=6;
   if pos('7',x[i])<>0 then c[i]:=7;
   if pos('8',x[i])<>0 then c[i]:=8;
   if pos('9',x[i])<>0 then c[i]:=9;
   if pos('10',x[i])<>0 then c[i]:=10;
   end ;
   q:=0;

   for i:=1 to n do
   begin
   if (A[c[i]][e[i]]<>'#') and (q<>1) then  Writeln (f2,'MISS');
   if (A[c[i]][e[i]]='#')and (q<>1) and ((A[c[i]+1][e[i]]='#')or (A[c[i]-1][e[i]]='#')or (A[c[i]][e[i]+1]='#')or (A[c[i]][e[i]-1]='#'))
   then begin  A[c[i]][e[i]]:='@'; Writeln (f2,'HIT'); end;
   if (A[c[i]][e[i]]='#') and(q<>1) then
   begin
      begin
         for i1:=1 to 10 do
         for j1:=1 to 10 do
         if A[i1][j1]='#' then inc(k);
      end;
      if k>1 then begin  Writeln (f2,'DEAD'); A[c[i]][e[i]]:='@';  k:=0; end;
      if k=1 then begin  Write (f2,'GAME OVER'); q:=1; break; end;
      end;
      end;




   Close (f1);
   Close (f2);
 End.
