program z2;
var

  i,k,p,j,sh:longint;
  dp:extended;
  d:int64;

  f1,f2:text;


begin
   assign(f1,'input.txt');
   reset(f1);
   assign(f2,'output.txt');
   rewrite(f2);

   p:=0;
   read(f1,d);
   sh:=d;
      k:=0;

   for j:= 1 to 1000000 do
   begin
     inc(k);

     for i:= 1 to d do
       begin
          dp:= d / i;
          if sqrt(dp)=i then begin  p:=1; break; end else p:=0;
       end;
     if p=1 then begin writeln(f2,k);  break; end else d:=d+sh;
    end;

   close(f1);
   close(f2)



end.
