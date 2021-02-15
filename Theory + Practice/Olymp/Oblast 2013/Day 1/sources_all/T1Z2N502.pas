program T1Z2N502;    {made by extremly slow brain}
var a,c,x,i:longint;  {i want longint to be more then 1.000.000}
    f1,f2:text;

begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

 read(f1,a,c);

 x:=0;                            {some kind of bike become here}
 if a=c then x:=1;
 if a<>c then
  begin
   if (c mod a)=0 then
    for i:=1 to c do
     if (c mod i)=0 then
      if (i mod a)=0 then x:=x+1;
   if (c mod a)<>0 then x:=0;
  end;                              {program! hurry up! }
write(f2,x);
close(f1);
close(f2);
end.
