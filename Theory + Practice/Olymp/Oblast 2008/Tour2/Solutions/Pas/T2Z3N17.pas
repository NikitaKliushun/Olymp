{Chudinov Vyacheslav Borisov Luceum 11'}
label 1;
var h,o,t,p,n,m,i,j,x:integer;
    a,b,c:array[1..2000] of integer;
    ppc:boolean;
begin
 ppc:=false;
 i:=1;
 o:=i;
 p:=o;
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 readln(input,n,m);
 while not(eof(input)) do
  begin
   readln(a[i],b[i]);
   inc(i);
  end;
 for i:=1 to n-1 do
  for j:=1 to i do
   if a[j]>a[i] then
    begin
     x:=a[j];
     a[j]:=a[i];
     a[i]:=x;
     x:=b[j];
     b[j]:=b[i];
     b[i]:=x;
    end;
 i:=1;
   while i<=n do
    begin
     h:=i;
     for j:=1 to n do
      if a[j]=b[i] then
       begin
        c[o]:=a[j];
        inc(o);
        c[o]:=b[j];
        for p:=1 to n do
         if (a[p]=c[o])
          then if b[p]=a[h]
           then
     goto 1
            else
             begin
              i:=p;
              inc(o);
              c[o]:=b[p];
             end;
           inc(o);
       end;
        inc(i);
     1:
     for x:=1 to o do
      begin
       if c[x]>0 then
        begin
         inc(t);
         ppc:=true;
        end;
       c[x]:=0;
      end;
     if ppc then dec(t,1);
     i:=h+1;
     j:=1;
     o:=1;
     ppc:=false;
    end;
 if m=1 then x:=0;
 if m=n then x:=m;
 for i:=1 to n do
  for j:=1 to i do
   if ((a[j]=b[i])and(b[j]<>a[i]))and(ppc=false) then
    begin
     inc(t);
     ppc:=true;
    end;
 write(output,t);
 close(input);
 close(output);
end.