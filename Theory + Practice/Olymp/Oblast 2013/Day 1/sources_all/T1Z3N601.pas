{Скоморощенко Александр Игоревич, Борисов, 9, 3}
program T1Z3N601;
var
  a:array[1..400] of ansistring;
  n,m,x,y,k,l,h,i:integer;
  s1,s2:ansistring;
  c:char;

function it_is_Agent:boolean;
 var
   ff:boolean;
 begin
   ff:=true;
   i:=x;
   while (i <= (x+(h div 2)-1)) and (ff=true) do
    begin
      s1:=copy(a[i],y,l);
      s2:=copy(a[x+h-(i-x+1)],y,l);
      if s1<>s2 then ff:=false;
      i:=i+1;
    end;
   it_is_Agent:=ff;
 end;



begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  readln(n,m);
  for x:=1 to n do
   begin
     repeat read(c); a[x]:=a[x]+c;
     until seekeoln;
     readln;
   end;


   for x:=1 to n-1 do
    for y:=1 to m do
     for h:=2 to n-x+1 do
      for l:=1 to m-y+1 do
       if it_is_Agent then
        begin
         k:=k+1;
         //writeln(x,' ',y,'--',h,' ',l);
        end;


   write(k);
  close(input);
  close(output);
end.
