//Boben Vyachaslav Gymnasia 3 8 klass Borisov
var f1,f2:text;
    n,m,i,j,k,max,min:integer;
    h:array[1..3000] of longint;
    b:array[1..3000] of longint;

begin
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);

readln(f1,m,n);

for i:=1 to m do
  read(f1,h[i]);
readln(f1);

for i:=1 to n do
  read(f1,b[i]);

if m=2
  then
    begin
      for i:=1 to n-1 do
        for j:=i+1 to n do
          begin
            if (h[1]+b[i])<(h[2]+b[j])
              then
                begin
                  writeln(f2,i,' ',j);
                  close(f2);
                  exit();
                end;
          end;
      writeln(f2,'-1');

    end;

if m=3
  then
    begin
      for i:=1 to n-2 do
        for k:=i+1 to n-1 do
          for j:=i+2 to n do
            begin
              if ((h[1]+b[i])<(h[2]+b[k]))and((h[2]+b[k])<(h[3]+b[j]))
                then
                  begin
                    writeln(f2,i,' ',k,' ',j);
                    close(f2);
                    exit();
                  end;
            end;
      writeln(f2,'-1');

    end;
//}

close(f1);
close(f2);
end.
