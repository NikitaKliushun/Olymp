var i,j,k,h,hm,wm,w:longint;
begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 readln(k);
 h:=1;w:=1;j:=abs(h-w)+k-h*w;hm:=h;wm:=w;
 i:=trunc(sqrt(k))+1;
 for h:=(i div 2) to i do
   begin w:=k div h;
     if (h*w<=k)and((abs(h-w)+k-h*w)<j)
      then begin j:=abs(h-w)+k-h*w;hm:=h;wm:=w;end;end;
 writeln(hm,' ',wm);
 close(input);
 close(output);
end.
