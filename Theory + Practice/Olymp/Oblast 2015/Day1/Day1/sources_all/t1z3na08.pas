//shlyakhov yan,sluck,8,3
program sad;
uses math;
var
 i,n,m,j,p,k,z:integer;
 a,b:array[0..10000]of byte;
begin
 assign(input,'input.txt');assign(output,'output.txt');
 reset(input);rewrite(output);
   readln(n,m);
    if (n=m)and(n=1) then begin
      readln(p);
      readln(z);
      write('2 ');
      for i:=1 to max(p,z) do
       write('1 ');exit;end;
    p:=1;
    for i:=1 to n do
     begin
      read(k);
       for j:=p to p+k-1 do
        if i mod 2 =0 then  a[j]:=0
         else a[j]:=1;
      p:=p+k;
     end;
    z:=1;
    for i:=1 to m do
     begin
      read(k);
       for j:=z to z+k-1 do
        if i mod 2 =0 then  b[j]:=0
         else b[j]:=1;
      z:=z+k;
     end;
     //---------------------
   dec(z);
   dec(p);
   k:=abs(p-z);
   for i:=1 to max(p,z) do
     begin
       if p=z then a[i]:=a[i]xor b[i];
       if k>=i then
         a[i]:=a[i]xor b[i];
     end;
   if p<z then
    for i:=p+1 to z do
     a[i]:=b[i];
   i:=1;
   while i<max(p,z) do
     begin
      if (a[i]=1)and(a[i+1]=0) then
        begin
         write('2 ');
         inc(i,2);
        end
       else
       begin
         write('1');
         inc(i,1);
       end;
     end;
 close(input);close(output);
end.
