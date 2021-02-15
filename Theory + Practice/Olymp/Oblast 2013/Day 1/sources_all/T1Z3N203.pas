 program z1;
 var a:array[1..100,1..100]of char;
     f:text;
     n,m,i,j,i1,i2,j1,j2,ans:longint;
     s1,s2:string;
 begin
 assign(f,'input.txt');
 reset(f);
 readln(f,n,m);
 for i:=1 to n do
  begin
   for j:=1 to m do
    begin
     read(f,a[i,j]);
    end;
   readln(f);
  end;
 close(f);
 if n<m then n:=m;
 for i1:=1 to n-1 do
  for j1:=1 to n-1 do
   begin
    for i2:=i1 to n do
     for j2:=j1+1 to n do
      begin
       s1:='';s2:='';
      for i:=i1 to i2 do
        begin
         s1:=s1+a[j1,i];
         s2:=s2+a[j2,i];
        end;
       if s1=s2 then ans:=ans+1;
      end;
   end;
assign(f,'output.txt');
rewrite(f);
write(f,ans+1);
close(f);
end.