{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}
var i,j,n,m,k:longint;a:array[1..30000]of integer;
begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 readln(n,m);
 if (n<30000)and(m<30000)
   then
    begin
      for i:=1 to n do
       a[i]:=i;
      for i:=1 to m do
       begin
        read(k);
        if i<m
         then write(a[k],' ')
         else writeln(a[k]);
        for j:=1 to n do
         if a[j]<a[k]
          then a[j]:=a[j]+1;
        a[k]:=1;
       end;
    end;
 close(input);
 close(output);
end.
