{Чечётко Александр}
program z11;
 var a,b,c,d:array[1..1000] of longint;
     f:text;
     i,j,n,k,dop,kol,min,sum,p:longint;
 procedure indata;
  begin
   assign(f,'input.txt');
   reset(f);
   readln(f,n,k);
   for i:=1 to n do
   begin
   read(f,a[i]);
   b[i]:=a[i];
   end;
   close(f);
  end;

Begin
 indata;
   for i:=1 to n-1 do
    for j:=1 to n-1 do
     begin
     if b[j]>b[j+1] then begin
                          dop:=b[j];
                          b[j]:=b[j+1];
                          b[j+1]:=dop;
                         end;
        end;
   for i:=1 to n-1 do
    c[i]:=b[i+1]-b[i];

     for j:=0 to k-2 do
      begin
       p:=1;
       min:=min+c[1+j];
      end;

   for i:=2 to n-1 do
    begin
     for j:=0 to k-2 do
      begin
       sum:=sum+c[i+j];
      end;
     if sum<min then begin
                      min:=sum; sum:=0;
                      p:=i;
                     end;
    end;
     j:=1;
   for i:=p to p+k-1 do
    begin
       d[j]:=b[i];
       inc(j);
    end;

  assign(f,'output.txt');
   rewrite(f);

   for i:=1 to n do
    for j:=1 to k do
     begin
      if a[i]=d[j] then begin inc(kol); break; end;
     end;
     writeln(f,kol);
    for i:=1 to n do
    for j:=1 to k do
     begin
      if a[i]=d[j] then begin write(f,i,' '); break; end;
     end;
  close(f);


End.
