{Галуза Вадим Александрович
     T1Z1NB06}
var
a:array[0..11,0..11] of char;
x,y,i,j,l,k,kk,kill,m,n,cod,r,u,ak:longint;
s,s2:string;
c,g:char;
Procedure Rek(x:longint;c:char);
begin
y:=ord(c)-(ord('a')-1);
if y>10 then y:=y-1;
if a[x,y]='#' then begin
                   a[x,y]:='x';
                   inc(kill);
                   if kill=k then begin
                                   writeln('GAME OVER');
                                   close(input);
                                   close(output);
                                   halt;
                                   end;
                   kk:=0;
if (a[x-1,y]='x')or(a[x+1,y]='x') then begin
                     for i:=x to 10 do
                      if a[i,y]='x' then read
                                    else
                      if a[i,y]='#' then begin
                                          writeln('HIT');
                                          break;
                                          end
                                    else
                      if ((a[i,y]='x')and(i=10))or(a[i,y]='.') then begin
                                                                  for j:=x downto 1 do
                                                                  if a[j,y]='x' then read
                                                                  else
                                                                 if a[j,y]='#' then begin
                                                                                   writeln('HIT');
                                                                                   break;
                                                                                    end
                                    else
                      if (((a[j,y]='x')and(j=1))or(a[j,y]='.'))and(kill<>k) then begin
                                                                 writeln('DEAD');
                                                                 break;
                                                                  end;
                                                                  end;
                      end
                else
if (a[x,y-1]='x')or(a[x,y+1]='x') then begin
                     for u:=y downto 1 do
                      if a[x,u]='x' then read
                                    else
                      if a[x,u]='#' then begin
                                          writeln('HIT');
                                          break;
                                          end
                                    else
                      if ((a[x,u]='x')and(u=1))or(a[x,u]='.') then begin
                                                                    for j:=y to 10 do
                      if a[x,j]='x' then read
                                    else
                      if a[x,j]='#' then begin
                                          writeln('HIT');
                                          break;
                                          end
                                    else
                                       if (((a[x,j]='x')and(i=10))or(a[x,j  ]='.'))and(kill<>k)and(ak=0) then begin
                                                                 writeln('DEAD');
                                                                 inc(ak);
                                                                 break;
                                                                  end;
                                                                  end;


                     end
                else
                    if kill=k then begin
                                   writeln('GAME OVER');
                                   close(input);
                                   close(output);
                                   halt;
                                   end
                              else if (a[x+1,y]<>'#')and(a[x-1,y]<>'#')
                              and(a[x,y+1]<>'#')and
                              (a[x,y-1]<>'#') then  writeln('DEAD')
                                        else writeln('HIT');
                                 end
                           else writeln('MISS');
end;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
r:=0;
for i:=1 to 10 do
begin
for j:=1 to 10 do
begin
read(a[i,j]);
if a[i,j]='#' then inc(k);
end;
readln;
end;
readln(n);
for l:=1 to n do
begin
if kill=k then begin
                                   writeln('GAME OVER');
                                   close(input);
                                   close(output);
                                   halt;
                                   end;
readln(s);
if length(s)=4 then begin
                    c:=s[4];
                    s2:=s[1]+s[2];
                    val(s2,x,cod);
                    end
               else begin
                    c:=s[3];
                    s2:=s[1];
                    val(s2,x,cod);
                    end;
ak:=0;
Rek(x,c);
end;
end.
