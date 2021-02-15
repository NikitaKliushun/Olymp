var f:text;
    r:array[0..9,0..9]of longint;
    k:array[0..9 ]of longint;
    teksum,min,tek,n,l,i,ka,kol,ans,summain:longint;
    a:array[1..1000]of longint;
procedure proverka(x:longint);
var kk,sum,q,i,tek2:longint;
    a2:array[1..1000]of longint;
begin
 for i:=1 to 10 do
  a2[i]:=0;
 i:=0;
 sum:=0;
 q:=x;
 tek2:=0;
 teksum:=0;
 while q>0 do
  begin
   inc(tek2);
   a2[tek2]:=q mod 10;
   q:=q div 10;
  end;
 for i:=1 to tek2 do
  begin
   sum:=sum+k[a2[i]]
  end;
 if sum=summain
  then
   begin
    for i:=1 to n do
     teksum:=teksum+r[a[i],a2[i]];
     if summain-teksum<=ka
     then
     inc(ans);
   end;


end;
begin
 assign(f,'input.txt');
 reset(f);
 readln(f,n,ka);
 read(f,l);
 k[0]:=6;
 k[1]:=3;
 k[2]:=4;
 k[3]:=4;
 k[4]:=4;
 k[5]:=5;
 k[6]:=5;
 k[7]:=3;
 k[8]:=7;
 k[9]:=5;
 
r[0,0]:=6;
r[0,1]:=2;
r[0,2]:=3;
r[0,3]:=1;
r[0,4]:=2;
r[0,5]:=4;
r[0,6]:=3;
r[0,7]:=2;
r[0,8]:=6;
r[0,9]:=3;
r[1,0]:=2;
r[1,1]:=3;
r[1,2]:=1;
r[1,3]:=1;
r[1,4]:=3;
r[1,5]:=1;
r[1,6]:=2;
r[1,7]:=1;
r[1,8]:=2;
r[1,9]:=1;
r[2,0]:=3;
r[2,1]:=1;
r[2,2]:=4;
r[2,3]:=2;
r[2,4]:=1;
r[2,5]:=2;
r[2,6]:=1;
r[2,7]:=1;
r[2,8]:=3;
r[2,9]:=3;
r[3,0]:=1;
r[3,1]:=1;
r[3,2]:=2;
r[3,3]:=4;
r[3,4]:=2;
r[3,5]:=2;
r[3,6]:=2;
r[3,7]:=2;
r[3,8]:=2;
r[3,9]:=3;
r[4,0]:=2;
r[4,1]:=3;
r[4,2]:=1;
r[4,3]:=2;
r[4,4]:=4;
r[4,5]:=2;
r[4,6]:=3;
r[4,7]:=1;
r[4,8]:=3;
r[4,9]:=2;
r[5,0]:=4;
r[5,1]:=1;
r[5,2]:=2;
r[5,3]:=2;
r[5,4]:=2;
r[5,5]:=5;
r[5,6]:=3;
r[5,7]:=1;
r[5,8]:=5;
r[5,9]:=3;
r[6,0]:=3;
r[6,1]:=2;
r[6,2]:=1;
r[6,3]:=2;
r[6,4]:=3;
r[6,5]:=3;
r[6,6]:=5;
r[6,7]:=1;
r[6,8]:=4;
r[6,9]:=1;
r[7,0]:=2;
r[7,1]:=1;
r[7,2]:=1;
r[7,3]:=2;
r[7,4]:=1;
r[7,5]:=1;
r[7,6]:=1;
r[7,7]:=3;
r[7,8]:=2;
r[7,9]:=1;
r[8,0]:=6;
r[8,1]:=2;
r[8,2]:=3;
r[8,3]:=2;
r[8,4]:=3;
r[8,5]:=5;
r[8,6]:=4;
r[8,7]:=2;
r[8,8]:=7;
r[8,9]:=4;
r[9,0]:=3;
r[9,1]:=1;
r[9,2]:=3;
r[9,3]:=3;
r[9,4]:=2;
r[9,5]:=3;
r[9,6]:=1;
r[9,7]:=1;
r[9,8]:=4;
r[9,9]:=5;

 close(f);

 if n = 1
  then
   begin
    for i:=1 to 9 do
     if (k[i]=k[l])and(k[l]-r[i,l]<=ka)
      then inc(ans);
   end
  else
   begin
   
    while l>0 do
     begin
      inc(tek);
      a[tek]:=l mod 10;
      l:=l div 10;
     end;
    for i:=1 to tek do
     summain:=summain+k[a[i]];
     
     min:=1;
     
    for i:=1 to tek-1 do
     min:=min*10;
   
    for i:=min to min*10-1 do
     proverka(i);
   
   
   
   
   
   end;



assign(f,'output.txt');
rewrite(f);
write(f,ans);
close(f);



end.