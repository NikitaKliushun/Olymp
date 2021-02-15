var s,t:ansistring;
    f:text;
    ans,i,min:longint;
begin
 assign(f,'input.txt');
 reset(f);
 readln(f,s);
 read(f,t);
 if length(s)<length(t)
  then min:=length(s)
  else min:=length(t);

 for i:=1 to min do
  begin
   if s[length(s)-i+1]=t[length(t)-i+1]
    then inc(ans)
    else break;
  end;

 assign(f,'output.txt');
 rewrite(f);
 write(f,ans);
 close(f);


end.
