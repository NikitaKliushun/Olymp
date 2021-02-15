{Важник Артем Андреевич, г. Молодечно, 8 "А" класс, задача №2}
program T1Z2NC08;
var f1, f2:text; a, b, k, i, z:integer;
procedure prost(z:integer; var k:integer);
var i:longint;
begin
for i:=2 to trunc(sqrt(z)) do
  if (z mod i=0) and (a>=z div 2) and (z>=i) and (b>=z div 2) then k:=k+1;
end;
begin
assign (f1,'input.txt');
assign (f2,'output.txt');
reset (f1);
rewrite (f2);
read (f1, a, b);
if (a=1) and (b=1) then k:=2
 else if (a=1) or (b=1) then
       if a=1 then begin
                   for i:=2 to b do prost(i, k);
                   k:=b+k;
                   end
       else begin
            for i:=2 to a do prost(i, k);
            k:=a+k;
            end;
if (a<>1) and (b<>1) then
        if a=b then
               begin
               for i:=2 to a+b do prost(i, k);
               k:=a+b+k;
               end
        else begin
             for i:=2 to a+b do prost (i, k);
             if a<b then k:=a*2+1+k
                 else k:=b*2+1+k;
             end;
write (f2, k);
close (f1);
close (f2);
end.
