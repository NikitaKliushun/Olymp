//Shlyakhov Yan Antonovich, Slutchina, 9b, 3
program asd;
var a:array[0..101]of integer;
    b:array[0..100001]of smallint;
    rez:array[0..100001]of integer;
    n,i,x,max,best,otv,mest,r,start:longint;

begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt');rewrite(output);
    readln(n);
    for i:=1 to 100 do a[i]:=0;
    for i:=1 to n do
      begin
        read(b[i]);
        inc(a[b[i]]);
        rez[i]:=a[b[i]];
      end;
    if n=1 then write(1)
    else
    if n=2 then write(2)
    else
    begin
    max:=rez[1];
    best:=b[1];
    mest:=1;
    for i:=1 to n do
      begin
        if rez[i]>=max then
          begin
            max:=rez[i];
            best:=b[i];
            mest:=i;
          end;
      end;
    start:=0;
    for i:=1 to n do
      if (b[i]=best)and(rez[i]=1)then start:=i;
    for i:=1 to 100 do
      if a[i]=1 then inc(r);

    for i:=1 to mest do
      begin
        if (rez[i]>1)and(b[i]<>best) then
          a[b[i]]:=0;
      end;
    for i:=start+1 to mest-1 do
      begin
        if b[i]<>best then a[b[i]]:=0;
      end;
    for i:=1 to 100 do
     begin
       if i=best then otv:=otv+a[i];
       if a[i]=1 then otv:=otv+a[i];
     end;
    if r>otv then write(r)
    else write(otv);
    end;
  close(input);close(output);
end.
