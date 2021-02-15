{Rymkevich Aleksei V g.Borisov, 9 kl,n.1}

program Z1;
var f,f1:text;
    h,w,k,min:real;
    i:integer;

procedure vvod;
begin
assign(f,'input.txt');
reset(f);
read(f,k);
close(f);
end;

procedure vuvod;
begin
assign(f1,'output.txt');
rewrite(f1);
write(f1,h:0:0,' ',w:0:0);
close(f1);
end;

procedure resh;
begin
min:=k;
i:=1;
h:=int(sqrt(k));
while i<=k  do begin
 if (h*i)<=k then if abs(h-i)+k-(h*i)<=min then begin min:=abs(h-i)+k-(h*i);
                                                 w:=i;
                                                 end;
  inc(i);      end;
end;

begin
vvod;
resh;
vuvod;
end.
