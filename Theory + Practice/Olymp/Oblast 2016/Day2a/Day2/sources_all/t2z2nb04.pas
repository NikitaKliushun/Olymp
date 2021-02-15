//Shlyakhov Yan Antonovich, Slutchina, 9b, 2
program asd;
var  m,n,i,j,minpos:integer;
     min,pred:longint;
     rez:boolean;
     h,b:array[-10..3010]of longint;
     otv:array[0..3010]of integer;

procedure sort(l,r:longint);
var buff,x:integer;
begin
  i:=l; j:=r; x:=otv[l+random(r-l)+1];
  while i<=j do
    begin
      while otv[i]<x do inc(i);
      while otv[j]>x do dec(j);
      if i<=j then
        begin
          buff:=otv[i];
          otv[i]:=otv[j];
          otv[j]:=buff;
          inc(i); dec(j);
        end;
    end;
  if i<r then sort(i,r);
  if l<j then sort(l,j);
end;

begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
    readln(m,n);
    rez:=true;
    for i:=1 to m do read(h[i]);
    for i:=1 to n do read(b[i]);
    pred:=0;
    for i:=1 to m do
      begin
        min:=maxlongint;
        minpos:=-1;
        for j:=1 to n do
          begin
            if b[j]<>-1 then
              begin
                if (h[i]+b[j]>pred)and(min>h[i]+b[j])then
                  begin
                    min:=h[i]+b[j];
                    minpos:=j;
                  end;
              end;
          end;
        if minpos=-1 then
          begin
            rez:=false;
          end;
        b[minpos]:=-1;
        otv[i]:=minpos;
        pred:=min;
      end;
    if rez then
      begin
        sort(1,m);
      end;
    if rez then
      for i:=1 to m do write(otv[i],' ')
        else write(-1);
  close(input); close(output);
end.
