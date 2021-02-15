//Shlyakhov Yan Antonovich,Sluck,8,1
program sort;
var
 a:array[0..101]of longint;
 n,k,i,m,c,j:longint;
 x:byte;
begin
  assign(input,'input.txt');reset(input);
  assign(output,'output.txt');rewrite(output);
    readln(n,k);
    m:=0;
    for i:=1 to 100 do a[i]:=0;
    for i:=1 to n do
      begin
        read(x);
        a[x]:=a[x]+1;
      end;
    for i:=1 to 100 do
     begin
      if a[i] mod k=0 then
        begin
         c:=c+1;
         m:=m+a[i]div k;
         a[i]:=a[i] div k;
        end
       else
        if a[i]>=k then
           begin
             c:=c+1;
             m:=m+a[i]div k;
             a[i]:=a[i]-a[i] mod k;
             a[i]:=a[i]div k;
           end
         else
         begin
          write('0');
          exit;
         end;
     end;
    writeln(m);
   for i:=1 to 100 do
     for j:=1 to a[i] do
        write(i,' ');
  close(input);close(output);
end.