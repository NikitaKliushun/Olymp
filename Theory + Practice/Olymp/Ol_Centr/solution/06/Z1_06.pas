{Куличок Никита Задача №1}
var
     A,B,C,D,max,X1,X2,X3:Longint;
begin
     Readln(A,B,C,D);
     X1:=(A*B)+(C*D);
     X2:=(A*C)+(B*D);
     X3:=(A*D)+(B*C);
     max:=0;
     if X1>max then max:=X1;
     if X2>max then max:=X2;
     if X3>max then max:=X3;
     Writeln(max);
 end.