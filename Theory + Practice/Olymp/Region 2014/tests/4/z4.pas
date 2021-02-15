Program z4;
var
  a, b : array [0..30000] of byte;
  n, i, x, td, tm, t : longint;
  c:byte;
  f1,f2 : text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);
  
  read(f1,n);
  for i:=1 to n do
    begin
      read(f1,x);
      td:=x div 8; tm:= x mod 8; c:=1 shl tm;
      if (a[td] and c)=0
         then a[td]:=a[td] or c
         else b[td]:=b[td] or c;
    end;
  t:=0;  
  for i:=n downto 1 do
    begin
      td:=i div 8; tm:= i mod 8; c:=1 shl tm;
      if ((a[td] and c)>0) and ((b[td] and c)=0)
         then begin
                t:=i;
                break;
              end;
    end;
  if t=0
     then write(f2,0)
     else begin
            i:=0;
            reset(f1);
            read(f1,n);
            repeat
              read(f1,x);
              i:=i+1;
            until x=t;
            write(f2,i,' ',t);
          end;
  close(f1);
  close(f2);
end.