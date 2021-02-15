Program t2z1;
var f1,f2: text;
    s,t: ansistring;
    k,i,d: longint;
    label 1;
Begin
     assign(f1,'input.txt');
     assign(f2,'output.txt');
     reset(f1);
     rewrite(f2);
     readln(f1,s);
     read(f1,t);
     if s=t then begin
                   write(f2,length(s));
                   goto 1;
                 end;
     i:= length(s);
     k:= length(t);
     while s[i]=t[k] do
     begin
       d:= d+1;

       k:= k-1;
       i:= i-1;
     end;
     write(f2,d);
   1:close(f2);
     close(f1);
end.