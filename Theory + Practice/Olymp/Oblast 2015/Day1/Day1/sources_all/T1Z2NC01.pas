//Козелько Никита Сергеевич, город Солигорс, 11 класс, 2 задача
var a, b, aa, c, d, i, cc, q, j:longint;
    ans:int64;

function min(a, b:longint):longint;
 begin
 if a<b then min:=a
        else min:=b;
 end;

begin

assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);

readln(a, b);
{if a<b then begin
            aa:=a+a;
            if b-a>=1 then inc(aa);
            end
       else begin
            aa:=b+b;
            if a-b>=1 then inc(aa);
            end;

c:=trunc(sqrt(aa));
ans:=c*c;

for i:=1 to c do
 begin
 d:=min((a div i), (b div i))*2;
 if (i mod 2=1)and((a+b-d>=i)and((a mod i)+(b mod i)>i)) then inc(d);
 ans:=ans+(d-c);
 end;

write(ans);  }

c:=min(a, b)*2;
if a<b then begin
            cc:=a; a:=b; b:=cc;
            end;
if abs(a-b)>=1 then inc(c);
ans:=0;
for i:=1 to c do
 begin
  for j:=1 to i do
  if (j mod 2=1)and(i mod 2=1) then begin
                                    q:=i*j;
                                    if (a>=(q div 2)+1)and(b>=(q div 2)) then inc(ans)
                                                                         else break;
                                    //writeln(i, ' ', j);
                                    end
                               else begin
                                    q:=i*j;
                                    if (a>=(q div 2))and(b>=(q div 2)) then inc(ans)
                                                                       else break;
                                    //-writeln(i, ' ', j);
                                    end;
 end;
write(ans);

close(input);  close(output);

end.
