 {Карнаух Максим Михайлович, T1Z3NA12}
 program T1Z3NA12;
 var f1,f2:text; n,i,j,max,odn,dva:longint;
 a:array[1..10000] of byte;
 begin
 assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 read(f1,n);
 for i:=1 to n do read(f1,a[i]);

 j:=0;
 i:=1;
 odn:=0;
 dva:=0;

   while a[i]=1 do begin j:=j+1; i:=i+1; end;
   while a[i]=2 do begin j:=j+1; i:=i+1; end;

   max:=j;
   j:=0;
   i:=1;

   while a[i]=2 do begin j:=j+1; i:=i+1; end;

   if j>max then max:=j;
   j:=0;

   for i:=1 to n do
   begin
   if a[i]=1 then odn:=odn+1;
   if a[i]=2 then dva:=dva+1;
   end;

   if odn>max then max:=odn;
   if dva>max then max:=dva;



 write(f2,max);

 close(f1);
 close(f2);
 end.
