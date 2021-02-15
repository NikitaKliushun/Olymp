{T2Z2N20; Romanenya Ilya Yur'evich; Slutsk}
var ii,n,k,i,j,z,q: longint;
    bool: boolean;
    s: array [1..4000] of char;
    a: array [1..2000] of word;

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

readln(n,k);

for i:=1 to n do
   read(s[i]);

for i:=1 to n do s[i+n]:=s[n-i+1];


q:=1;

for ii:=1 to n do
    begin
     inc(q);
     fillchar(a,sizeof(a),0);
     for i:=1 to n-q+1 do
        begin
         for j:=i+1 to q+i-1 do
            if s[i]=s[j] then inc(a[i]);
        end;

      for i:=1 to n-q+1 do
        begin
        bool:=true;
         for j:=i+1 to q+i-1 do
            if a[i]>=k then bool:=false;
        if bool then inc(z);
        end;
    end;
{ while b<>e/3 do inc(i);   }
write(z+n);
close(input);
close(output);
end.
