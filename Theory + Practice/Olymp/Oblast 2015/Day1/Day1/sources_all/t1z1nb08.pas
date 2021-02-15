Program t1z1;
var  f1,f2: text;
     w: array[1..5001] of integer;
     a: array[1..2501] of integer;
     c: array[1..2501] of integer;
     i,b,n,m,j,f,d,r,t,p: integer;
     k: longint;
     label 1,2;
Begin
     assign(f1,'input.txt');
     assign(f2,'output.txt');
     reset(f1);
     rewrite(f2);
     read(f1,n,k);
     if k=0 then begin
                   write(f2,0);
                   goto 2;
                 end;
     for i:= 1 to n do
     read(f1,w[i]);
     i:= 1;
     while i<=n do
     begin
       if (w[i]>w[i+1]) and (w[i+1]<>0) then begin
                             b:= w[i];
                             w[i]:= w[i+1];
                             w[i+1]:= b;
                             i:= 1;
                           end;
       i:= i+1;
     end;
     r:= 0;
     m:= 0;
     {for i:= 1 to n do
     write(f2,w[i],' ');}
     f:= 1;
     i:= 1;
     j:= 1;
     while (r<>1) do
     begin
        while w[i]=w[i+1] do
       begin
         a[j]:= a[j]+1;
         i:= i+1;
       end;
         if w[i+1]=0 then r:= 1;
         c[f]:= w[i];
         i:= i+1;
         j:= j+1;
         f:= f+1;
     end;
     {for i:= 1 to f-1 do
     write(f2,a[i],' ');}
     t:= 1;
     m:= 1;
     for i:= 1 to f-1 do
     begin
       r:= a[i]+1;
       if r>=k then b:= r mod k
              else goto 1;
       if b=0 then begin
                                b:= r div k;
                                d:= d+b;
                                for j:= 1 to b do
                                begin
                                w[t]:= c[i];
                                t:= t+1;
                                end;
                              end
              else begin
                     while (r mod k)<>0 do
                     r:= r-1;
                     b:= r div k;
                     d:= d+b;
                     for j:= 1 to b do
                     begin
                     w[t]:= c[i];
                     t:= t+1;
                     end;
                   end;
   1:end;
     writeln(f2,d);
     if d>0 then
     begin
     for i:= 1 to d do
     write(f2,w[i],' ');
     end;
   2:close(f2);
     close(f1);
end.
