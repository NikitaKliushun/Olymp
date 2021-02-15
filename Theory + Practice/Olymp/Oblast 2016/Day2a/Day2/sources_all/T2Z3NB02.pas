//Белько Руслан Александрович, г. Молодечно, 9 "А", задача N3
program T2Z3NB02;
var
  f1,f2:text;
  n,i,km,max,x,l,sum:longint;
  k,p:byte;
  d:array[1..100000] of longint;
  me:array[0..100000] of byte;
begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  rewrite(f2);
  readln(f1,n,k);
  max:=0; p:=0;
  km:=1; me[1]:=1;

  for i:=1 to n do
        read(f1,d[i]);

  for i:=2 to n do
        if d[1]>d[i] then me[i]:=1;

  while p=0 do
        begin
        x:=d[1];
        l:=1;
        km:=1;
        sum:=0;
        for i:=2 to n do
                if (x<d[i]) and (me[i]=0) then
                        begin
                        km:=km+1;
                        x:=d[i];
                        l:=i;
                        end;

        me[l]:=1;
        for i:=1 to n do
                if me[i]=1 then sum:=sum+1;
        if km>max then
                begin
                max:=km;
                end;
        if sum=n then p:=1;
        end;

  write(f2,max);
  close(f1);
  close(f2);
end.
