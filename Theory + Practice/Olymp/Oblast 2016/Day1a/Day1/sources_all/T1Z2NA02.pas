var k,tek,i,pr:longint;
    ans,a:array[1..1000]of longint;
    prr,aa,step,t,y2,y:int64;
    f:text;
procedure rec(i:longint);
var j:longint;
begin
 if t>k
  then exit;
 if i>tek
  then begin
        step:=1;
        aa:=0;
        for j:=1 to tek do
         begin
          aa:=aa+ans[j]*step;
          step:=step*2;
         end;
        if (aa<>y)and(t<=k)
         then begin write(f,aa,' ');inc(t);end;

       end
  else begin
        if a[i]=1
         then begin
               ans[i]:=1;
               rec(i+1);
              end
         else begin
               for j:=0 to 1 do
                begin
                 ans[i]:=j;
                 rec(i+1);
                end;
              end;
       end;
end;

begin
 assign(f,'input.txt');
 reset(f);
 read(f,k,y);
 close(f);
 y2:=y;
 while y2>0 do
  begin
   inc(tek);
   a[tek]:=y2 mod 2;
   y2:=y2 div 2;
  end;
 for i:=1 to 30 do
  if a[i]=0
   then inc(pr);
 prr:=1;
 for i:=1 to pr do
  prr:=prr*2;
 if prr<k
  then begin
        assign(f,'output.txt');
        rewrite(f);
        write(f,-1);
        close(f);
        halt;
       end;
 assign(f,'output.txt');
 rewrite(f);
 write(f,y,' ');
 tek:=30;
 t:=2;
 rec(1);
 close(f);
end.
