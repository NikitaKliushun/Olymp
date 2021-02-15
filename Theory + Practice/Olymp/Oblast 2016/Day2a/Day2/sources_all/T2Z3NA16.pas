program t2z1na16;
label 1;
var a:array[1..3000] of longint;
    n,max,ks,k1,k2,k,q,i,j,l:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,ks);
q:=1;
for i:=1 to n do read(a[i]);
i:=1;
max:=a[1];

for i:=1 to n do if a[i]>max then max:=a[i];
while q<=n do
 begin
 k1:=0;
 k2:=0;
 for l:=1 to n do if a[l]=q then ks:=l;
 for j:=ks to n do if a[j]>a[ks] then k1:=k1+1;
 for j:=q to n do if a[j]>a[q] then k2:=k2+1;
 if k1>k2 then begin
               if (q=n) or (a[ks]=max) then begin k:=k+1; goto 1; end;
               k:=k+1;
               for i:=1 to n do if a[i]=a[ks]+1 then begin q:=i; break; end;


               end
          else begin
          if (q=n) or (a[q]=max) then begin k:=k+1; goto 1; end;
               q:=a[q];
               k:=k+1;
               for i:=1 to n do if a[i]=q+1 then begin q:=i; break; end;




               end;







 end;
1: write(k);
close(output);
close(input);
end.
