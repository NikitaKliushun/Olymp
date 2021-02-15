// сугак даниил викторович з1 10кл
Var a:array[1..1000,1..2] of longint;
    b:array[1..100000] of longint;
    n,s,j,min:longint;
    k:integer;
    f1,f2:text;

Procedure open;
  var i:longint;
       begin
       assign(f1,'input.txt');
       reset(f1);
       assign(f2,'output.txt');
       rewrite(f2);
       read(f1,n,k);
       readln(f1);
       s:=0;
       for i:=1 to n do begin
                        read(f1,a[i,1]);
                        read(f1,a[i,2]);
                       s:=s+a[i,1];
                        readln(f1);
                        end;
       end;
Procedure put;
  var i,f:longint;
    begin
    i:=1;
    min:=0;
    j:=1;
    f:=0;
    writeln(s,k);
    while (i<=k) and (f=0) do begin
              if s<k then begin
                 while (a[i,1]<>a[i,2]) and (f=0)   do begin
                                                     inc(s);
                                                     inc(a[i,1]);
                                                     inc(min);
                                                     b[j]:=i;
                                                     inc(j);
                                                     if s=k then f:=1;
                                                     end;
                          end;
              if s>k then begin
                 while (a[i,1]<>0) and (f=0)     do begin
                                                dec(s);
                                                dec(a[i,1]);
                                                inc(min);
                                                b[j]:=0-i;
                                                inc(j);
                                                if s=k then f:=1;
                                                end;
                         end;
                         inc(i);
                              end;
    end;

Procedure writing;
Var i:longint;
begin
write(f2,min);
writeln(f2);
for i:=1 to j-1 do writeln(f2,b[i]);
close(f1);
close(f2);
end;


 Begin
 open;
 put;
 writing;
 end.
