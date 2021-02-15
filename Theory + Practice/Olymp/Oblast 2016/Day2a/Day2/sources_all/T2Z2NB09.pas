{Гончар Даниил Дмитриевич СШ№2 г.Солигорска}

program T2Z2NB09;
label 1,2;
var ych,ped,m:array[1..3000] of longint;
    y,p,i,j,max,k:longint;
    f1,f2:text;
begin
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 readln(f1,y,p);
 for i:=1 to y do read(f1,ych[i]);
 for i:=1 to p do read(f1,ped[i]);

 i:=1;
 j:=1;
1:while j<=y do
  begin
   while i<=p do
    begin
     if ych[j]+ped[i]>max then begin
                                max:=ych[j]+ped[i];
                                m[i]:=i;
                                k:=k+1;
                                i:=i+1;
                                j:=j+1;
                                goto 1;
                               end
                          else i:=i+1;

    end;
   j:=j+1;
  end;
 if k<y then begin write(f2,-1); goto 2; end;
 for i:=1 to p do if m[i]<>0 then write(f2,m[i],' ');
2: close(f2);
 close(f1);
end.
