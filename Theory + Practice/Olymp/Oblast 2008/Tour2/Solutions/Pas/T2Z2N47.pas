PROGRAM T2Z2N47;

VAR N,K:longint;
    s: array [1..1000000] of char;
    metk: array [1..1000000] of boolean;
    pass: array [1..1000000] of char;
    p:boolean;

procedure inputdata;
var i:longint;
begin
assign (input, 'input.txt'); reset (input);

readln (N,K);

for i:=1 to n do
 begin
  read (s [i]);
 end;

close (input);
end;

procedure prov (dlin:longint);
var i,i2:longint;
    kol: longint;
begin
kol:=0;
 p:=true;
 if dlin <> 1 then
  begin

   for i:=1 to dlin do
    begin
     for i2:=1 to  dlin do
      begin
       if pass [i]=pass [i2] then kol := kol+1;
      end;
     if kol> k then
      begin
       p:=false;
       break;
      end;
     kol:=0;
    end;
  end;
end;


procedure solve;
var i,i2,i3,kol:longint;
    dlin: longint;
    pov: longint;
begin
kol:=0;
assign (output, 'output.txt'); rewrite (output);
for dlin:=1 to n do
 begin
  for i:=1 to n-dlin+1 do
   begin
    i3:=1;
    for i2:=i to i+dlin-1 do
     begin
      pass [i3]:= s[i2];
      inc (i3)
     end;
    prov (dlin);
    if p=true then
               begin
                kol:=kol+1;
                {for i3:=1 to dlin do write (pass [i3]);
                writeln ;}
               end;
    for i3:=1 to dlin+1 do pass [i3]:=' ';
   end;

 end;
writeln (kol);

close (output);
end;

BEGIN

inputdata;
solve;

END.
