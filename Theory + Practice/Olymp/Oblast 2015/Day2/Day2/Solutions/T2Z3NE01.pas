var ksp,cf:array[0..3]of byte;
    dl,k,n,ans,p,tek:longint;
    f:text;
begin
assign(f,'input.txt');
reset(f);
readln(f,dl,k);
read(f,n);
close(f);
assign(f,'output.txt');
rewrite(f);
if dl=1 then 
        begin
         if (n=1)and(k>=2) then ans:=2; 
         if (n=2)and(k>=2) then ans:=2; 
         if (n=2)and(k>=3) then ans:=3; 
         if (n=3)and(k>=2) then ans:=3;
         if (n=4)and(k>=2) then ans:=2;
         if (n=4)and(k>=3) then ans:=2;
         if (n=5)and(k>=2) then ans:=3;
         if (n=6)and(k>=2) then ans:=2;   
         if (n=6)and(k>=4) then ans:=3;
         if (n=7)and(k>=2) then ans:=2; 
         if n=8 then ans:=0;
         if (n=9)and(k>=2) then ans:=2;
         if (n=9)and(k>=4) then ans:=3;
         if n=0 then ans:=0; 
        end;
write(f,ans);
close(f);
end.