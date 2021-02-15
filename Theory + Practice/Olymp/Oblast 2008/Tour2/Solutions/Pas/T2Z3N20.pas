{T2Z3N20; Romanenya Ilya Yur'evich; Slutsk}
var sum,ii,k,i,j,n,m,x,y,b,e,p: longint;
    a: array [1..7900,1..7900] of byte;
    o,z: array [1..10000] of longint;


{procedure sort(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]<x do
            inc(i);
           while x<a[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;
}
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

read(n,m);

for i:=1 to m do
   begin
     read(x,y);
     a[x,y]:=1;
     a[y,x]:=1;
   end;

{for i:=1 to n do
   begin
    for j:=1 to n do
        write(a[i,j]);
    writeln;
   end;    }

for i:=1 to n do
      begin
       for ii:=1 to n do z[ii]:=20000;
       z[i]:=0;
       b:=1; e:=1;
       for ii:=1 to n do
          if a[i,ii]=1 then
             begin
              o[e]:=ii;
              inc(e);
              z[ii]:=z[i]+1;
             end;


       while b<>e do
          begin
               p:=o[b];
               inc(b);
               for k:=i to n do
                  if a[p,k]=1 then
                     begin
                      if z[p]+1<z[k] then
                         begin
                          z[k]:=z[p]+1;
                          o[e]:=k;
                          inc(e);
                         end;
                     end;
          end;
       for ii:=1 to n do if (z[ii]<>0)and(z[ii]<>20000) then sum:=sum+z[ii]-1;
      end;

{ while b<>e/3 do inc(i);   }
write(sum*2);

close(input);
close(output);
end.
