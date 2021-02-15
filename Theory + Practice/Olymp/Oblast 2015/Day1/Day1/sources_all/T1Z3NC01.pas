//Козелько Никита Сергеевич, город Солигорск, класс 11, задача 3
var a, b:array[-1..100005] of longint;
    ans:array[1..100000000] of int64;
    n, m, i, xx, p, k1, k0, j, cc:longint;
begin

assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);

readln(n, m);

if n>=m then begin
            for i:=1 to n do
            read(a[i]);
            for i:=1 to m do
            read(b[i]);
            end
       else begin
            for i:=1 to n do
            read(b[i]);
            for i:=1 to m do
            read(a[i]);
            end;

if n<m then begin
            cc:=n; n:=m; m:=cc;
            end;
 j:=m;
 p:=((n mod 2)+(m mod 2)) mod 2;
 xx:=1;
for i:=n downto 1 do
 begin
 if (i mod 2=1) then begin
                     k1:=a[i];
                     while k1>0 do
                      begin
                      if (b[j]>k1)or(j=0) then begin
                                      if (j mod 2=1) then begin
                                                          if (p=0) then begin
                                                                        ans[xx]:=ans[xx]+k1;
                                                                        b[j]:=b[j]-k1;
                                                                        k1:=0;
                                                                        end
                                                                   else begin
                                                                        p:=0;
                                                                        inc(xx);
                                                                        ans[xx]:=k1;
                                                                        b[j]:=b[j]-k1;
                                                                        k1:=0;
                                                                        end;
                                                          end
                                                     else begin
                                                          if (p=1) then begin
                                                                        ans[xx]:=ans[xx]+k1;
                                                                        b[j]:=b[j]-k1;
                                                                        if b[j]<0 then b[j]:=0;
                                                                        k1:=0;
                                                                        end
                                                                   else begin
                                                                        p:=1;
                                                                        inc(xx);
                                                                        ans[xx]:=k1;
                                                                        b[j]:=b[j]-k1;
                                                                        if b[j]<0 then b[j]:=0;
                                                                        k1:=0;
                                                                        end;
                                                          end;
                                      end
                                 else begin

                                       if (j mod 2=1) then begin
                                                          if (p=0) then begin
                                                                        ans[xx]:=ans[xx]+b[j];
                                                                        k1:=k1-b[j];
                                                                        dec(j);
                                                                        if j<0 then j:=0;
                                                                        end
                                                                   else begin
                                                                        p:=0;
                                                                        inc(xx);
                                                                        ans[xx]:=b[j];
                                                                        k1:=k1-b[j];
                                                                        dec(j);
                                                                        if j<0 then j:=0;
                                                                        end;
                                                          end
                                                     else begin
                                                          if (p=1) then begin
                                                                        ans[xx]:=ans[xx]+b[j];
                                                                        k1:=k1-b[j];
                                                                        dec(j);
                                                                        if j<0 then j:=0;
                                                                        end
                                                                   else begin
                                                                        p:=1;
                                                                        inc(xx);
                                                                        ans[xx]:=b[j];
                                                                        k1:=k1-b[j];
                                                                        dec(j);
                                                                        if j<0 then j:=0;
                                                                        end;
                                                          end;

                                       end;


                      end;

                     end
                else begin
                     k0:=a[i];

                     while k0>0 do
                      begin
                      if (b[j]>k0)or(j=0) then begin
                                      if (j mod 2=1) then begin
                                                          if (p=1) then begin
                                                                        ans[xx]:=ans[xx]+k0;
                                                                        b[j]:=b[j]-k0;
                                                                        k0:=0;
                                                                        end
                                                                   else begin
                                                                        p:=1;
                                                                        inc(xx);
                                                                        ans[xx]:=k0;
                                                                        b[j]:=b[j]-k0;
                                                                        k0:=0;
                                                                        end;
                                                          end
                                                     else begin
                                                          if (p=0) then begin
                                                                        ans[xx]:=ans[xx]+k0;
                                                                        b[j]:=b[j]-k0;
                                                                        if b[j]<0 then b[j]:=0;
                                                                        k0:=0;
                                                                        end
                                                                   else begin
                                                                        p:=0;
                                                                        inc(xx);
                                                                        ans[xx]:=k0;
                                                                        b[j]:=b[j]-k0;
                                                                        if b[j]<0 then b[j]:=0;
                                                                        k0:=0;
                                                                        end;
                                                          end;
                                      end
                                 else begin

                                       if (j mod 2=1) then begin
                                                          if (p=1) then begin
                                                                        ans[xx]:=ans[xx]+b[j];
                                                                        k0:=k0-b[j];
                                                                        dec(j);
                                                                        if j<0 then j:=0;
                                                                        end
                                                                   else begin
                                                                        p:=1;
                                                                        inc(xx);
                                                                        ans[xx]:=b[j];
                                                                        k0:=k0-b[j];
                                                                        dec(j);
                                                                        if j<0 then j:=0;
                                                                        end;
                                                          end
                                                     else begin
                                                          if (p=0) then begin
                                                                        ans[xx]:=ans[xx]+b[j];
                                                                        k0:=k0-b[j];
                                                                        dec(j);
                                                                        if j<0 then j:=0;
                                                                        end
                                                                   else begin
                                                                        p:=0;
                                                                        inc(xx);
                                                                        ans[xx]:=b[j];
                                                                        k0:=k0-b[j];
                                                                        dec(j);
                                                                        if j<0 then j:=0;
                                                                        end;
                                                          end;

                                       end;

                      end;

                     end;
 end;

if j<>0 then begin

             if (j mod 2=p) then begin
                                 ans[xx]:=ans[xx]+b[j];
                                 for i:=j downto 1 do
                                  begin
                                  inc(xx);
                                  ans[xx]:=b[j];
                                  end;
                                 p:=1;
                                 end
                            else begin
                                 for i:=j downto 1 do
                                  begin
                                  inc(xx);
                                  ans[xx]:=b[j];
                                  end;
                                 p:=1;
                                 end;

             end;

if p=0 then dec(xx);

if ans[1]=0 then  begin
                   for i:=xx downto 2 do
                   write(ans[i], ' ');
                  end
            else begin
                  for i:=xx downto 1 do
                   write(ans[i], ' ');
                 end;

close(input); close(output);

end.
