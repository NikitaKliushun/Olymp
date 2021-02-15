program T1Z3N207;
const ax:array[1..4] of smallint=(0,1,0,-1);
      ay:array[1..4] of smallint=(-1,0,1,0);
var a:array[1..400,1..400] of smallint;
n,m,i,j,sum,sum1,ss,se:integer;
{procedure ds(x,y:smallint);
begin
        a[x][y]:=-1;
        inc(sum);
        ss:=0;
        for i:=1 to 4 do begin
            if (x+ax[i]<=n) and (x+ax[i]>0) and (y+ay[i]<=m) and (y+ay[y]>0) then ds(x+ax[i],y+ay[i]) else inc(ss);
        end;
  //      if ss=4 then begin                if (x<n) then begin
   //                 inc(x);
   //             end else begin if (y<m) and (x=n) then begin
   //                 inc(y);
   //                 x:=1;
   //             end;
   //             ds(x,y);
   //     end;
  //      end;
        a[x][y]:=1;
    if a[x][y]=1 then begin
        inc(sum);
    end;
end;}
begin
    assign(input,'input.txt');
    reset(input);
    assign(output,'output.txt');
    rewrite(output);
    readln(n,m);
    sum:=0;
    for i:=1 to n do begin
        for j:=1 to m do begin
            read(a[i][j]);
        end; readln;
    end;
  //  ds(1,1);
    for i:=1 to n do begin
        for j:=1 to m do begin
            if a[i][j]=1 then begin
                inc(sum);
                a[i][j]:=-1;
            end;
            sum1:=sum;
            se:=0;
            for ss:=1 to 4 do begin
                if (i+ax[ss]<=n) and (i+ax[ss]>0) and (j+ay[ss]<=m) and (j+ay[ss]>0) then begin
                    if a[i+ax[ss],j+ay[ss]]=1 then begin
                        inc(sum);
                        a[i+ax[ss],j+ay[ss]]:=-1;
                    end else begin if a[i+ax[ss],j+ay[ss]]=-1 then begin
                          if (a[i][j]<>0) and (a[i][j]<>-5) then begin
                       inc(sum);
                       end;
                       // a[i+ax[ss],j+ay[ss]]:=-5;
                    end else begin
                        inc(se);
                    end;
                    end;
                end;
            end;
            if ((sum1=sum) and (a[i,j]=-1)) or (se=4) then begin
                a[i,j]:=-5;
            end;
        end;
    end;
    writeln(sum);
    close(input);
    close(output);
end.
