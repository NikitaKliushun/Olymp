{Скоморощенко Александр Игоревич, Борисов, 9, 2}
program T2Z2N601;
var
  a,b:array[1..100000] of longint;
  min,min_i,n,k,i:longint;

procedure qsort(l,h:longint);
 var
   i,j,m,t:longint;
 begin
   m:=(l+h) div 2;
   i:=l;
   j:=h;
   repeat
     while a[i]<a[m] do i:=i+1;
     while a[j]>a[m] do j:=j-1;
     if i<=j then
      begin
        t:=a[i];
        a[i]:=a[j];
        a[j]:=t;
        t:=b[i];
        b[i]:=b[j];
        b[j]:=t;
        i:=i+1;
        j:=j-1;
      end;
   until i>j;
   if i<h then qsort(i,h);
   if j>l then qsort(l,j);
 end;

procedure search;
 var
 i,j:longint;
 begin
   i:=1-1;
   j:=k-1;
   min:=a[j+1]-a[1];
   min_i:=1;
   while j<n do
    begin
      i:=i+1;
      j:=j+1;
      if a[j]-a[i]<min then
      begin
        min:=a[j]-a[i];
        min_i:=i;
      end;
    end;
 end;

begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

    readln(n,k);
    for i:=1 to n do
     begin
       read(a[i]);
       b[i]:=i;
     end;

    qsort(1,n);
    search;
    writeln(k);
    for i:=min_i to min_i+k-1 do write(b[i],' ');

  close(input);
  close(output);
end.