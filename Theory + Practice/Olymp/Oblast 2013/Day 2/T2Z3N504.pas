{Чечётко Александр}
program z11;
 var a,b:array[1..10000] of longint;
     f:text;
     i,j,n,k,kol,m,p,x1,x2:longint;
 procedure indata;
  begin
   assign(f,'input.txt');
   reset(f);
   readln(f,n,m);
   for i:=1 to n do
     b[i]:=i;
   for i:=1 to m do
    begin
     readln(f,x1,x2);
     if b[x1]<b[x2] then begin
                          p:=b[x2];
                          b[x2]:=b[x1];
                          for j:=1  to n do
                           if p=b[j] then b[j]:=b[x1];
                         end
              else begin
                    p:=b[x1];
                    b[x1]:=b[x2];
                    for j:=1  to n do
                           if p=b[j] then b[j]:=b[x2];
                   end;
    end;
   close(f);
  end;
 procedure outdata;
  begin
   assign(f,'output.txt');
   rewrite(f);
   writeln(f,kol);
   close(f);
  end;
  


 Begin
  indata;

   while b[1]=b[i] do
    inc(i);
    p:=i;
    
   for i:=1 to p-1 do
    begin
     for x2:=p to n do
      begin
       if ((i+x2) mod 2=0) and (b[i]<>b[x2]) then kol:=kol+0
                           else kol:=kol+1;



      end;

    end;

  outdata;
 End.