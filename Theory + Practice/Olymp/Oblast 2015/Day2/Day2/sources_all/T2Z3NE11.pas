{Новицкая Л., г.Солигорск, 9 Б, тур 2 задача 3}
program z1;
 var f:text;
     k,i,t,n,l1:longint;
     a,b:array[1..101] of longint;
     kol:array[0..10]of longint;
     m:array[0..10,0..10] of longint;
     c:char;
procedure ink(r:longint);
begin
 inc(a[r]);
 if(a[r]=10)
  then begin
        a[r]:=0;
        ink(r+1);
       end;
end;
procedure prov;
 var u,l:longint;
begin
 l:=0;
 for u:=1 to n do
  l:=l+kol[a[u]];
 if(l=l1)
  then begin
        l:=0;
        for u:=1 to n do
         begin
          l:=l+m[b[u],a[u]];
         end;
        if(l<=k)
         then begin
               inc(t);               
              end; 
       end;
end;
procedure initialize;
begin
 kol[1]:=3;
 kol[0]:=6;
 kol[2]:=4;
 kol[3]:=4;
 kol[4]:=4;
 kol[5]:=5;
 kol[6]:=5;
 kol[7]:=3;
 kol[8]:=7;
 kol[9]:=5;

 m[0,1]:=1;
 m[2,1]:=2;
 m[3,1]:=2;
 m[4,1]:=0;
 m[5,1]:=2;
 m[6,1]:=1;
 m[7,1]:=2;
 m[8,1]:=1;
 m[9,1]:=2;

 m[1,0]:=4;
 m[2,0]:=3;
 m[3,0]:=5;
 m[4,0]:=4;
 m[5,0]:=2;
 m[6,0]:=3;
 m[7,0]:=4;
 m[8,0]:=0;
 m[9,0]:=3;

 m[0,2]:=1;
 m[1,2]:=3;
 m[3,2]:=2;
 m[4,2]:=3;
 m[5,2]:=2;
 m[6,2]:=3;
 m[7,2]:=3;
 m[8,2]:=1;
 m[9,2]:=1;

 m[0,3]:=3;
 m[1,3]:=3;
 m[2,3]:=2;
 m[4,3]:=2;
 m[5,3]:=2;
 m[6,3]:=2;
 m[7,3]:=2;
 m[8,3]:=2;
 m[9,3]:=1;

 m[0,4]:=2;
 m[1,4]:=1;
 m[2,4]:=3;
 m[3,4]:=2;
 m[5,4]:=2;
 m[6,4]:=1;
 m[7,4]:=3;
 m[8,4]:=1;
 m[9,4]:=2;

 m[0,5]:=1;
 m[1,5]:=4;
 m[2,5]:=3;
 m[3,5]:=3;
 m[4,5]:=3;
 m[6,5]:=2;
 m[7,5]:=4;
 m[8,5]:=0;
 m[9,5]:=2;

 m[0,6]:=2;
 m[2,6]:=4;
 m[3,6]:=3;
 m[4,6]:=2;
 m[5,6]:=2;
 m[1,6]:=3;
 m[7,6]:=3;
 m[8,6]:=1;
 m[9,6]:=4;

 m[1,7]:=2;
 m[2,7]:=2;
 m[3,7]:=1;
 m[4,7]:=2;
 m[5,7]:=2;
 m[6,7]:=1;
 m[0,7]:=1;
 m[8,7]:=1;
 m[9,7]:=2;

 m[0,8]:=1;
 m[1,8]:=5;
 m[3,8]:=5;
 m[4,8]:=4;
 m[5,8]:=2;
 m[6,8]:=3;
 m[7,8]:=5;
 m[2,8]:=4;
 m[9,8]:=3;

 m[0,9]:=2;
 m[1,9]:=4;
 m[2,9]:=2;
 m[4,9]:=3;
 m[5,9]:=2;
 m[6,9]:=4;
 m[7,9]:=4;
 m[8,9]:=1;
 m[3,9]:=2;
end;
begin
 initialize();
 assign(f,'input.txt');
 reset(f);
 readln(f,n,k);
 for i:=1 to n do
  begin
   read(f,c);
   b[n-i+1]:=ord(c)-ord('0');
   l1:=l1+kol[b[n-i+1]];
  end;
 close(f);
 a[n]:=1;
 t:=0;
 while(a[n+1]=0)do
  begin
   prov();
   t:=t mod 1000000007;
   ink(1);
  end;
 assign(f,'output.txt');
 rewrite(f);
 writeln(f,t);
 close(f);
end.
