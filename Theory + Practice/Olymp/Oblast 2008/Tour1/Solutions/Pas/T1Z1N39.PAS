{Kryshkovskaya Elizaveta Aleksandrovna, Vileyka, 9', zadacha 1}
Program T1Z1N39;
var min,f,a,b,k,h,w,s,i,j,modraz,raz:longint;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(k);
  f:=0;
  min:=k; if k=2 then begin a:=1; b:=2; end else
  for i:=1 to k-1 do
    for j:=k-1 downto 1 do
      begin
        h:=i;
        w:=j;
        modraz:=abs(h-w);
        if k>=(h*w) then
          raz:=k-(h*w);
        s:=modraz+raz;
        if s<min then
        begin
          min:=s;
          a:=h;
          b:=w;
        end;
      end;
  write(a,' ',b);
  close(input);
  close(output);
end.