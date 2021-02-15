//Shlyakhov Yan Antonovich, Slutchina, 9b, 1
program asd;
var m,w,s,b,t,i,rez,bb,j,k:integer;
    d,a:array[0..100010]of integer;

begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
    readln(m,w);
    for i:=1 to m do
      begin
        read(d[i]);
      end;
    readln(s,b,t);
    a[1]:=s;
    for i:=1 to m do
      begin
        bb:=d[i]-(w-a[i]+1);
        while bb>w do
          bb:=bb-w;
        if i+1<=m then
          if bb+1>w then a[i+1]:=1
            else a[i+1]:=bb+1;
      end;
    k:=b;
    for i:=t downto 1 do
      begin
        if k=1 then k:=w
          else dec(k);
      end;
    k:=k+1;
    for i:=1 to m do
      begin
        if (a[i]=k)and(d[i]>=t) then inc(rez);
      end;
   writeln(rez);
  close(input); close(output);
end.
