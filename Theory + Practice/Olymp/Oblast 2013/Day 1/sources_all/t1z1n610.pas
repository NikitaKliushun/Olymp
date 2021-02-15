var
  a,b : array[1..100] of integer;
  s : array[1..100] of string;
  i, n, t, j, jj, ii, c : integer;
  f1,f2:text;

begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,t);
   for i := 1 to n * 2 do
     readln(f1,s[i]);
    ii := 1;
  for i := 1 to n*2 do
   begin
    jj:=1;
    for j := 1 to length(s[i]) do
     if s[i][j]=':' then begin
                          val(copy(s[i],jj,j-1),a[ii],c);
                          jj:=j+1;
                         end;
   end;
i:=1; j:=1;
 while i<=n*2 do
  begin
   b[j]:=a[i]*3600+a[i+1]*60+a[i+2];
   inc(j); inc(i,3);
  end;
 for i := 1 to j-1 do
  for ii := 1 to j-i do
   if b[ii]>b[ii+1] then
   begin
    jj:=b[ii];
    b[ii]:=b[ii+1];
    b[ii+1]:=jj;
   end;
ii:=1;


end.

