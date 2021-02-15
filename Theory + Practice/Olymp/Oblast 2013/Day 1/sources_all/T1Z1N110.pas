{Прилепский Александр Игоревия, г.Вилейка 10 класс}
program T1Z1N110;
var a:array[1..1000] of longint;
    n,i,j:integer;
   t:longint;
   s:string;
   x:boolean;
function per(s:string):longint;
  var cod,y,x:longint;
    begin
    val(copy(s,7,2),x,cod);
    val(copy(s,4,2),y,cod);
    x:=x+(y*60);
    val(copy(s,1,2),y,cod);
    x:=x+(y*3600);
    per:=x;
    end;

procedure  vivod(x,y:longint);
  var h,m,s:integer;
  begin
  s:=x mod 60;
  x:=x div 60;
  m:=x mod 60;
  x:=x div 60;
  h:=x;
  if h<10 then write('0');
  write(h,':');
  if m<10 then write('0');
  write(m,':');
  if s<10 then write('0');
  write(s);

  write('-');
  s:=y mod 60;
  y:=y div 60;
  m:=y mod 60;
  y:=y div 60;
  h:=y;
  if h<10 then write('0');
  write(h,':');
  if m<10 then write('0');
  write(m,':');
  if s<10 then write('0');
  writeln(s);
  end;
begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);

readln(n,t);              //vvod
n:=n*2;
for i:=1 to n do
  begin
  readln(s);
  a[i]:=per(s);
  end;                   //

for i:=1 to n-1 do
  begin
  if a[i]<>0 then begin
         j:=i+1;
         x:=true;
         while (j<=n) and x do
           begin
           if a[i]+t=a[j] then begin vivod(a[i],a[j]); x:=false; a[i]:=0; a[j]:=0; end;
           if a[i]-t=a[j] then begin vivod(a[j],a[i]); x:=false; a[i]:=0; a[j]:=0; end;
           j:=j+1;
           end;
         end;
  end;

Close(input); close(output);

end.