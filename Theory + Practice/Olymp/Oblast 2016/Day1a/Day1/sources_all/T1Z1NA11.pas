//1 Тур 3 Этапа Республиканской олимпиады, 2016 год, Залевский Александр, Задача 1
Var
  a:array[0..11,0..11]of longint;
  j,i,b,k,n:longint;
  c:char;
  t1,t2:text;
  s:string;
function check(x,y:longint):boolean;
Begin
if (a[x+1,y]=1)or(a[x-1,y]=1)or(a[x,y+1]=1)or(a[x,y-1]=1)
  then check:=true
  else check:=false;
end;

Begin
assign (t1,'input.txt'); reset (t1);
assign (t2,'output.txt'); rewrite (t2);
for i:=1 to 10 do
  Begin
  a[i,0]:=0;
  a[i,11]:=0;
  a[0,i]:=0;
  a[11,i]:=0;
  end;
k:=0;
for j:=1 to 10 do
  Begin
  readln (t1,s);
  for i:=1 to length(s) do
  if (s[i]='#') then
  Begin
  a[i,j]:=1;
  k:=k+1;
  end
  else a[i,j]:=0;
  end;
read (t1,n);
i:=1;
While (i<=n) and (k>0) do
  Begin
  readln (t1,b,c,c);
  if c='k' then c:='j'; //ord
  if a[ord(c)-96,b]=1 then
    Begin
    a[ord(c)-96,b]:=0;
    if check(ord(c)-96,b)=true then writeln (t2,'HIT')
                               else
                               if k>1 then writeln (t2,'DEAD')
                                      else writeln (t2,'GAME OVER');
    k:=k-1;
    end
  else writeln (t2,'MISS');
  i:=i+1;
  end;
close (t1);
close (t2);
end.
