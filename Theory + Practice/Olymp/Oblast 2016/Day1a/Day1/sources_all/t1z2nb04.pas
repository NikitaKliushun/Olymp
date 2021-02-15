//Shlyakhov Yan Antonovich, Slutchina, 9b,2
program asd;
var
k,count,i,j,kol,maxdlin,ymn:longint;
y,rez,nrez:int64;
a,b:array[0..32]of byte;

procedure search;
begin
  nrez:=rez;
  maxdlin:=count+1;
  while kol<=k do
    begin
      inc(kol);
      nrez:=0;
      inc(b[count+1]);
      for i:=count+1 to 30 do
        if b[i]>1 then
          begin
            b[i+1]:=b[i+1]+1;
            b[i]:=0;
            if i+1>maxdlin then inc(maxdlin)
          end;
      for i:=1 to maxdlin do
      begin
        ymn:=2;
        for j:=1 to i-2 do ymn:=ymn*2;
        nrez:=nrez+b[i]*ymn;
      end;

      write(nrez,' ');
    end;
end;

procedure start;
var x:int64;
begin
  x:=y;
  while x>0 do
    begin
      inc(count);
      a[count]:=x mod 2;
      x:=x div 2;
    end;
  for i:=1 to count do
    b[i]:=a[i];
end;

begin
  assign(input,'input.txt');reset(input);
  assign(output,'output.txt');rewrite(output);
    read(k,y);
   // stap(y);
   // writeln(bliz_stap);
  if k=1 then write(y)
  else
  if y=0 then
  begin
    for i:=1 to k do
      write(i-1,' ');
  end
  else
  if (y and (y+1)=0) then write(-1)
  else

  begin
    count:=0;
    start;
    rez:=0;
    for i:=1 to count do
      begin
        ymn:=2;
        for j:=1 to i-2 do ymn:=ymn*2;
        rez:=rez+a[i]*ymn;
      end;
    write(rez,' ');
    kol:=1;
    search;
  end;
  close(input);close(output);
end.
