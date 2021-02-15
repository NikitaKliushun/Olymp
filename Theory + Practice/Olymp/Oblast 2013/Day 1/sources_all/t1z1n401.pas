{Монич Денис Николаевич, г. Борисов, 11 "А", задача №1}
program t1z1n401;
Var a:array[1..2,0..2000] of longint;
    s1,s2:string;
    b:boolean;
    code,hh,mm,ss:byte;
    n,t,i,j,low,high,k,ws:longint;
    f1,f2:text;


procedure qsort(var low,high:longint);
var i1,j1,m,wsp:longint;
begin
  i1:=low;
  j1:=high;
  m:=a[1][(i1+j1) div 2];
  repeat
    while a[1][i1]<m do i1:=i1+1;
    while a[1][j1]>m do j1:=j1-1;
    if i1<=j1 then
      begin
        wsp:=a[1][i1];
        a[1][i1]:=a[1][j1];
        a[1][j1]:=wsp;
        i1:=i1+1;
        j1:=j1-1;
      end;
  until i1>j1;
  if low<j1 then qsort(low,j1);
  if j1<high then qsort(i1,high);
end;



procedure poisk(isk:longint);
var l,h,sr:integer;
    vs:longint;
    f:boolean;
begin
  l:=1;
  h:=2*n;
  f:=false;
  while f=false do
   begin
    if h-l>1 then sr:=l+h div 2
             else sr:=h;
      if (a[1][sr]>isk) then h:=sr;
      if (a[1][sr]<isk) then l:=sr;
      if (a[1][sr]=isk) and (a[2][sr]>0) then
        begin
         vs:=a[1][sr];
         if vs div 3600=0 then write(f2,'00:') else write(f2,vs div 3600,':');
         vs:=vs mod 3600;
         if vs div 60=0 then write(f2,'00:') else write(f2,vs div 60,':');
         vs:=vs mod 60;
         if vs=0 then writeln(f2,'00') else writeln(f2,vs);
         a[2][sr]:=0;
         f:=true;
        end;
   end;
end;


begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,n);
readln(f1,t);
fillchar(a[2],sizeof(a[2]),1);
For i:=1 to n*2 do
 begin
  readln(f1,s1);
  s2:=copy(s1,1,2);
  val(s2,hh,code);
  s2:=copy(s1,4,2);
  val(s2,mm,code);
  s2:=copy(s1,7,2);
  val(s2,ss,code);
  a[1][i]:=ss+mm*60+hh*3600;
 end;
low:=0;
high:=n*1;
qsort(low,high);
b:=true;
k:=0;
For i:=1 to n*2 do
  begin
    if a[2][i]>0 then
      begin
        ws:=a[1][i];
        if ws div 3600=0 then write(f2,'00:') else write(f2,ws div 3600,':');
        ws:=ws mod 3600;
        if ws div 60=0 then write(f2,'00:') else write(f2,ws div 60,':');
        ws:=ws mod 60;
        if ws=0 then write(f2,'00-') else write(f2,ws,'-');
        j:=a[1][i]+t;
        poisk(j);
        a[2,i]:=0;
        k:=k+1;
      end;
   if k>=n then break;
  end;


close(f1);
close(f2);
end.
