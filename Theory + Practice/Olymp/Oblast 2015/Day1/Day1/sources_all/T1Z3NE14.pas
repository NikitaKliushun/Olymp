//Рожнов Максим Вячеславович
program T1Z1NE14;
var
s:string;
a2,a1,aa1,aa2,b:array[0..10000]of byte;
sum:int64;
i,j,n,m,p,ch1,ch2,k,yk1,yk2,step,dvst:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
Read(n,m);
fillchar(aa1,sizeof(aa1),0);
fillchar(aa2,sizeof(aa2),0);

fillchar(a1,sizeof(a1),0);
fillchar(a2,sizeof(a2),0);

fillchar(b,sizeof(b),0);
for i:=1 to N do read(a1[i]);
for i:=1 to M do read(a2[i]);
yk1:=1;
yk2:=1;
for i:=1 to N do begin
 if aa1[yk1-1]=0 then begin for j:=1 to a1[i] do begin
                                                aa1[yk1]:=1;
                                                inc(yk1);
                                                end;
                                                end
                else begin for j:=1 to a1[i] do begin
                                                aa1[yk1]:=0;
                                                inc(yk1);
                                                end;
                      end;
                      end;
for i:=1 to N do begin
 if aa2[yk2-1]=0 then begin for j:=1 to a2[i] do begin
                                                aa2[yk2]:=1;
                                                inc(yk2);
                                                end;
                                                end
                else begin for j:=1 to a2[i] do begin
                                                aa2[yk2]:=0;
                                                inc(yk2);
                                                end;
                     end;
                     end;
step:=-1;
ch1:=0;
for i:=yk1 downto 1 do begin
 inc(step);
 if (step=0)and(aa1[i]>0)then ch1:=ch1+1;
 dvst:=1;
 if (aa1[i]>0)and(step>0) then    begin
                                  for j:=1 to step-1 do dvst:=dvst*2;
                                  ch1:=ch1+dvst;
                                  end;
                       end;
step:=-1;
ch2:=0;
for i:=yk2 downto 1 do begin
 inc(step);
 if (step=0)and(aa2[i]>0)then ch2:=ch2+1;
 dvst:=1;
 if (aa2[i]>0)and(step>0) then    begin
                                  for j:=1 to step-1 do dvst:=dvst*2;
                                  ch2:=ch2+dvst;
                                  end;
                       end;
k:=(ch1 xor ch2);
p:=0;
while k<>0 do begin
inc(p);
b[p]:=k mod 2;
k:=k div 2;
end;
for i:=p downto 1 do if b[i]=1 then s:=s+'1'
                               else s:=s+'0';
k:=0;
for i:=1 to length(s) do if s[i]=s[i+1] then inc(k) else begin
                                                     write(k+1,' ');
                                                     k:=0;
                                                     end;

close(input);
close(output);
end.
