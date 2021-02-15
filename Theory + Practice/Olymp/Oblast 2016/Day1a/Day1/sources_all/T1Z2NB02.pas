//Белько Руслан Александрович, г. Молодечно, 9 "А", задача N2
program T1Z2NB02;

var
  f1,f2:text;
  k,y,i,x1,x2,x3,r:longint;
  l,j,t1,t2,p:byte;
  a,b,c,d:array[0..31] of byte;

procedure vdvoich(x:longint);
var c:byte;
begin
  while x<>0 do
        begin
        c:=x mod 2;
        x:=x div 2;
        l:=l+1;
        a[l]:=c;
        end;
end;

procedure desyat;
var z,j:byte; r:longint;
begin
  r:=1;
  x2:=0; x3:=0;
  for j:=1 to l do
        begin
        x2:=x2+r*c[j];
        x3:=x3+r*d[j];
        r:=r*2;
        end;
end;

begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  rewrite(f2);
  read(f1,k,y);
  if y<>0 then l:=0
          else
               begin
               b[1]:=1;
               l:=1;
               end;
  vdvoich(y);

  for i:=1 to l do
        b[i]:=a[i];

  i:=1;
  while b[i]<>0 do
        i:=i+1;
  b[i]:=1;

  r:=1; x1:=0;
  for i:=1 to l do
        begin
        x1:=x1+r*b[i];
        r:=r*2;
        end;

  i:=0;
  while i<l do
        begin
        i:=i+1;
        if a[i]=1 then
                begin
                c[i]:=1;
                d[i]:=1;
                end;
        if a[i]=0 then
                begin
                t1:=1-t1; t2:=1-t1;
                c[i]:=t1;
                d[i]:=t2;
                end;
        desyat;
        if ((x2=x3) and (x2<=x1)) or (x2=x1) or (x3=x1) then
                l:=l+1;
        end;

  if k=2 then write(f2,x2,' ',x1);
  if k=3 then write(f2,x3,' ',x2,' ',x1);
  close(f1);
  close(f2);
end.