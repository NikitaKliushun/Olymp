type arr =array [1..100] of integer;
var A,P,x,ss:arr;
    t,k:integer;
procedure sort(mm:arr; var n:integer);
var i,j,sm,k,k1,k2:integer;
begin
     for  i:=1 to n do begin
          for j:=1 to n do begin
              if mm[i]>mm[j] then begin
                 sm:=mm[j];
                 mm[j]:=mm[i];
                 mm[i]:=sm;
                 for k:=1 to n do begin
                     if ss[k]=i then k1:=i;
                     if ss[k]=j then k2:=j;
                 end;
                 sm:=ss[k2];
                 ss[k2]:=ss[k1];
                 ss[k1]:=sm;
              end;
          end;
     end;
end;

procedure ym(n,sum:integer);
var i:integer;
begin
     for i:=1 to n do begin
         while (sum>k)and(a[ss[i]]>0) do begin
               dec(sum);
               dec(a[ss[i]]);
               inc(t);
               x[t]:=-ss[i];
         end;
     end;

end;

procedure yp(n,sum:integer);
var i :integer;
begin
    for i:=1 to n do
        while (a[ss[i]]<p[ss[i]])and(sum<k)do begin
              inc(sum);
              inc(a[ss[i]]);
              inc(t);
              x[t]:=ss[i];
        end;
end;

var
    i,sum,n:integer;

    inf,outf:text;
begin
     sum:=0;
    Assign(inf,'input.txt');
    reset(inf);
    readln(inf,n,k);
    for i:=1 to n do begin
        readln(inf,a[i],p[i]);
        sum:=a[i]+sum;
        ss[i]:=i
    end;
    close(inf);
    sort(a,n);

    if sum<k then yp(n,sum) else ym(n,sum);
    Assign(outf,'output.txt');
    reWrite(outf);
    writeln(outf,t);
    for i:=1 to t do
        writeln(outf,x[i]);
    close(outf);



end.
