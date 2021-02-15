program z1;
var a:array[0..11,0..11] of byte;
    n,i,j,k,x:integer;
    c:char;
    f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  for i:=1 to 10 do
      for j:=1 to 10 do
         begin
           repeat
             read(f1,c);
           until (c='#') or (c='.');
           if c='#' then begin inc(x); a[i,j]:=1; end;
           if c='.' then a[i,j]:=0;
         end;

  read(f1,n);

  for k:=1 to n do
    begin
      read(f1,j);
      read(f1,c);
      read(f1,c);
      if c='a' then i:=1;
      if c='b' then i:=2;
      if c='c' then i:=3;
      if c='d' then i:=4;
      if c='e' then i:=5;
      if c='f' then i:=6;
      if c='g' then i:=7;
      if c='h' then i:=8;
      if c='i' then i:=9;
      if c='k' then i:=10;
      //writeln(f2,a[j,i]);
      if a[j,i]=0 then writeln(f2,'MISS');
      if (a[j,i]=1) and (x>1) and (a[j,i-1]=0) and (a[j,i+1]=0) and (a[j-1,i]=0) and (a[j+1,i]=0)
         then begin dec(x); writeln(f2,'DEAD'); a[j,i]:=0; end;
      if (x=1) and (a[j,i]=1) then x:=0;
      if (a[j,i]=1) and (x>0) and ((a[j,i-1]=1) or (a[j,i+1]=1) or (a[j-1,i]=1) or (a[j+1,i]=1))
         then begin dec(x); writeln(f2,'HIT'); a[j,i]:=0; end;

      if x=0 then begin write(f2,'GAME OVER'); break; end;

    end;




  close(f1);
  close(f2);
end.
