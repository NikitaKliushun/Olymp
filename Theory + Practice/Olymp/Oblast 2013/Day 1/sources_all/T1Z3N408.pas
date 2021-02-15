{сугак даниил викторович 10 3}
Var a:array[1..401,1..401] of char;
    n,m,sum:integer;
    f1,f2:text;

Procedure reading;
var i,j:integer;
 begin
 Assign(f1,'input.txt');
 Reset(f1);
 Assign(f2,'output.txt');
 Rewrite(f2);
 read(f1,n,m);
 readln(f1);
 for i:=1 to n do begin
                  for j:=1 to m do read(f1,a[i,j]);
                  readln(f1);
                  end;
 close(f1);
 end;

Procedure scan(x,y,x1,y1:integer);
Var i2,j2,s3,s4:integer;
begin
i2:=x;
s4:=0;
while i2<=x1 div 2 do begin
                        s3:=0;
                        for j2:=y to y1 do
                                if a[i2,j2]=a[x1-i2+1,j2] then inc(s3);
                        if s3>=y1-y+1 then inc(sum);
                        inc(i2);
                        end;


end;

Procedure Body;
 Var i,j,i1,i2,s,s1:integer;
  Begin
  sum:=0;
  for s:=1 to n do
            for s1:=0 to m do begin
                              i:=1;
                              while i<=n-s do begin
                                          for j:=1 to m-s1 do begin
                                                              Scan(i,j,i+s,j+s1);
                                                              end;
                                              inc(i);
                                              end;
                              end;
  end;
{Procedure Body;
 Var i,j,i1,i2,s,s1:integer;
  Begin
  sum:=0;
  for s:=1 to m do
            for s1:=0 to n do
                        for j:=1 to m-s do
                                   for i:=1 to n-s1 do begin;
                                                    Scan(i,j,i+s,j+s1);
                                                    end;
  end;}

Begin
reading;
body;
write(f2,sum);
close(f2);
End.
