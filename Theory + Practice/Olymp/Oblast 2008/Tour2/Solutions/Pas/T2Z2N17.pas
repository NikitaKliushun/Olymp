{Chudinov Vazcheslav Borisov Luceum 11'}
var s,ss:string;
    kk,n,k,i,p,j:integer;
    a:array[1..100] of string;
begin
 randomize;
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 readln(input,n,kk);
 readln(input,ss);
 s:=ss;
 while length(s)>0 do
  begin
   delete(s,length(s),1);
   inc(k);
   a[k]:=s;
  end;
 s:=ss;
 while length(s)>0 do
  begin
   delete(s,1,1);
   inc(k);
   a[k]:=s;
  end;
 p:=k+random(n);
 writeln(output,p);
 close(input);
 close(output);
end.