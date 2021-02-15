var qq,q,a,b,de,vs:array[0..100228]of longint;
    n,i,kol,max:longint;
    f:text;
procedure test;
var i,sym,m,j,tek:longint;
    fl:boolean;
begin
 fl:=true;
 for i:=1 to n do
  b[i]:=a[i];
 for i:=1 to 100 do
  vs[i]:=0;
 for i:=1 to kol do
  begin
   if de[i]=0
    then continue
    else sym:=qq[i];
   for j:=1 to n do
    if b[j]=sym
     then b[j]:=0;
  end;
 m:=0;
 for i:=1 to n do
  if b[i]>0
   then begin inc(m);b[m]:=b[i];end;

 for i:=1 to m do
  begin
   if b[i]=0
    then continue;
   if vs[b[i]]=0
    then begin vs[b[i]]:=1; continue;end
    else if b[i-1]=b[i]
          then continue
          else begin fl:=false;break;end;
  end;
  tek:=0;
  if fl
   then for i:=1 to m do
         if b[i]>0
          then inc(tek);
  if tek>max
   then max:=tek;
end;

procedure rec(i:longint);
begin
 if i>kol
  then begin
        test;
       end
  else begin
        de[i]:=0;
        rec(i+1);
        de[i]:=1;
        rec(i+1);
       end;
end;

begin
 assign(f,'input.txt');
 reset(f);
 read(f,n);
 for i:=1 to n do
  begin
   read(f,a[i]);
   inc(q[a[i]]);
  end;
 close(f);
 for i:=1 to 100 do
  if q[i]>0
   then begin inc(kol);qq[kol]:=i;end;

  rec(1);
  assign(f,'output.txt');
  rewrite(f);
  write(f,max);
  close(f);
end.
