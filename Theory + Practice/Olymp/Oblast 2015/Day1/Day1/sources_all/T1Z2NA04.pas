var a,b,i,raz,min:longint;
    ans:int64;
    f:text;
begin
 assign(f,'input.txt');
 reset(f);
 read(f,a,b);
 close(f);
 if a<b then min:=a
        else min:=b;
 min:=min*2+1;
 if a=b
  then dec(min);
for i:=1 to round(sqrt(min)) do
 ans:=ans+min div i-i+1;




assign(f,'output.txt');
rewrite(f);
write(f,ans);
close(f);

end.