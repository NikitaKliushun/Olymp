program z3;
var n,i,p,q,x,y,z,r,j,min:integer;
    a,b:array[1..100000] of byte;
    s,t,v:ansistring;
    f1,f2:text;

function check() : byte;
var i:integer;
    o,o1:ansistring;
begin
   z:=0;
   o:=s[1];
   while s[i]=o do
      inc(i);
   o1:=copy(s,i,length(s)-i+1);
   if pos(o,o1)=0 then z:=1
                  else z:=0;

end;


begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,n);
  for i:=1 to n do
      read(f1,a[i]);



  y:=a[1];
  i:=1;
  while i<=n do

       if a[i]=y then inc(i)
                      else begin inc(x); y:=a[i]; inc(i); end;

   if x>2 then
   begin
    for i:=1 to n do
        if a[i]=1 then inc(p)
                  else inc(q);
    if (q>=p) and (x>2) then write(f2,q)
                        else write(f2,p);
   end;
  if (x=0) or (x=1) then write(f2,n);





  close(f1);
  close(f2);
end.
