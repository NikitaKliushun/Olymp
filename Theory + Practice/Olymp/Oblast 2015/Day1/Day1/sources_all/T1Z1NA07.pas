{Барковский Николай Анатольевич,Воложенский район г.Воложин,9 класс,Z1}
var a:array[1..100,1..2] of longint;
    n,k,m,i,x:longint;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 readln(n,k);
 fillchar(a,sizeof(a),0);
 for i:=1 to n do
  begin
   read(x);
   inc(a[x,1]);
  end;
 for i:=1 to 100 do
  if a[i,1] div k>0 then begin
                          a[i,2]:=a[i,1] div k;
                          m:=m+a[i,2];
                         end;
 writeln(m);
 for i:=1 to 100 do
  if a[i,2]>0 then for x:=1 to a[i,2] do
                    write(i,' ');
 close(input);
 close(output);
end.
