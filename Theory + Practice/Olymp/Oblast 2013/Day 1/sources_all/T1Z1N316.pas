Program karta;
var
n,t,i,l:longint;
s1,s2,s3,s4:string;
  b:array[1..256] of string;
 begin

 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 readln(n,t);

if n=1 then
 readln(s1);
 readln(s2);
  if s1>s2 then
 write(s2,'-',s1) else write(s1,'-',s2);



 close(input);
  close(output);



 end.
