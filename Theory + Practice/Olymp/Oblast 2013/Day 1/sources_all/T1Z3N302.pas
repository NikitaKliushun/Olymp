program zz;
 var a:array[1..400,1..400]of byte;
       n,m,i,j,ii,jj:integer;
       k:int64;
       f:text;
function pr(u1,u2,vst,vstr:integer):boolean;
 var r:integer;
 begin
 pr:=true;
 for r:=1 to vst div 2 do
  begin
  if a[u1,vstr]<>a[vst-r+1,vstr]
   then begin
         pr:=false;
         exit;
        end;
   inc(u1);
  end;
 end;
procedure inp;
begin
assign(f,'input.txt');
reset(f);
read(f,n,m);
for i:=1 to n do
 begin
  for j:=1 to m do
    read(f,a[i,j]);
  readln(f);
 end;
close (f);
end;
begin
inp;
for i:=1 to n-1 do
 for j:=1 to m do
   for ii:=i+1 to n do
    begin
     jj:=j;
     while jj<>m+1 do
     if pr(i,j,ii,jj)
      then begin
            inc(k);
            inc(jj);
           end
      else jj:=m+1;
     end;
assign(f,'output.txt');
rewrite(f);
write(f,k);
close(f);
end.
