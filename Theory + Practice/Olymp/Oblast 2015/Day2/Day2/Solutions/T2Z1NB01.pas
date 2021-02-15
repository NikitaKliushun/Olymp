program z1;
var s,t:ansistring;
    i,j,r:longint;
    f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  readln(f1,s);
  readln(f1,t);

  r:=0;




   i:=length(s);  j:=length(t);
   while (s[i]=t[j]) and (i<>1) and (j<>1) do
      begin
        inc(r);
        dec(i);
        dec(j);
      end;

   if (i=1) and (j=1) and (s[1]=t[1]) then inc(r);


  write(f2,r);





  close(f1);
  close(f2);
end.
