Program pochta;
var pros,a,c:longint;
ot, j, d,k,i,ans:longint;
 b:array[1..10000] of longint;


 begin

 assign(input,'input.txt');
 reset(input);
 read
 (a,c);


 close(input);


ans:=0;

if a=c then ans:=1 else begin


 d:=2;
 k:=0;
 while c>1 do begin
 {for k:=1 to trunc(sqrt(c)+1) do}

if c mod d = 0 then begin
 inc(k);
b[k]:=d ;
c:=c div d;


 end else if d=2 then
 d:=d+1 else d:=d+2;
              end;
      end;
      ot:=0;
       for j:=1 to k do


ans:=ans+1  ;

if (a mod 2<>0) then  ans:=ans else

if (a mod 2=0)  then ans:=ans+1 ;

assign(output,'output.txt');
 rewrite(output);

        { for i:=1 to trunc(sqrt(c)+1) do write(b[i],' ');}
   { for j:=1 to k do write(b[j],' ');}
 writeln(ans);
 close(output);



 end.
