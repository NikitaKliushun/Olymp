{Терехов Константин Николаевич г. Борисов Задача 1}
program t1z1n305;
var n, i, j:integer;
t, x:longint;
s:string;
a:array[1..2000] of longint;
//d:array[1..1000,1..2] of longint;
b:array[1..2000] of boolean; // zap 1
now:integer;
function stimetoi(s:string):longint;
var
k:longint;
x, e:byte;
begin
  k:=0;
  val(s[1]+s[2],x,e);
  k:=k+x*3600;
  val(s[4]+s[5],x,e);
  k:=k+x*60;
  val(s[7]+s[8],x,e);
  k:=k+x;
  stimetoi:=k;
end;
function itimetos(a:longint):string;
var s,x:string;
h,min,sec:byte;
begin
  h:=a div 3600;
  a:=a mod 3600;
  min:=a div 60;
  sec:=a mod 60;
  s:='';
  if (h<10) then s:=s+'0';
  str(h,x);
  s:=s+x;
  s:=s+':';
  if (min<10) then s:=s+'0';
  str(min,x);
  s:=s+x;
  s:=s+':';
  if (sec<10) then s:=s+'0';
  str(sec,x);
  s:=s+x;
  itimetos:=s;
end;
procedure qsort(l, r:integer);
var i, j:integer; x, c:longint;
begin
  i:=l;
  j:=r;
  c:=a[l+random(r-l+1)];
  repeat
    while (a[i]<c) do inc(i);
    while (a[j]>c) do dec(j);
    if (i<=j) then
    begin
      x:=a[i];
      a[i]:=a[j];
      a[j]:=x;
      inc(i);
      dec(j);
    end;
  until (i>j);
  if (l<j) then qsort(l, j);
  if (i<r) then qsort(i, r);
end;
begin
  randomize;
  Assign(input, 'input.txt');
  Reset(input);
  Assign(output, 'output.txt');
  ReWrite(output);


  readln(input, n, t);
  for i:=1 to 2*n do
  begin
    readln(input, s);

    a[i]:=stimetoi(s);

  end;

  qsort(1,2*n);
  now:=0;
  i:=1;
  fillchar(b,sizeof(b),0);
  while (now<>n) do
  begin
  //if (i>2*n) then i:=1;
   if (not b[i]) then
   begin
     inc(now);
     b[i]:=true;
     x:=a[i]+t;
     j:=1;
     while ((b[j]) or (a[j]<>x)) do
     begin
       inc(j);
     end;
     b[j]:=true;
     writeln(output, itimetos(a[i]),'-',itimetos(a[j]));
     //writeln(output, a[i],'-',x);
     inc(i);
   end else inc(i);
  end;

  close(input);
  close(output);

end.
