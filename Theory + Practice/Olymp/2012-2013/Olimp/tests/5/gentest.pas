Program z4;
var
  f1,f2:text;
  a:array[0..201,0..201] of byte;
  n,m,k,l,i,j,x,y:byte;
  t:longint;
begin
  assign(f1,'in.txt');
  rewrite(f1);
  
  randomize;
  read(n,m,k,l);  
  writeln(f1,n,' ',m,' ',k);
  for i:=1 to n do
    for j:=1 to m do
      a[i,j]:=random(10) div 8{0}{2};
  i:=1;
  while i<=l do
    begin
      x:=random(n)+1;
      y:=random(m)+1;
      if a[x,y]<>2
         then begin
                a[x,y]:=2;
                i:=i+1;
              end;  
    end;
  for i:=1 to n do
    begin
      for j:=1 to m-1 do
        write(f1,a[i,j],' ');
      writeln(f1,a[i,m]);
    end;  
    
  close(f1);
end.