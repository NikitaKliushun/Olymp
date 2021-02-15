//Козелько Никита Сергеевич, 11 класс, город Солигорск, задача 2
var ans:int64;
    i, d, k, n:int64;
    bool:boolean;
    //a:array[1..100000000] of int64;

{procedure perenos;
 begin
 e:=10000;
 for i:=1 to st do
  begin
  a[i+1]:=a[i] div e;
  a[i]:=a[i] mod e;
  end;
 while (a[st+1]>0) do
  begin
  inc(st);
  a[st+1]:=a[st] div e;
  a[st]:=a[st] mod e;
  end;
 end;

procedure st(x:longint);
 var xx:int64;
 begin
 st:=0;  e:=10000; xx:=x;
 while (x mod e)<>0 do
  begin
  inc(st);
  a[st]:=x mod e;
  x:=x div e;
  end;
 for i:=1 to st do
  a[i]:=a[i]*xx;
 perenos;
 for i:=1 to st do
  a[i]:=a[i]*xx;
 perenos;
 end;}

begin

assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);

readln(n);
d:=n;
i:=2;
ans:=1; bool:=true;
while (i*i<=n) do
 begin
 k:=0;
  while (d mod i=0) do
   begin
   inc(k);
   d:=d div i;
   bool:=false;
   end;
 case (k mod 3) of
 1: ans:=ans*i*i;
 2: ans:=ans*i;
 end;
 inc(i);
 end;

if bool then begin
             {st(d);
             for i:=1 to k do
              begin
              write(a[i])
              end;}
             ans:=n*n;
             writeln(ans);
             end
        else writeln(ans);

close(input); close(output);

end.
