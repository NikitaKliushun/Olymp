//Pogireycik_Margarita_Soligorsk_Gimn1
program T2Z2ND05;
 var b1,b2,b3,e,t,o,g,y,z,k,p,q,m,n,i,j:integer;
     d,s,b,h:array[1..100{10^9}]of integer;
     x:array[1..2,1..10{}]of integer;
     f1,f2:text;
begin
 e:=9;
 o:=6;
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 read(f1,m,n);
 readln(f1);
 for i:=1 to m do
  read(f1,h[i]);
 readln(f1);
 for i:=1 to n do
  read(f1,b[i]);
 close(f1);
 
 for i:=1 to n do
  begin
   x[1,i]:=h[i];
  end;
 for i:=1 to n do
  begin
   x[2,1]:=b[i];
   d[1]:=i;
   for q:=i+1 to n do
    begin
     x[2,2]:=b[q];
     d[2]:=q;
     for g:=q+1 to n do
      begin
       x[2,3]:=b[g];
       d[3]:=g;
       e:=9;
       for t:=1 to m do
        s[t]:=x[1,t]+x[2,t];
       for t:=1 to m-1 do
        if s[t]>=s[t+1]
         then e:=8;
       if e<>8
        then begin for t:=1 to m do
                   write(f2,d[t],' ');
                   close(f2);
                   o:=7;
                   halt; end;
      end;
    end;
  end;
 if o=6
  then write(f2,'-1');
 close(f2);
end.