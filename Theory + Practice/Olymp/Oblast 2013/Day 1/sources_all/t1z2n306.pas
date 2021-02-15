 program t1z2n306;
 var c,b,k,a,l,i,z,p:integer;
 a1:real;
 f1,f2:text;
 begin
 l:=1;
 z:=1;
 assign(f1,'input.txt');
 reset(f1);
 readln(f1,a,c);
 a1:=c/1;
 close(f1);

if c mod 2=0 then
  begin

  while z=1 do
  if a1>a then
    begin
    a1:=a1/2;
    k:=k+1;
    end
  else z:=0;
 //k:= k+1;
end

else

begin

for i:=3 to c do
 if c mod i = 0 then
 begin
  p:=i;
  
  
    while l=1 do
  if a1>a then
    begin
    a1:=a1/p;
    k:=k+1;
    end
  else l:=0;
 //k:= k+1;
end ;
  
  
  
  
  
  i:=c;
  end;
 













k:=k+1;
assign(f2,'output.txt');
rewrite(f2);
write(f2,k);
close(f2);

 // writeln(k);


 end.