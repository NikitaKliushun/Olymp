var a:array[1..10] of longint;
    b:array[0..11,0..11]of longint;
    s:array[0..11]of string;
    i,j,t,k,u,n,x,y:longint;
    c:char;
procedure vv;
   begin close(input); close(output); end;
procedure vvod;
   begin
   for i:=1 to 10 do
   begin
   readln(s[i]);
   for j:=1 to 10 do
      if s[i][j]='#' then inc(k);
   end;
   end;
procedure bbb1;
   begin
   for i:=1 to 10 do
   for j:=1 to 10 do
      if (s[i][j]='#')and(b[i,j]=0) then
         begin
         t:=1;
         inc(u);
         b[i,j]:=u;
         inc(a[u]);
         while (s[i+t][j]='#') and (i+t<=10) do
            begin b[i+t,j]:=u; inc(t); inc(a[u]);end;
         t:=1;
         while (s[i-t][j]='#') and (i-t>=1) do
            begin b[i-t,j]:=u; inc(t); inc(a[u]);end;
         t:=1;
         while (s[i][j+t]='#') and (j+t<=10) do
            begin b[i,j+t]:=u; inc(t); inc(a[u]);end;
         t:=1;
         while (s[i][j-t]='#') and (j-t>=1) do
            begin b[i,j-t]:=u; inc(t); inc(a[u]);end;
         end;
   end;
begin
assign(input,'input.txt'); reset(input); assign(output,'output.txt');rewrite(output);
vvod;
bbb1;
readln(n);
for i:=1 to n do
   begin
   readln(x,c,c);
   case c of
      'a':y:=1;
      'b':y:=2;
      'c':y:=3;
      'd':y:=4;
      'e':y:=5;
      'f':y:=6;
      'g':y:=7;
      'h':y:=8;
      'i':y:=9;
      'k':y:=10;
      end;
   if b[x,y]>0 then
      if k=1 then begin writeln('GAME OVER'); vv; halt; end
             else if a[b[x,y]]>1
                        then begin
                             writeln('HIT');
                             dec(a[b[x,y]]);
                             dec(k);
                             b[x,y]:=b[x,y]*-1;
                             end
                        else begin
                             writeln('DEAD');
                             dec(k);
                             b[x,y]:=b[x,y]*-1;
                             end else
      writeln('MISS');
   end;
vv;
end.

