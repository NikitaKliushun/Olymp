var
i,n,v,k,m,j:longint;
a,p,x:array[1..20000] of longint;



begin
  assign(input,'in.txt');
  reset (input);
  assign (output,'out.txt');
  rewrite(output);



read (n,k);
for i:=1 to n do
 read(a[i],p[i]);

  for i:=1 to n do
   v:=v+p[i]-a[i];

       if v=0 then v:=1;



        writeln(v);


    for i:=1 to k do

    begin
    if v>1 then    begin
      for j:=1 to p[i] do
      writeln(p[i]);    end

      else begin write(1); break;end;
    end;














    close(input);
    close(output);




end.