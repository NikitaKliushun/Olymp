program z3;
var a,b,x,x2,n,m,i,j,code,y,x1,z:longint;
    s1,s2,sx,s,sy:string;
    k,t:array[1..10000] of integer;
    ch:char;
    f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,n,m);
  for i:=1 to n do
      read(f1,k[i]);
  for i:=1 to m do
      read(f1,t[i]);
  for i:=1 to n do
      if i mod 2=1 then for j:=1 to k[i] do s1:=s1+'1'
                   else for j:=1 to k[i] do s1:=s1+'0';
  for i:=1 to m do
      if i mod 2=1 then for j:=1 to t[i] do s2:=s2+'1'
                   else for j:=1 to t[i] do s2:=s2+'0';



  y:=0;

  for i:=length(s1) downto 1 do
      begin
        x:=0;

        val(s1[i],x,code);
        z:=1;
        for j:=1 to y do
            z:=z*2;
        x1:=x1+x*z;

        inc(y);
      end;




  y:=0;

  for i:=length(s2) downto 1 do
      begin
        x:=0;

        val(s2[i],x,code);
        z:=1;
        for j:=1 to y do
            z:=z*2;
        x2:=x2+x*z;

        inc(y);
      end;

  a:=x1 xor x2;

  while a>0 do
    begin
      str(a mod 2,sx);
      s:=sx+s;
      a:=a div 2;
    end;
  ch:=s[1]; x:=0; y:=0;
  for i:=1 to length(s) do
      begin

        if s[i]=ch
           then
            begin
              inc(x);
              if y>0 then write(f2,y,' ');
              y:=0;
            end;
        if s[i]<>ch
           then
             begin
               inc(y);
               if x>0 then write(f2,x,' ');
               x:=0;
             end;

      end;
  if x>0 then write (f2,x,' ');
  if y>0 then write (f2,y,' ');


  close(f1);
  close(f2);
end.
