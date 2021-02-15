program ss;
var n,t,i,j,x,h,m,c,k,q,w,e:integer;
    a,b,s,f:array[1..100] of integer;
    z:array[1..100] of string;
    f1,f2:text;
begin
     assign(f1,'input.txt');
     reset(f1);
     assign(f2,'output.txt');
     rewrite(f2);
     x:=1;
     i:=1;
     while not eof(f1) do
     begin
           if i=1 then readln(f1,n,t)
            else
            begin
                 readln(f1,z[x]);
                 x:=x+1;
            end;
            i:=i+1;
     end;
     for i:=1 to n do
     begin
         val(copy(z[i],1,2),h,k);
         val(copy(z[i],4,2),m,k);
         val(copy(z[i],7,2),c,k);
         a[i]:=h*3600+m*60+c;
     end;
     for i:=1 to n-1 do
         for j:=1 to n-1 do
             if a[j]>a[j+1] then
                            begin
                                 x:=a[j];
                                 a[j]:=a[j+1];
                                 a[j+1]:=x;
                            end;
     x:=1;
     i:=1;
     while (i<=n) do
     begin
         if b[i]=0 then
                    for j:=i+1 to n do
                        if (a[j]-a[i]=t)and(b[j]=0) then
                                                 begin
                                                      s[x]:=a[i];
                                                      f[x]:=a[j];
                                                      x:=x+1;
                                                      b[i]:=1;
                                                      b[j]:=1;
                                                      i:=i+1;
                                                 end;
         i:=i+1;
     end;
    for i:=1 to n div 2 do
    begin
        q:=s[i] div 3600;
        w:=(s[i]-q*3600) div 60;
        e:=(s[i]-q*3600-w*60);
        if q div 10=0 then write(f2,'0',q,':')
                      else write(f2,q,':');
        if w div 10=0 then write(f2,'0',w,':')
                      else write(f2,w,':');
        if e div 10=0 then write(f2,'0',e,'-')
                      else write(f2,e,':');
        q:=f[i] div 3600;
        w:=(f[i]-q*3600) div 60;
        e:=(f[i]-q*3600-w*60);
        if q div 10=0 then write(f2,'0',q,':')
                      else write(f2,q,':');
        if w div 10=0 then write(f2,'0',w,':')
                      else write(f2,w,':');
        if e div 10=0 then writeln(f2,'0',e)
                      else writeln(f2,e,':');
    end;
    close(f1);
    close(f2);
end.
                                 