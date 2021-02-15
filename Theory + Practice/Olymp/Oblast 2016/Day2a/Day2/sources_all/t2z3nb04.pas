//Shlyakhov Yan Antonovich, Slutchina, 9b, 3
program asd;
var a:array[0..100100]of longint;
    n,k ,i,j,cc,pos,min,rez,poss:longint;
    flag:boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
    readln(n,k);
    for i:=1 to n do read(a[i]);
    for cc:=1 to k do
      begin
        if cc mod 2 =0 then
          begin
            pos:=n;
            poss:=n;
            min:=1000000;
            flag:=true;
            while flag do
              begin
                flag:=false;
                for i:=poss downto 1 do
                  if (a[i]<min)and(a[i]<>-1) then
                    begin
                      min:=a[i];
                      pos:=i;
                      flag:=true;
                    end;
                a[pos]:=-1;
                min:=1000000;
                poss:=pos;
              end;
          end;
        if cc mod 2<>0 then
          begin
            pos:=-11;
            poss:=1;
            min:=1000000;
            while pos<n do
              begin
                for i:=poss to n do
                  if (a[i]<min)and(a[i]<>-1) then
                    begin
                      min:=a[i];
                      pos:=i;
                    end;
                a[pos]:=-1;
                min:=1000000;
                poss:=pos;
              end;
          end;
      end;
    for i:=1 to n do
      if a[i]=-1 then inc(rez);
    write(rez);
  close(input); close(output);
end.
