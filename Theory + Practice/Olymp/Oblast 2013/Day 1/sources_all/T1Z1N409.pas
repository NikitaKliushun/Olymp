{каменко павел николаевич г.Столбцы Задача1}
program z1;
var  x,y,i,j,n,t,max,min:longint;
     b:array[1..2000]of longint;
     a:array[1..2000]of string;
     f:text;

procedure razbor;
var s,ms,ss,hs:string;
    h,m,sec,code:longint;
begin
for i:=1 to n*2 do
 begin
  s:=a[i];
  hs:=s[1]+s[2];
  ms:=s[4]+s[5];
  ss:=s[7]+s[8];
  val(hs,h,code);
  val(ms,m,code);
  val(ss,sec,code);
  b[i]:=h*3600+m*60+sec;
 end;

end;


begin
assign(f,'input.txt');
reset(f);
readln(f,n,t);
for i:=1 to n*2 do
 readln(f,a[i]);
close(f);
razbor;
assign(f,'output.txt');
rewrite(f);
for i:=1 to n*2 do
begin
 for j:=1 to n*2 do
  begin
   if (abs(b[i]-b[j])=t)and(a[i]<>'0')and(a[j]<>'0')
    then
     begin
      if b[i]>b[j]
       then begin max:=i;min:=j;end
       else begin max:=j;min:=i;end;
      writeln(f,a[min],'-',a[max]);
      a[i]:='0';
      a[j]:='0';
     end;
  end;
 end;
 close(f);
end.
