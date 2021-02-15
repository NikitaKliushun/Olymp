var a:array[1..2000,1..2000]of integer;
    maxa,maxi,maxc:array[1..2000]of integer;
    n,k:integer;
    f1,f2:text;

procedure perebor;
var i,j,l,max,m,mm,t:integer;
    b:boolean;
begin
        for i:=1 to k do begin
                maxi[i]:=i;
                for j:=1 to n do begin
                        max:=0;
                        for l:=j to n do if a[j,i]=a[l,i] then begin inc(max);end;
                        if maxa[i]<max then begin maxa[i]:=max;maxc[i]:=a[j,i];end;
                        end;
                end;
        b:=true;
        for i:=1 to k-1 do begin
                for j:=i to k do if maxa[j]>maxa[i] then begin
                                                        t:=maxa[i];
                                                        maxa[i]:=maxa[j];
                                                        maxa[j]:=t;
                                                        t:=maxi[i];
                                                        maxi[i]:=maxi[j];
                                                        maxi[j]:=t;
                                                        end;
                end;
end;

procedure start;
var
    i,j:integer;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        readln(f1,n,k);
        for i:=1 to n do begin
                for j:=1 to k do read(f1,a[i,j]);
                readln(f1);
        end;

end;

procedure poisk;
var i,j,m1,m2,i1,min:integer;
begin
        if maxa[1]=n then writeln(f2,0)
        else begin
        for i:=1 to k do begin
                if maxa[i]<=n div 2 then maxa[i]:=0;end;
        for i:=1 to k do begin
                if maxa[i]>=n div 2 then break
                                   else  begin maxa[i]:=0;for j:=1 to n do begin
                                                         if a[j,maxi[i]]<>maxc[maxi[i]]then begin
                                                                                           m2:=9999;
                                                                                           for i1:=1 to k do begin
                                                                                                m1:=0;
                                                                                                if a[j,i1]=maxc[maxi[i]] then begin m1:=abs(i1-maxi[i]);
                                                                                                                                   if m1>k div 2 then m1:=m1-(k div 2);
                                                                                                                             end;
                                                                                                if (m2>m1)and(m1<>0) then m2:=m1;
                                                                                                end;
                                                                                           maxa[i]:=maxa[i]+m2;
                                                                                           end;
                                                         end;
                                   end;
                end;
                min:=9999;
                for i:=1 to k do if (min>maxa[i])and(maxa[i]<>0) then min:=maxa[i];
                if min<k then writeln(f2,min)
                          else writeln(f2,-1);
       end;
end;




begin
start;
perebor;
poisk;
close(f1);
close(f2);
end.
