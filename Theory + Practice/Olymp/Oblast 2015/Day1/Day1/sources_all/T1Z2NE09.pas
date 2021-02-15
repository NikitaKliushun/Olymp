//трацевский алксей павлович, дзержинск,11 класс, задача
var
        a, b, ch, cw, ans, sq, t: qword;

begin

assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

read( A, B);
if a > b then
begin
  sq :=a;
  a := b;
  b := sq;
end;
ch := 1;
cw := 2*a;
if b > a then inc(cw);
sq := cw;
inc(ans, cw - ch + 1);

inc(ch);

while ch <= cw do
  begin
     cw := sq div ch;
     t := 1;
     t := t * cw * ch;
     if t div 2 + (t mod 2) > b then dec (cw);
     inc(ans, cw - ch + 1);
     inc(ch);
  end;

writeln(ans);


close(input);
close(output);
end.
