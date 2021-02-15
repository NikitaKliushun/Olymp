// @utor Gamezo Vladislav, 10 Klass, Berezino
// Task ü2, Tur 1


var
 x,Ans,A,C:int64;

Function NOD(i,j:int64):int64;
begin
 if (j=0) then NOD:=i
                 else NOD:=NOD(j,i mod j);
end;

begin
 Assign(input,'input.txt');Reset(input);
 Assign(output,'output.txt');Rewrite(output);
  Read(A,C);
  x:=NOD(A,C);
 While A<=C do begin
               if NOD(A,C)=A then Inc(Ans);
               Inc(A,x);
              end;
 Write(Ans);
end.
