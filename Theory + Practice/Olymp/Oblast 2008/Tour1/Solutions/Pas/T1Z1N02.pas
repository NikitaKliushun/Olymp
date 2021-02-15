{Kunovski Igor, Borisov, Liceum, zadacha 1}
program T1Z1N02;

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

var S,P,H,W,K:longint;
    i,x,y,j:longint;
begin
  OpenF;
  readln(k);
  H:=trunc(sqrt(k));  W:=K div H;  P:=abs(H-W);  S:=K-H*W;
  x:=H;
  if x-1>0 then x:=H-1;  y:=K div x;  i:=abs(x-y); j:=k-x*y;
  if (i+j)<(p+s) then begin
    H:=x;
    W:=y;
  end;
  writeln(H,' ',W);
  CloseF;
end.
