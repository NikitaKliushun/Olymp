//Сазанович Владислав Валерьевич Столбцы 10класс задача1
program uio;
const  infile  =  'input.txt';
       outfile =  'output.txt';

 var a:array[1..3000] of longint;
     st:array[1..3000] of string;
     n,t:longint;


procedure indata;
 var hh,mm,ss,s:string;
     h1,m1,s1,i,code:longint;

begin

 assign(input,infile);
 reset(input);
 readln(n,t);
 n:=n*2;
  for i:=1 to n do
   begin
    readln(s);
    st[i]:=s; hh:=''; mm:=''; ss:='';
    if s[1]='0' then hh:=hh+s[2]
                else hh:=hh+s[1]+s[2];
    if s[4]='0' then mm:=mm+s[5]
                else mm:=mm+s[4]+s[5];
    if s[7]='0' then ss:=ss+s[8]
                else ss:=ss+s[7]+s[8];
    val(hh,h1,code); val(mm,m1,code); val(ss,s1,code);
    a[i]:=(h1*3600) + (m1*60) + s1;
   end;
 close(input);

end;


procedure qsort(l,r:longint);
 var i,j,c,s:longint;
     q:string;

begin

 i:=l; j:=r; s:=a[l+random(r-l)+1];
  while i<=j do
   begin
    while a[i]<s do inc(i);
    while a[j]>s do dec(j);
     if i<=j then
      begin
       c:=a[i]; a[i]:=a[j]; a[j]:=c;
       q:=st[i]; st[i]:=st[j]; st[j]:=q;
       inc(i); dec(j);
      end;
   end;

 if i<r then qsort(i,r);
 if j>l then qsort(l,j);

end;


procedure solve;
 var i,j,cis:longint;

begin

 assign(output,outfile);
 rewrite(output);
 for i:=1 to n do
  begin

   cis:=a[i];
   if cis <> -1 then
    begin
      for j:=i+1 to n do
       if (a[j]-a[i]=t)and(a[j]<>-1) then
        begin
         a[j]:=-1; a[i]:=-1;
         writeln(st[i],'-',st[j]);
        end;
    end;

  end;

 close(output);

end;

BEGIN

 indata;
 qsort(1,n);
 solve;

END.