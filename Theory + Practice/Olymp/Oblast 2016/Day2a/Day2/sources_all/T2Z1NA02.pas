//Kamenko Pavel
var ost,i,t,s,b,m,w,ans:longint;
    d:array[1..100010]of longint;
    f:text;
begin
 assign(f,'input.txt');
 reset(f);
 read(f,m,w);
 for i:=1 to m do
  read(f,d[i]);
 read(f,s,b,t);
 close(f);
 ost:=s;
 for i:=1 to m do
  begin
   if d[i]<t
    then begin
          ost:=(ost+d[i])mod w;
          if ost=0
           then ost:=w;
         end
    else begin
          if (ost+t-1) mod w =0
           then begin if b=w
                 then inc(ans)
                end
           else
            if (ost+t-1) mod w= b
             then inc(ans);
          ost:=(ost+d[i]) mod w;
          if ost=0
           then ost:=w;
         end;
  end;
assign(f,'output.txt');
rewrite(f);
write(f,ans);
close(f);



end.
