Program T2Z1NB11;{Матвиевич Егор Сергеевич г.Солигорск}
var i,m,w,s,b,t,k,x,j,y,c:longint;
a:array[1..100000]of longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
readln(m,w);
  for i:=1 to m do
  read(a[i]);
  readln;
  read(s,b,t);
     k:=0;
       i:=1;x:=s;
       while i<=m do
        begin
        j:=1;
         if a[i]<t then begin
         inc(i);
           y:=t-a[j];
           c:=y mod w;
            if x+c>w then x:=x+c-w
            else x:=x+c;
         end
          else
          begin
           y:=t-j;
             c:=y mod w;
             if x+c>w then x:=x+c-w
             else x:=x+c;
              if x=b then inc(k);
              inc(i);
          end;
        end;
        write(k);
close(input);close(output);
end.