{Елисеев Иван Алексеевич, г.Солигорск, 8 класс, Z1}
program T1Z1NC06;
const mas:array[1..10]of char=('a','b','c','d','e','f','g','h','i','k');
var a:array[0..11,0..11] of byte;
    x,y:array[1..100]of integer;
    n,i,j,cod,k:integer;
    c,z:char;
    s:string;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
k:=0;
  for i:=0 to 11 do
    for j:=0 to 11 do
      a[i,j]:=0;
 for i:=1 to 10 do begin
   for j:=1 to 10 do
     begin
       read(z);
       if z='#' then
       begin a[i,j]:=1;
       inc(k); end
       else a[i,j]:=0;
     end ;readln; end;

  readln(n);
  for i:=1 to n do
  begin
    readln(s);
    if s[2]='0' then
    begin
    x[i]:=10;
    for j:=1 to 10 do
    if s[4]=mas[j] then
    y[i]:=j;
    end
    else begin
    val(s[1],x[i],cod);
    for j:=1 to 10 do
    if s[3]=mas[j] then
    y[i]:=j;
    end
  end;


  for i:=1 to n do
    if a[x[i],y[i]]=1 then
      if (a[x[i]-1,y[i]]=0) and (a[x[i],y[i]+1]=0) and (a[x[i]+1,y[i]]=0) and (a[x[i],y[i]-1]=0) then
      if k=1 then
      begin writeln('GAME OVER'); exit; end else
        begin
          writeln('DEAD');
          a[x[i],y[i]]:=0;
          dec(k);
        end
      else
        begin
          writeln('HIT');
          a[x[i],y[i]]:=0;
          dec(k);
        end
    else writeln('MISS');



  close(input);
  close(output);


end.
