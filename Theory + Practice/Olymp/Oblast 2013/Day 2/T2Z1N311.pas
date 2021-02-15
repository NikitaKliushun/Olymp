Program z1;
type mas=array[1..101] of longint;
Var n,k,i,u,r:longint;
    a,p:mas;
    f1,f2:text;
Procedure Poisk1(x,y:mas;h:longint;var o:longint);
 var e:longint;
  begin
   o:=1;
   while (o<=h)and(x[o]=y[o]) do inc(o);
  end;
Procedure Poisk2(x,y:mas;h:longint;var o:longint);
 var e:longint;
  begin
   o:=1;
   while (o<=h)and(a[o]=0) do inc(o);
  end;
Begin
 Assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 readln(f1,n,k);
 for i:=1 to n do
  begin
   readln(f1,a[i],p[i]);
   r:=r+a[i];
  end;
 if r=k then writeln(f2,'0')
        else begin
              writeln(f2,abs(k-r));
              if r>k
               then begin
                     while r>k do
                      begin
                      poisk2(a,p,n,u);
                      while (a[u]>0) and (r>k) do
                       begin
                        dec(a[u]);
                        writeln(f2,'-',u);
                        dec(r);
                       end;
                      end;
                    end
               else begin
                     while r<k do
                      begin
                      poisk1(a,p,n,u);
                      while (a[u]<p[u]) and (r<k) do
                       begin
                        inc(a[u]);
                        writeln(f2,u);
                        inc(r);
                       end;
                      end;
                    end;
             end;
 close(f1);
 close(f2);
End.
