{Kunovski Igor, Borisov, Liceum, Tur 2, Zadacha2}
Program T2Z2N02;

procedure OpenF;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
end;

procedure CloseF;
begin
  close(input);
  close(output);
end;

var  S:array[1..1000000] of byte;
     x,y,N,i,j,K:longint;
     kol:int64;
     a:char;
function Odin(x,y:longint):boolean;
var ASII:array[0..255] of longint;
    i:longint;
begin
  Odin:=True;
  for i:=0 to 255 do ASII[i]:=0;
  for i:=x to y do begin
    inc(ASII[S[i]]);
    if ASII[S[i]]>k then exit;
  end;
  Odin:=False;
end;

begin
  OpenF;
  readln(N,K);
  for i:=1 to N do begin read(a); S[i]:=ord(a); end;
  for i:=1 to K do
    kol:=kol+N-i+1;
  for i:=K+1 to N do
    for x:=1 to (n-i+1) do begin
      y:=x+i-1;
      if Odin(x,y)=False then inc(kol);
    end;
  writeln(kol);
  CloseF;
end.
