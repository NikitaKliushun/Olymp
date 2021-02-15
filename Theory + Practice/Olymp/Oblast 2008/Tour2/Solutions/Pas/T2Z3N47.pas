PROGRAM T2Z3N47;
VAR N,M:longint;
    mas : array [1..2, 1..1000001] of longint;
    koff,put:longint;
    p: boolean;
    metk: array [1..2, 1..10001] of boolean;
    puti: array [1..10001] of longint;





procedure inputdata;
var i:longint;
begin
assign (input, 'input.txt'); reset (input);

readln (N,M);
if N=2 then
 begin
  p:=false;
  koff:=0;
 end;
for i:=1 to m do readln (mas [1,i],mas[2,i]);

close (input);
end;

procedure poisk (i,i2,i3:longint);
var a,b:longint;
begin
if mas [1,i]=mas[1,i2] then
 begin
  puti [i3]:=put;
  put:=0;
 end else
if mas [1,i]=mas[2,i2] then
 begin
  puti [i3]:=put;
  put:=0;
 end else
begin
  for a:=1 to m do
  begin
   if (mas [1,a]= i) and (metk [1,a] <> true) then begin
                                                    poisk (mas [1,a],i2,i3);
                                                    put:=put+1;
                                                   end;
   if (mas [2,a]= i) and (metk [2,a] <> true) then begin
                                                    poisk (mas [2,a],i2,i3);
                                                    put:=put+1;
                                                   end;
  end;
end;
end;

procedure solve;
var i,i2:longint;
begin
assign (output, 'output.txt'); rewrite (output);

koff:=0;

for i:=1 to n do
 for i2:=1 to n do
  begin
   if i<>i2 then
    begin
     put:=0;
     koff:=koff+put;
    end;
  end;

for i:=1 to n do koff:=koff+puti [i];


close (output);
end;

BEGIN
p:=true;
inputdata;
if p<>false then {solve} writeln (n-2);
assign (output, 'output.txt'); rewrite (output);
writeln (koff);
close (output);
END.
