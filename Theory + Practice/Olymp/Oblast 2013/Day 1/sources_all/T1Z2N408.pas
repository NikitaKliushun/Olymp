{сугак даниил викторович 10 2}
Var a,c:longint;
    f1,f2:text;
    s:integer;

 Procedure reading;
 begin
 Assign(f1,'input.txt');
 Reset(f1);
 Assign(f2,'output.txt');
 Rewrite(f2);
 read(f1,a,c);
 close(f1);
 end;

 Procedure searching;
 Var b:integer;
 begin
  s:=0;
  if a=c then s:=1
     else begin for b:=a to c div 2 do
                       if (c mod b=0) and (b mod a =0) then inc(s);
          end;
          inc(s);
 end;

Begin
reading;
searching;
write(f2,s);
close(f2);
End.
