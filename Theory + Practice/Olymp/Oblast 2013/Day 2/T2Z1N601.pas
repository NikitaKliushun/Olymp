{Скоморощенко Александр Игоревич, Борисов, 9, 1}
program T2Z1N601;
var
  a,p:array[1..100] of integer;
  n,k,sum,i:integer;


procedure plus(in_t:longint);
 var
   j,t,i:integer;
 begin
   t:=in_t;
   i:=1;
   while t<>0 do
    begin
      if a[i]<>p[i] then
       begin

         if p[i]-a[i]<t then
          begin
            for j:=1 to p[i]-a[i] do writeln(i);
            t:=t-(p[i]-a[i]);
          end

         else
          begin
            for j:=1 to t do writeln(i);
            t:=0;
          end;

       end;
      i:=i+1;
    end;
 end;

procedure minus(in_t:longint);
 var
   j,t,i:integer;
 begin
   t:=in_t;
   i:=1;
   while t<>0 do
    begin
      if a[i]<>0 then
       begin

         if a[i]<t then
          begin
            for j:=1 to a[i] do writeln(-i);
            t:=t-(a[i]);
          end

         else
          begin
            for j:=1 to t do writeln(-i);
            t:=0;
          end;

       end;
      i:=i+1;
    end;
 end;


begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

    readln(n,k);
    sum:=0;
    for i:=1 to n do
     begin
       readln(a[i],p[i]);
       sum:=sum+a[i];
     end;

    writeln(abs(k-sum));
    if sum<k then plus(k-sum)
    else if sum>k then minus(sum-k)
    else if sum=k then write(0);


  close(input);
  close(output);
end.