{���誥��� ������� ����������, ������祭᪨� �����, �. ������筮 11' "�" ����� �1}
program pr1;

label
 l1;
 var
k,i,j,s,n,m,h,w: longint;

a: array [1..1000000] of longint;



begin

assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

read(k);
s:=k;
{w:=1;    }


for i:=1 to k do         {�� �������� ��אַ㣮�쭨��}
 begin

    h:=i;
    w:=1;
     while (w*h)<=k do

        begin
         n:=h-w;
          if n<0 then
           n:= n*(-1);
         m:= k-(h*w);
         j:= n+m;
          if j<s then
            s:=j;
        w:=w+1;
        end;

 end;

 for i:=1 to k do         {�� �������� ��אַ㣮�쭨��}
 begin

    h:=i;
    w:=1;
     while (w*h)<=k do

        begin
         n:=h-w;
          if n<0 then
           n:= n*(-1);
         m:= k-(h*w);
         j:= n+m;
          if j=s then
            write(h,' ',w);
         if j=s then
          goto l1;

        w:=w+1;
        end;

 end;

  l1:
close(input);
close(output);


end.
