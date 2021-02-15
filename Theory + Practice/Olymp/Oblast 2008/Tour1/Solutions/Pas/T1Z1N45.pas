Var
k,W,H:Longint;
p1,p2,i:Integer;
l:Boolean;

procedure first;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
end;

procedure last;
begin
close(input);
close(output);
end;

procedure nechetnye;
Begin
H:=trunc(sqrt(k));
W:=H;
p1:=H-W;
p2:=k-H*W;
if p2>W then Begin
        W:=W+(p2 div W);
    p2:=p2-W*(p2 div W);
p1:=abs(H-W);
         end;
End;

Begin
first;
read(k);

for i:=2 to k+1 div 2 do
if k mod i=0 then l:=false;
if l=true then nechetnye;

if l=false then
Begin
H:=trunc(sqrt(k));
W:=H+1;
if k-H*W<0 then nechetnye;
end;

write(H,' ',W);
last;
End.
