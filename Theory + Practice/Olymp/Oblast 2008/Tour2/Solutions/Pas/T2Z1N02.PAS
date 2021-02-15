{Kunovski Igor, Borisov, Liceum, Tur 2, Zadacha1}
Program T2Z1N02;

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

var N:byte;
    A:array[1..1000000] of byte;
    Sc,Sk:longint;
    i,mix,z,max:longint;
begin
  OpenF;
  readln(N);
  max:=0;
  for i:=1 to n do begin
    read(z);
    A[z]:=A[z]+1;
    Sc:=Sc+z;
    if max<z then max:=z;
  end;
  mix:=0;
  i:=1;
  for i:=1 to max do
    if A[i]>0 then
      for z:=1 to A[i] do begin
        if mix=n div 2 then begin
                              writeln(abs(Sc-Sk*2));
                              CloseF;
                              exit;
                            end;
        Sk:=Sk+i;
        mix:=mix+1;
      end;
  CloseF;
end.
