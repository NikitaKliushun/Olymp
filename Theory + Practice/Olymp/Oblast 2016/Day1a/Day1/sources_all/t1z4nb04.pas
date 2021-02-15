//Shlyakhov Yan Antonovich, Slutchina, 9b, 4
program asd;
var a:array[0..3,0..1100]of integer;
    n,k,i,j,rez:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
    readln(n,k);
    if n=1 then write(0) else
    if (n<=2)then
    begin
    for i:=1 to n do
      for j:=1 to k do
        read(a[i,j]);
    rez:=100000;
    for i:=1 to k do
      begin
        for j:=1 to k do
          if a[1,i]=a[2,j]then
            begin
              if abs(i-j)<rez then rez:=abs(i-j);
              if (i=1)and(j=k) then if rez>1 then rez:=1;
              if (i=k)and(j=1) then if rez>1 then rez:=1;
            end;
      end;
    if rez=100000 then write(-1)
    else write(rez);
    end
    else write(0);

  close(input); close(output);
end.
