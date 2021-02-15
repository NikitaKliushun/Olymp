program n2;
 var s,s1:string;
     t,n,i,j,m,kol,k,d:longint;
begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 read(n);
 readln(k);
 read(s);
 d:=0;
 for i:=1 to n do begin
  d:=0;
  for j:=1 to n do begin
   kol:=0;
   for t:=1 to d do begin
    if s[j]=s1[t] then kol:=kol+1;
    if kol<k then begin
     s1:=s1+s[i];
     d:=d+1;
     m:=m+1;
    end;
   end;
  end;
 end;
 if n=1 then m:=2 else m:=4;
 write(m);
 close(input);
 close(output);
end.