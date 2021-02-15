program zzz;
 var a:array [1..400,1..400] of byte;
 i,j,n,m,n1,k,an,ans,res,i1,j1,i2,j2:longint;
 c:char;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);

 readln(n,m);

 for i:=1 to n do
   begin
    for j:=1 to m do
    begin
      read(c);
      a[i,j]:=ord(c)-ord('0');
    end;
    readln;
   end;

 res:=0;
 for i1:=1 to n-1 do
  for j1:=1 to m do
   for i2:=i1+1 to n do
    for j2:=j1 to m do
    begin
     if (i2-i1+1) mod 2=0 then
       begin
        n1:=i2 div 2;
        k:=i2-i1;
        ans:=0;
        for i:=1 to n1 do
        begin
         an:=0;
         for j:=j1 to j2 do
         if a[i+i1-1,j]=a[i+i1-1+k,j] then inc(an);
         k:=k-2;
         if an=(j2-j1+1) then inc(ans);
        end;
        if ans=n1 then inc(res);
       end
     else begin
        n1:=(i2-1) div 2;
        k:=i2-i1;
        ans:=0;
        for i:=1 to n1 do
        begin
         an:=0;
         for j:=j1 to j2 do
         if a[i+i1-1,j]=a[i+i1-1+k,j] then inc(an);
         k:=k-2;
         if an=(j2-j1+1) then inc(ans);
        end;
        if ans=n1 then inc(res);
     end;

    end;


 write(res);

 close(input);
 close(output);
end.
