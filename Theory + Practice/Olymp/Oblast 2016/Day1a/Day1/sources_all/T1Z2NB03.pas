var a,b:array[1..32]of longint;
    ans:array[0..100001]of int64;
    kc,kcc,k0,k,st,y,yy,kans:int64;
    i:longint;
    p:boolean;
    f:text;

function max(a,b:longint):longint;
begin
if a>b then max:=a
       else max:=b;
end;


begin
assign(f,'input.txt');
reset(f);
readln(f,k,y);
close(f);
assign(f,'output.txt');
rewrite(f);

if k=1 then begin writeln(f,y); halt; end;

yy:=y;
while yy>0 do
 begin
  inc(kc);
  a[kc]:=yy mod 2;
  if a[kc]=0 then inc(k0);
  yy:=yy div 2;
 end;
if y=0 then k0:=1;

if k0=0 then
         begin
          st:=1;
          for i:=1 to kc-1 do
           st:=st*2;
          ans[1]:=y;
          for i:=2 to k do
           begin
            st:=st*2;
            ans[i]:=ans[i-1]+st;
            if ans[i]>1073741823 then
                              begin
                               writeln(f,-1);
                               close(f);
                               halt;
                              end
           end;
            for i:=1 to k do
             write(f,ans[i],' ');
            close(f);
            halt;
         end;

kans:=1;
ans[kans]:=y;
while (kans<k) and (y<=1073741823) do
 begin
  inc(y);
  yy:=y;
  kcc:=0;
  p:=true;
  while yy>0 do
   begin
    inc(kcc);
    b[kcc]:=yy mod 2;
    if (a[kcc]=1) and (b[kcc]<>a[kcc]) then begin p:=false; break; end;
    yy:=yy div 2;
   end;
  if p=true then begin inc(kans); ans[kans]:=y; end;
 end;
if kans=k then begin
                for i:=1 to k do
                 write(f,ans[i],' ');
               end
          else begin write(f,-1); close(f); halt; end;
if y>1073741823 then begin write(f,-1); close(f); halt; end;
close(f);
end.
