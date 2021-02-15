{Pogireycik_Margarita_Soligorsk_Gimn1}
program T1Z4ND05;
 var a:array[1..2000,1..2000]of integer;
     x,y,z:array[1..10]of integer;
     q,u,n,k,i,j:integer;
     f1,f2:text;
begin
 u:=0;
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 readln(f1,n,k);
 for i:=1 to n do
 for j:=1 to k do
  if j=k 
   then readln(a[i,j])
   else read(a[i,j]);
 close(f1);
 for i:=1 to k do
 assign(f1,'input.txt');
 reset(f1);
 readln(f1,n,k);
 for i:=1 to k do
  read(f1,x[i]);
  readln(f1);
 for i:=1 to k do
  read(f1,y[i]);
  readln(f1);
 close(f1);
 for i:=1 to k do
  read(f1,z[i]);
 for i:=1 to k do
  for j:=1 to k do
   for q:=1 to k do
   if (x[i]=y[j])and(x[i]=z[q])
    then u:=1;
 if u<1
  then begin
        writeln(f2,'-1');
        close(f2);
        halt;
       end;
 close(f2);
 end.
  
 