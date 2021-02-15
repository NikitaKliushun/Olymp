program z1; { Шпилевский владислав 8а класс задача 1}
  var  a:array[1..101] of longint;
   l,  v,summa,cc, n,i,j:longint; input,output:text;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
read(input,n);
  for i:=1 to n do
    read(input,a[i]);

  for i:=1 to n do
   begin
   for j:=2 to n do
    begin
      if i>j then  j:=i+1;
       if a[i]<a[j] then begin
                        cc:=a[i];
                        a[i]:=a[j];
                        a[j]:=cc;

                        end;
    end;

  end;  cc:=0;
    for i:=1 to (n div 2) do
     begin
      cc:=cc+a[i];
      a[i]:=0;

     end;

   for i:=1 to n do
      summa:=summa+a[i];

     v:=cc-summa;
    write(output,v,' ');


close(input);
close(output);

End.
