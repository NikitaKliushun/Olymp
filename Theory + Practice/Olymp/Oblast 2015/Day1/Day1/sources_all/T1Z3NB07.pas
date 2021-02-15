program Z3;
var
  i,j,n,m,a,b,c,p,f:longint;
  x:array[1..100000] of byte ;
  k,t,l:array[0..100000] of longint;
  f1,f2:text;


procedure dvoich(x:longint);
begin
  if x div 10000<>0 then p:=5 else
  if x div 1000<>0 then p:=4 else
  if x div 100<>0 then p:=3 else
  if x div 10<>0 then p:=2;
end;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  fillchar(l,sizeof(l),0);

  read(f1,n,m);

  for i:= 1 to n do
    read(f1,k[i]);

  for i:= 1 to m do
    read(f1,t[i]);

  a:=1;
  for i:= 1 to n do
     if i mod 2 <> 0 then
      begin

        for j:= 1 to k[i]-1 do
        a:= a*10+1;

      end else
      begin
        for j:= 1 to k[i] do
        a:= a*10;
      end;

   b:=1;

   for i:= 1 to m do
     if i mod 2 <> 0 then
       begin

         for j:= 1 to t[i]-1 do
         b:=b*10+1;

       end else
       begin
         for j:= 1 to t[i] do
         b:=b*10;
       end;

  if( a<=10 ) and (b<=10) then c:= a+b else
  c:= abs(a-b);




  i:=1;
  dvoich(c);
  if p = 2 then
  begin
  x[i]:= c div 10;
  inc(i);
  x[i]:=c mod 10;
  end else
  if p = 3 then
   begin
     x[i]:=c div 100;
     inc(i);
     x[i]:= (c mod 100) div 10;
     inc(i);
     x[i]:=c mod 10;
   end else
    if p=4 then
    begin
      x[i]:= c div 1000;
      inc(i);
      x[i]:= (c mod 1000) div 100;
      inc(i);
      x[i]:= (c div 100) mod 10;
      inc(i);
      x[i]:= c mod 10;

     end else
    if p = 5 then
    begin
      x[i]:= c div 10000;
      inc(i);
      x[i]:= (c mod 10000) div 1000;
      inc(i);
      x[i]:= (c mod 1000) div 100;
      inc(i);
      x[i]:= (c div 100) mod 10;
      inc(i);
      x[i]:= c mod 10;
    end;
   j:=1;
   f:=1;
   for i:= 1 to  p do
      if x[i] = j then l[f]:=l[f]+1
      else begin inc(f); l[f]:=l[f]+1; j:=x[i];  end;
   for i:= 1 to p do
   if l[i]<>0 then  write(f2,l[i],' ');
   close(f1);
  close(f2);
end.
