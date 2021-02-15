program n1;
 var k,h,w,g,i,m:longint;
begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 read(k);
 g:=0;
 i:=0;
 while g=0 do begin
  i:=i+1;
  m:=k-i;
  h:=trunc(sqrt(m));
  if m mod h=0 then begin
   w:=h;
   g:=1;
  end
  else begin
   h:=trunc(sqrt(k));
   w:=h+1;
   if w*h=k then g:=1;
  end;
 end;
 write(h,' ',w);
 close(input);
 close(output);
end.