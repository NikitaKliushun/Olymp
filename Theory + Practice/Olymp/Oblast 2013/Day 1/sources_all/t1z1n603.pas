{T1Z1N603}
program z;
 var t1:text;
 mat:array[1..2001,1..2]of longint;
 a,b,c,n,t,h,m,s,s1,f:longint;
 st:string;
 procedure qsort(l,r:longint);
  var i,j,k,x:longint;
 begin
  i:=l;
  j:=r;
  x:=mat[(l+r) div 2,1];
  repeat
   while mat[i,1]<x do
    i:=i+1;
   while mat[j,1]>x do
    j:=j-1;
   if i<j
    then begin
         k:=mat[i,1];
         mat[i,1]:=mat[j,1];
         mat[j,1]:=k;
         end;
    i:=i+1;
    j:=j-1;
  until i>j;
  if i<r
   then qsort(i,r);
  if j>l
   then qsort(l,j);
 end;

begin
 assign(t1,'input.txt');
 reset(t1);
 read(t1,n,t);
 readln(t1);
 fillchar(mat,sizeof(mat),0);
 for a:=1 to 2*n do
  begin
  readln(t1,st);
  h:=(ord(st[1])-48)*10+ord(st[2])-48;
  m:=(ord(st[4])-48)*10+ord(st[5])-48;
  s:=(ord(st[7])-48)*10+ord(st[8])-48;
  s1:=h*3600+m*60+s;
  mat[a,1]:=s1;
 end;
 close(t1);

 assign(t1,'output.txt');
 rewrite(t1);
 qsort(1,2*n);
 for c:=1 to n do
  begin
  a:=1;
  while mat[a,2]<>0 do
   a:=a+1;
  b:=a+1;
  f:=mat[b,1]-t;
  while (mat[a,1]<>f)or(mat[b,2]=1) do
   begin
   b:=b+1;
   f:=mat[b,1]-t;
   end;
  mat[a,2]:=1;
  mat[b,2]:=1;
  {}
  h:=mat[a,1] div 3600; mat[a,1]:=mat[a,1]mod 3600;
  m:=mat[a,1] div 60;   mat[a,1]:=mat[a,1]mod 60;
  s:=mat[a,1];
  if h<10
   then write(t1,'0',h,':')
   else write(t1,h,':');
  if m<10
   then write(t1,'0',m,':')
   else write(t1,m,':');
  if s<10
   then write(t1,'0',s,'-')
   else write(t1,s,'-');
  {}
  h:=mat[b,1] div 3600; mat[b,1]:=mat[b,1]mod 3600;
  m:=mat[b,1] div 60;   mat[b,1]:=mat[b,1]mod 60;
  s:=mat[b,1];
  if h<10
   then write(t1,'0',h,':')
   else write(t1,h,':');
  if m<10
   then write(t1,'0',m,':')
   else write(t1,m,':');
  if s<10
   then write(t1,'0',s)
   else write(t1,s);
  writeln(t1);
  end;
 close(t1);
end.
