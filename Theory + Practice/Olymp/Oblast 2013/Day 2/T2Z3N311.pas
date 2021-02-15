Program z1;
type mas=array[1..100,1..100] of integer;
Var a:mas;
    n,m,i,j,k,u,h,g,d:longint;
    f1,f2:text;
    f:boolean;
Procedure prov(var f:boolean;var y,x,w:longint);
 var e,o:longint;
  begin
   if (y=u) and (w>2)
    then f:=true
    else begin
           o:=0;
           while (o<=n) do
            begin
             inc(o);
             if (o<=n)and(a[o,y]=1)and(o<>x)
             then begin
                   inc(w);
                   prov(f,o,y,w);
                  end;
            end;
         end;
  end;
Begin
 Assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 readln(f1,n,m);
 for i:=1 to m do
  begin
   readln(f1,u,j);
   a[u,j]:=1;
   a[j,u]:=1;
  end;
 for i:=1 to n do
  begin
   for u:=1 to n do
    begin
     if (a[i,u]=0)and (i<>u)
      then begin
            a[i,u]:=1;
            a[u,i]:=1;
            g:=0;
            f:=false;
            m:=i;
            d:=u;
            prov(f,d,m,g);
            if (f=true)or(g mod 2<>0)
             then begin
                   a[i,u]:=0;
                   a[u,i]:=0;
                   g:=0;
                  end
             else begin
                   inc(h);
                   g:=0;
                  end;
           end;
    end;
  end;
 writeln(f2,h);
 close(f1);
 close(f2);
End.
