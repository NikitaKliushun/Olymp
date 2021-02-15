var
   n, k, i, j, c, nn: longint;
   a, d: array[-1000000..100000] of longint;
f1,f2:text;
function poisk(b:longint):longint;
var g:longint;
begin
g:=1;
 while b<>d[g] do inc(g);
 poisk:=g;
end;




begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'input.txt');
rewrite(f2);
   readln(n, k);
   nn := n;
   for i := 1 to n do
   begin
      read(a[i]);
      d[i] := a[i];
   end;
   for i := 1 to n - 1 do
      for j := 1 to n - i do
         if a[j] > a[j + 1] then begin
            c := a[j];
            a[j] := a[j + 1];
            a[j + 1] := c;
         end;
   while (nn > k)  do
    begin
     for i := 1 to nn - 1 do
      a[i] := a[i + 1];
        dec(nn,2);       
     end;   
 for i := 1 to nn do
  write(poisk(a[i]),' ');
close(f1);
close(f2)  
end.