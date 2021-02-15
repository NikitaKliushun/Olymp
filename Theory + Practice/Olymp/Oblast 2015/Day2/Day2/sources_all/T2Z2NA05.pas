var d,i,j,s:int64;
function pow(l,r:int64):int64;
 begin
 if r=1 then pow:=l
        else pow:=l*l;
 end;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(d);
i:=1;
s:=1;
while d>=i*i do
   begin
   inc(i);
   j:=0;
   if d mod i=0
     then while d mod i =0 do
            begin
            inc(j);
            d:=d div i;
            end;
   if j mod 3<>0
     then s:=s*pow(i,(3-(j mod 3)));
   end;
if d<>1
   then if d=i
           then begin
                inc(j);
                if j mod 3=0 then s:=s div i div i;
                end
           else s:=s*d*d;

write(s);
close(input);
close(output);
end.

