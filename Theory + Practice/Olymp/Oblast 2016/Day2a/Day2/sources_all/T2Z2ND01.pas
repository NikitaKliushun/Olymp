//Рожнов Максим Вячеславович
program T2Z2D01;
var M,N,k,i,p,j,pd,d:Longint;
    H:array[0..3001]of longint;
    B:array[0..3001]of longint;
    pos:array[0..3001]of longint;
procedure incall(x:longint);
begin
for i:=x to M do inc(pos[i]);
end;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
Read(M,N);
for i:=1 to M do read(H[i]);
for i:=1 to N do read(B[i]);
{Будем делать полный перебор, хихи}
if m= 1 then writeln('1');
if m= 2 then begin
  for i:=1 to N do begin
    for j:=i+1 to N do begin
    if((h[1]+b[i])<(h[2]+b[j]))and(k=0)then begin
      writeln(i,' ',j);
      inc(k);
      break;
      end;
    end;
  end;
if k= 0 then writeln('-1');
end;
if m= 3 then begin
  for i:=1 to N do begin
    for j:=i+1 to N do begin
      for p:=j+1 to N do begin
      if ((h[1]+b[i])<(h[2]+b[j]))and((h[2]+b[j])<(h[3]+b[p]))and(k=0) then begin
        writeln(i,' ',j,' ',p);
        inc(k);
        break;
        end;
      end;
    end;
  end;
if k= 0 then writeln('-1');
end
else  writeln('-1');


close(input);
close(output);
end.


