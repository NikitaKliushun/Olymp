{Небожин Максим Михайлович. г. Борисов. 10 класс. задача -2}
 var a:array[1..100000] of int64;
     b:array[1..100000] of longint;
     min,minpos,i,ip,n,k:longint;




 procedure qsort;

    procedure sort(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]<x do
            inc(i);
           while x<a[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;


                   y:=b[i];
                b[i]:=b[j];
                b[j]:=y;                         {rebuild here}
                 inc(i);
                j:=j-1;


             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;

    begin
       sort(1,n);
    end;





begin
  assign(input,'input.txt');
   reset(input);
     read(n,k);
     for ip:=1 to n do
      begin
        read(a[ip]);
        b[ip]:=ip;
      end;
   close(input);

  qsort;


  {
   writeln;
    for i:=1 to n do
     begin
       write(a[i],'(',b[i],')');
     end;
           writeln;
  }







  min:=a[n];
  minpos:=0;
  for i:=1 to n-k do {or n-k+1??}
   begin
     if a[i+k-1]-a[i]<min
      then                                  {find mistake here!!}
       begin
         minpos:=i;
         min:=a[i+k-1]-a[i];
       end;
   end;





  assign(output,'output.txt');
   rewrite(output);
     writeln(min);
     for i:=minpos to minpos+k-1 do
      begin
        write(b[i],' ');
      end;





   close(output);
end.




