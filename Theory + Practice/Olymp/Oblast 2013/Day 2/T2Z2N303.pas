type arr=array [1..100000] of integer;
var ss,d:arr;

procedure sort(mm:arr; var n:integer);
var i,j,sm,k,k1,k2:integer;
begin
     for  i:=1 to n do begin
          for j:=1 to n do begin
              if mm[i]<mm[j] then begin
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

var i,n,k,pn,pn1,pn2,j:integer;

inf,outf:text;
begin
     assign(inf,'input.txt');
     reset(inf);
     readln(inf,n,k);
     for i:=1 to n do read(inf,d[i]);
     close(inf);
     for i:=1 to n do ss[i]:=i;
     sort(d,n);
     

    pn:=maxint;
    
    for i:=1 to (n-k)+1 do begin
        for j:=(i+k)-1 to n do begin
            if d[ss[j]] - d[ss[i]] <= pn then begin

               pn:=d[ss[j]] - d[ss[i]];
               if (i>1)and(d[ss[i]]=d[ss[i-1]]) then else pn1:=i;
               pn2:=j;
            end;
        end;
    end;
        assign(outf,'output.txt');
        reWrite(outf);
      writeln(outf,pn2-pn1+1);
    for i:=pn1 to pn2 do write(outf,ss[i] ,' ');
    close(outf);
end.