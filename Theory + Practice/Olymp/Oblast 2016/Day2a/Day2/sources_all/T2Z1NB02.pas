//Белько Руслан Александрович, г. Молодечно, 9 "А", задача N1
program T2Z1NB02;
var
  f1,f2:text;
  m,w,s,b,t,i,x,z,k:longint;
  d:array[1..100000] of longint;
begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  rewrite(f2);
  readln(f1,m,w);
  k:=0;

  for i:=1 to m do
        read(f1,d[i]);
  readln(f1);
  read(f1,s,b,t);

  x:=s;
  z:=b-x+1;
  while z<d[1] do
        begin
        if z=t then
                begin
                k:=k+1;
                break;
                end;
        z:=z+w;
        end;


  for i:=1 to m-1 do
        begin
        x:=(x+d[i]) mod w;
        z:=b-x+1;
        while z<d[i+1] do
                begin
                if z=t then
                        begin
                        k:=k+1;
                        break;
                        end;
                z:=z+w;
                end;
        end;

  write(f2,k);
  close(f1);
  close(f2);
end.
