{Колячко Мария}
{г. Березино}
{Тур 1}
{Задача 1}
const
  b:array['a'..'k']of int64 = (1,2,3,4,5,6,7,8,9,10,10);
var
 a:array[0..15,0..15]of int64;
 d:array[0..20]of int64;
 x:char;
 k,kol,y,n,F:int64;
 i,j:longint;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 k:=0;kol:=0;
 for i:=1 to 10 do
  begin
   for j:=1 to 10 do
    begin
      Read(x);
      if x = '.' then a[i,j]:=0
                 else begin
                      if a[i,j-1] > 0 then begin
                                              a[i,j]:=a[i,j-1];
                                              Inc(d[a[i,j]]);
                                           end
                                      else if a[i-1,j] > 0 then begin
                                                                  a[i,j]:=a[i-1,j];
                                                                  Inc(d[a[i,j]]);
                                                                end
                                                           else begin
                                                                  Inc(k);
                                                                  a[i,j]:=k;
                                                                  Inc(d[a[i,j]]);
                                                                end;
                       Inc(kol);
                      end;
    end;
   Readln;
  end;
 Read(N);
 f:=0;
 for i:=1 to N do
   begin
     Read(y,x);
     Readln(x);
     if a[y,b[x]] > 0 then begin
                            f:=1;
                            Dec(d[a[y,b[x]]]);
                            Dec(kol);
                           end;
    if f = 0 then writeln('MISS')
             else begin
                   if kol = 0 then begin
                                     writeln('GAME OVER');
                                     break;
                                   end
                              else if d[a[y,b[x]]] = 0 then writeln('DEAD')
                                                       else writeln('HIT');
                   f:=0;
                  end;
    a[y,b[x]]:=0;
   end;
 close(INPUT);
 close(output);
end.
