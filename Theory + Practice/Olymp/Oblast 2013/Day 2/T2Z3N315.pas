var

 n,i,m,c,k,j:longint;
 x:array[1..20000] of longint;
 y:array[1..20000] of longint;
begin
assign(input,'in.txt');
reset(input);
assign(output,'out.txt');
rewrite(output);

    read(n,m);
     for i:=1 to m do
      read(x[i],y[i]);
      c:=n div 2;



          if c mod 2=0 then k:=((n+c)-i)-2 else
 k:=(n+c)-i;

         if m=0 then
            if c mod 2=0 then k:=(n+c)-2 else k:=(n+c);










 write(k);


  close(output);
  close(input);

end.
