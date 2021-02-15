Program t2z1n604; {Samusevich Ivan, 11 klass, N604}
var
b:array [1..3,1..105] of longint;
i,j,n,k,ans,ans1,a,p:longint;
time:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(n,k);
ans:=0;
For i:=1 to 2 do
 for j:=1 to n do
  b[i,j]:=0;
For i:=1 to n do
 begin
  read(a,p);
  b[1,i]:=a;
  b[2,i]:=p;
 end;
ans1:=1;
i:=1;
p:=0;
a:=0;
For i:=1 to n do
 inc(p,b[1,i]);
ans:=k-p;
a:=0;
writeln(abs(ans));
p:=0;
i:=1;
j:=0;
While p<>k do
 begin
  if (b[2,i]-b[1,i])>0 then begin
                             for j:=b[1,i] to b[2,i] do
                              begin
                               if (p+j)<=k then a:=j;
                              end;
                             if a=0 then begin
                                          break;
                                         end
                                    else begin
                                          j:=0;
                                          inc(p,a);
                                          dec(b[1,i],b[1,i]-a);
                                          for j:=1 to a do
                                          Writeln(i);
                                         end;
                           end
                     else if (b[2,i]-b[1,i])=0 then if (p+b[1,i])<=k then begin
                                                                           inc(p,b[1,i]);
                                                                          end
                                                                 else if (p+b[1,i])>k then begin
                                                                                            a:=0;
                                                                                            a:=p+b[1,i]-k;
                                                                                            for j:=1 to a do
                                                                                             begin
                                                                                            writeln(i*(-1));
                                                                                             end;
                                                                                            dec(b[1,i],a);
                                                                                            inc(p,b[1,i]);
                                                                                           end;
  i:=i+1;
  if i>n then i:=1;
 end;
close(input);
close(output);
end.
