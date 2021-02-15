Program t1z3;
var  f1,f2: text;
     a: array[1..100000] of longint;
     b: array[1..100000] of longint;
     c: array[1..10000000] of byte;
     d: array[1..10000000] of byte;
     i,k,n,m,t,p: longint;
     sum1,sum2,c1,d1,rez: int64;
Begin
     assign(f1,'input.txt');
     assign(f2,'output.txt');
     reset(f1);
     rewrite(f2);
     read(f1,n,m);
     for i:= 1 to n do
     begin
     read(f1,a[i]);
     sum1:= sum1+a[i];
     end;
     for i:= 1 to m do
     begin
     read(f1,b[i]);
     sum2:= sum2+b[i];
     end;

     t:= 1;
     p:= 1;
     for i:= 1 to n do
     begin
       for k:= t to a[i] do
       begin
         if (i mod 2)=0 then c[p]:= 0
                        else c[p]:= 1;
         p:= p+1;
       end;
       if k=a[i] then t:= a[i];
     end;


     t:= 1;
     p:= 1;
     for i:= 1 to m do
     begin
       for k:= t to b[i] do
       begin
         if (i mod 2)=0 then d[p]:= 0
                        else d[p]:= 1;
         p:= p+1;
       end;
       if k=b[i] then t:= b[i];
     end;

     if sum1>=2 then c1:= c[1]*10+c[2]
                else c1:= c[1];
     i:= 2;
     while i<sum1 do
     begin
       c1:= c1*10+c[i+1];
       i:= i+1;
     end;

     if sum2>=2 then d1:= d[1]*10+d[2]
                else d1:= d[1];
     i:= 2;
     while i<sum2 do
     begin
       d1:= d1*10+d[i+1];
       i:= i+1;
     end;
     rez:= c1 XOR d1;

     i:= 1;
     while rez>0 do
     begin
       a[i]:= rez mod 10;
       rez:= rez div 10;
       i:= i+1;
     end;
     p:= i-1;
     {for i:= p downto 1 do
     write(f2,a[i],' ');}

     k:= 1;
     for i:= 1 to p do
     c[i]:= 1;
     i:= p;

     while i>1 do
     begin
       if a[i]= a[i-1] then begin
                             c[k]:= c[k]+1;
                            end
                       else k:= k+1;
       i:= i-1;
     end;
     for i:= 1 to k do
     write(f2,c[i],' ');
     close(f2);
     close(f1);
end.
