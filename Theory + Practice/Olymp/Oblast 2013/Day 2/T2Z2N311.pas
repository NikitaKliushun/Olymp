Program z2;
type mas=array[1..100000] of longint;
Var k,n,m,r,t,i,u,h,g:longint;
    d,a,w:mas;
    f1,f2:text;
Procedure sort;
 var o,j,e:longint;
  begin
   e:=1;
   for o:=1 to r do
    begin
     for j:=1 to a[o] do
      begin
       d[e]:=o;
       inc(e);
      end;
    end;
  end;
Begin
 Assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 readln(f1,n,k);
 for i:=1 to n do
  begin
   read(f1,w[i]);
   u:=w[i];
   inc(a[u]);
   if u>r
    then r:=u;
  end;
 sort;
 r:=100000;
 for i:=1 to n-k+1 do
  begin
   g:=i;
   h:=0;
   for u:=i to k-2+i do
    begin
     a[u]:=d[u+1]-d[u];
     inc(h,a[u]);
    end;
   if h<r
    then begin
          t:=g;
          r:=h;
         end;
  end;
 i:=1;
 u:=0;
 writeln(f2,k);
 while i<=k do
  begin
   inc(u);
   if (w[u]>=d[t])and (w[u]<=d[t-1+k])
    then begin
          inc(i);
          write(f2,u,' ');
         end;
  end;
 close(f1);
 close(f2);
End.
