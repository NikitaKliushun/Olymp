{Конофальский Захар Петрович, Жодино, 11 класс, задача 2}
var a:array['a'..'z'] of longint;
    b:array[0..9] of longint;
    c:array[1..2000] of char;
    i,j,n,k:longint;
    d:int64;
    pod:boolean;

function add(x:char):boolean;
begin
case x of
'1': begin inc(b[1]); if b[1]>k then pod:=false; exit; end;
'2': begin inc(b[2]); if b[2]>k then pod:=false; exit; end;
'3': begin inc(b[3]); if b[3]>k then pod:=false; exit; end;
'4': begin inc(b[4]); if b[4]>k then pod:=false; exit; end;
'5': begin inc(b[5]); if b[5]>k then pod:=false; exit; end;
'6': begin inc(b[6]); if b[6]>k then pod:=false; exit; end;
'7': begin inc(b[7]); if b[7]>k then pod:=false; exit; end;
'8': begin inc(b[8]); if b[8]>k then pod:=false; exit; end;
'9': begin inc(b[9]); if b[9]>k then pod:=false; exit; end;
'0': begin inc(b[0]); if b[0]>k then pod:=false; exit; end;
else begin inc(a[x]); if a[x]>k then pod:=false; exit; end;
end;
end;

function otchistka():boolean;
begin
fillchar(b,sizeof(b),0);
fillchar(a,sizeof(a),0);
end;


function poisk():longint;
 var i,j,k:longint;
 begin
 for i:=1 to n do
  for j:=1 to n-i do
   begin
   pod:=true;
   for k:=j to j+i do
    begin
     add(c[k]);
    end;
   if pod = true
    then inc(d);
   otchistka;
   end;
 end;




begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

readln(n,k);


for i:=1 to n do
 read(c[i]);

poisk;
writeln(d+n);

end.

