program zzz;
 var i,a,b,c,n:int64;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);

 read(a,c);

 if a=c then write(1)
  else if (a mod c=0) or (c mod a=0) then
   begin
    b:=0;
    if a<c then i:=a else i:=c;
    if a>c then n:=a else n:=c;
    while i<=n do
     begin
      if (a>i) and (c>i) and (a mod i=0) and (c mod i=0) then inc(b);
      if (a>i) and (c<i) and (a mod i=0) and (i mod c=0) then inc(b);
      if (a<i) and (c>i) and (i mod a=0) and (c mod i=0) then inc(b);
      if (a<i) and (c<i) and (i mod a=0) and (i mod c=0) then inc(b);
      if (a=i) and (c=i) and (i mod a=0) and (i mod c=0) then inc(b);
      if (a=i) and (c>i) and (i mod a=0) and (c mod i=0) then inc(b);
      if (a=i) and (c<i) and (i mod a=0) and (i mod c=0) then inc(b);
      if (a<i) and (c=i) and (i mod a=0) and (i mod c=0) then inc(b);
      if (a>i) and (c=i) and (a mod i=0) and (i mod c=0) then inc(b);
      inc(i);
     end;
    write(b);
   end;
 close(input);
 close(output);
end.