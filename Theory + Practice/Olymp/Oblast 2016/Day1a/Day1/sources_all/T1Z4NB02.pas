//Белько Руслан Александрович, г. Молодечно, 9 "А", задача N4
program T1Z4NB02;
var
  f1,f2:text;
  m:array[1..100,1..100] of byte;
  n,k,i,j,kn,zj:byte;
begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  rewrite(f2);
  readln(f1,n,k);

  for i:=1 to n do
        begin
        for j:=1 to k do
                read(f1,m[i,j]);
        readln(f1);
        end;

  for i:=1 to k do
        if m[1,i]=m[2,i] then
                begin
                kn:=2; zj:=2;
                while m[zj,i]=m[zj+1,i] do
                        begin
                        kn:=kn+1;
                        zj:=zj+1;
                        end;
                end;
  if kn=n then
        begin
        write(f2,'0');
        close(f1);
        close(f2);
        exit;
        end;

  close(f1);
  close(f2);
end.