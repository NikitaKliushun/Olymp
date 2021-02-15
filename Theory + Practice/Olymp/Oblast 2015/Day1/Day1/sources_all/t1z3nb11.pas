Program t1z3nb11;
 var n,m,i,j,v,b,g1,g2,s1,s2,s3,r:integer;
     a1,a2,a3,c,d1,d2,d3:array[1..100000]of integer;
     f:text;
Begin
 assign(f,'input.txt');reset(f);
 read(f,n,m);
 For i:=1 to n do
  read(f,a1[i]);
 For i:=1 to m do
  read(f,a2[i]);
 For i:=1 to n do
  for j:=1 to a1[i] do
   if i mod 2=1
    then begin inc(g1);d1[g1]:=1;end
    else begin inc(g1);d1[g1]:=0;end;
close(f);
 For i:=1 to m do
  for j:=1 to a2[i] do
   if i mod 2=1
    then begin inc(g2);d2[g2]:=1;end
    else begin inc(g2);d2[g2]:=0;end;
 b:=d1[g1];
 s1:=b;
 For i:=1 to g1-1 do
  begin
   b:=d1[g1-i];
   v:=2;
   For j:=2 to i do
    v:=v*2;
   s1:=s1+(b*v)
  end;
assign(f,'output.txt');rewrite(f);
 b:=d2[g2];
 s2:=b;
 For i:=1 to g2-1 do
  begin
   b:=d2[g2-i];
   v:=2;
   For j:=2 to i do
    v:=v*2;
   s2:=s2+(b*v)
  end;
 If abs(s1-s2)=1
  then s3:=abs(s1+s2)
  else s3:=abs(s1-s2);
  i:=0;
 while s3<>1 do
  begin
   inc(i);
   a3[i]:=s3 mod 2;
   s3:=s3 div 2;
  end;
 a3[i+1]:=1;
 For j:=0 to i do
  d3[j+1]:=a3[(i+1)-j];
 r:=1;
 For j:=1 to i+1 do
  begin
   if d3[j]=d3[j+1]
    then c[r]:=c[r]+1
    else begin
          c[r]:=c[r]+1;
          inc(r);
         end;
  end;
 For j:=1 to r do
  if c[j]<>0
   then write(f,c[j],' ');
 close(f);
End.