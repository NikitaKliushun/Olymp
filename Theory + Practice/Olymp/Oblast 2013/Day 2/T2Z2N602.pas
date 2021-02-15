//Сазанович Владислав Валерьевич Столбцы 10класс 2задача
program uio;
const  infile  =  'input.txt';
       outfile =  'output.txt';

 var a,nom:array[1..200000] of longint;
     n,k,nk1,nk2:longint;


procedure indata;
 var i:longint;

begin

 assign(input,infile);
 reset(input);
 readln(n,k);
  for i:=1 to n do
   begin
    nom[i]:=i;
    read(a[i]);
   end;
 close(input);

end;


procedure outdata;
 var i:longint;

begin

 assign(output,outfile);
 rewrite(output);
 writeln(k);
  for i:=nk1 to nk2-1 do
   write(nom[i],' ');
 write(nom[nk2]);
 close(output);

end;


procedure solve;
 var i,j,min:longint;

begin

 min:=maxlongint;
 i:=1; j:=k;
  for j:=k to n do
   begin
    if a[j]-a[i]<min
     then
      begin
       min:=a[j]-a[i];
       nk1:=i; nk2:=j;
      end;
     inc(i);
   end;

end;


procedure qsort(l,r:longint);
 var i,j,s,c:longint;

begin

 i:=l; j:=r; s:=a[l+random(r-l)+1];
  while i<=j do
   begin
    while a[i]<s do inc(i);
    while a[j]>s do dec(j);
     if i<=j then
      begin
       c:=a[i]; a[i]:=a[j]; a[j]:=c;
       c:=nom[i]; nom[i]:=nom[j]; nom[j]:=c;
       inc(i); dec(j);
      end;
   end;

 if i<r then qsort(i,r);
 if j>l then qsort(l,j);


end;

BEGIN

 indata;
 qsort(1,n);
 solve;
 outdata;

END.
