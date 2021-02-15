var i,n,k,j,max,ans:longint;
    A,B:array[1..1000] of longint;
    f,f1:text;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,n,k);
    for i:=1 to n do
      read(f,A[i]);
    close(f);  
    for i:=1 to n do
      B[i]:=0;
    for i:=1 to n do
      begin
      max:=0;
      for j:=A[i]-1 downto 1 do
        if B[j]>max then max:=B[j];
      B[A[i]]:=max+1;
      end;
   ans:=0;   
   for i:=1 to n do
    if B[i]>ans then ans:=B[i];
   assign(f1,'output.txt');
   rewrite(f1);
   write(f1,ans);
   close(f1);
   end.