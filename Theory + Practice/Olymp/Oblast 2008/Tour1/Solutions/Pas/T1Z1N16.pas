{Конофальский Захар Петрович, Жодино, 11 класс, задача 1}
var k,h,w:longint;
function check(x:longint):boolean;
var i:longint;
begin
for i:=trunc(sqrt(x))+1 downto 2 do
 if (x mod i)=0
  then begin h:=i; w:=x div i; break; end;
end;

begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

readln(k);
case k of
1: begin h:=1; w:=1; end;
2: begin h:=1; w:=2; end;
3: begin h:=1; w:=3; end;
else begin
      check(k);
       if (((abs(h-w))+(k-h*w)) > k-sqr(trunc(sqrt(k)))) and (h<>0)
        then begin h:=trunc(sqrt(k)); w:=h; end;
       if h=0
        then begin
              dec(k);
              check(k);
              if ((abs(h-w))+(k-h*w)) > k+1-sqr(trunc(sqrt(k+1)))
               then begin h:=trunc(sqrt(k+1)); w:=h; end;  end;
             end;


end;
writeln(h,' ',w);
end.
