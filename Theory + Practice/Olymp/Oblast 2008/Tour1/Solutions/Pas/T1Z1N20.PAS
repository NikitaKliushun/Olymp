{T1Z1N20; Romanenya Ilya Yur'evich; Slutsk}
var q,qr,i,j,h,hr,w,wr,k: longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

read(k);

q:=maxlongint;

for i:=1 to trunc(sqrt(k)) do
     begin
        for j:=i to trunc(k/i) do
        begin
        qr:=0;
        {writeln(i,' ',j);  }
        hr:=i;
        wr:=j;
        qr:=abs(hr-wr);
        qr:=qr+(k-hr*wr);
        if qr<q then
           begin
             h:=hr;
             w:=wr;
             q:=qr;
           end;
        end;
    end;

write(h,' ',w);
close(input);
close(output);
end.