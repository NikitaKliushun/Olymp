//Бузун Владислав Романович, г.Слуцк, 10 класс, №3
program z3;

function max(x,y:integer):integer;
 begin
  if x>y then max:=x else max:=y; end;


var
a:array[0..1000]of byte;
s:string;
e,d,k,x,y,i,n:integer;

begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n);
for i:=1 to n do
 begin
   read(a[i]);
   if a[i]=1 then inc(e) else inc(d);
 end;
k:=1;
for i:=1 to n-1 do
  if a[i]=a[i+1] then inc(k)
                 else break;


  if (k=e)or(k=d)   then write(n)
                          else write(max(e,d));


close(input);
close(output);
end.