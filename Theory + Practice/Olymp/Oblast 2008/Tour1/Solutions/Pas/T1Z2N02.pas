{Kunovski Igor, Borisov, Liceum, zadacha 2}
program T1Z2N02;

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

var dele:array[1..50] of longint;
    ch:array[1..51] of byte;
    i,j,n:byte;
    s,a:real;
    kol:longint;
    k:integer;
begin
  OpenF;
  readln(n,k);
  for i:=1 to n do begin
    read(dele[i]);
    ch[i]:=0;
  end;
  kol:=0;
  while ch[n+1]<>1 do begin
    inc(ch[1]);
    if ch[1]=2 then
    for i:=1 to n do begin
      if ch[i]=2 then begin
        ch[i]:=0;
        ch[i+1]:=ch[i+1]+1;
      end;
    end;
    for i:=1 to n do
      if ch[i]=1 then s:=s+dele[i]
      else a:=a+dele[i];
    if (a>=k) and (s>=k) then inc(kol);
    a:=0; s:=0;
  end;
  writeln(kol);
  CloseF;
end.
