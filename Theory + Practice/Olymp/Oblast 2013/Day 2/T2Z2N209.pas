var a,b:array[1..100000] of longint;
    j,i,n,k,m,min,d,l,r:longint;
    f:boolean;
procedure qsort(l,r:longint);
  var i,j,x,t:longint;
  begin
    i:=l; j:=r; x:=a[l+random(r-l+1)];

    repeat
      while a[i]<x do
        inc(i);

      while a[j]>x do
        dec(j);

      if i<=j then begin
                     t:=a[i];
                     a[i]:=a[j];
                     a[j]:=t;

                     t:=b[i];
                     b[i]:=b[j];
                     b[j]:=t;

                     inc(i);
                     dec(j);
                   end;

    until i>j;

    if l<j then qsort(l,j);
    if i<r then qsort(i,r);
  end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);


  read(n,k);

  for i:=1 to n do
    begin
      read(a[i]);
      b[i]:=i;
    end;

  qsort(1,n);

  min:=a[n]-a[1];

  m:=n; d:=1;  f:=true;

  if m-k>=2 then begin
                   while (m-k>=2) and f do
                     begin
                       if a[m-1]-a[d+1]<min
                         then begin
                                min:=a[m-1]-a[d+1];
                                a[m]:=0;
                                a[d]:=0;
                                dec(m);
                                inc(d);
                              end
                         else f:=false;
                     end;

                   writeln(m-d+1);

                   for i:=d to m do
                     write(b[i],' ');
                 end
            else begin
                   if n-k=1 then begin
                                   r:=m; l:=d;

                                   if a[m-1]-a[d]<min
                                     then begin
                                            r:=r-1;
                                            min:=a[m-1]-a[d];
                                          end
                                     else if a[m]-a[d+1]<min
                                            then begin
                                                   l:=l+1;
                                                   min:=a[m]-a[d+1];
                                                 end;

                                   writeln(r-l+1);
                                   for i:=l to r do
                                     write(b[i],' ');
                                 end
                            else if m=k then begin
                                               writeln(m);
                                               for i:=1 to n do
                                                 write(i,' ');
                                             end;
                 end;

  close(input);
  close(output);
end.