var a:array[0..11,0..11]of char;
    x,y:array[1..101]of byte;
    i,j,ii,jj,n,k:longint;
    ss:string;
    s,p:char;
    f:text;

begin
assign(f,'input.txt');
reset(f);
for i:=1 to 10 do
 begin
  readln(f,ss);
  for j:=1 to 10 do
   a[i,j]:=ss[j];
  {for j:=1 to 10 do
   begin
    read(f,a[i,j]);
   end;
  readln(f);  }
 end;


readln(f,n);
for i:=1 to n do
 begin
  read(f,x[i],p,s);
  if s='a' then y[i]:=1;
  if s='b' then y[i]:=2;
  if s='c' then y[i]:=3;
  if s='d' then y[i]:=4;
  if s='e' then y[i]:=5;
  if s='f' then y[i]:=6;
  if s='g' then y[i]:=7;
  if s='h' then y[i]:=8;
  if s='i' then y[i]:=9;
  if s='k' then y[i]:=10;
  readln(f);
 end;
close(f);

assign(f,'output.txt');
rewrite(f);
for i:=1 to n do
 begin
  if a[x[i],y[i]]='#' then
   begin
    a[x[i],y[i]]:='.';
    if (a[x[i]+1,y[i]]='#')
    or (a[x[i]-1,y[i]]='#')
    or (a[x[i],y[i]+1]='#')
    or (a[x[i],y[i]-1]='#')
    then writeln(f,'HIT')
    else begin
          k:=0;
          for ii:=1 to 10 do
           for jj:=1 to 10 do
            if a[ii,jj]='#' then inc(k);
          if k=0 then begin writeln(f,'GAME OVER'); close(f); halt; end
                 else writeln(f,'DEAD') ;
         end;

   end
                      else
                       writeln(f,'MISS');

 end;
close(f);
end.
