program yan;
  type state=record x,y,z:longint; end;
  var ar,an:array[1..200,1..200]of longint;
         gr:array[1..200]of state;
         l:array[1..200]of longint;
         ax:array[1..200,1..200]of boolean;
         ay:array[1..200]of boolean;
      i,j,x,y,a,b,n,m,c,max,min:longint; f1,f2:text; k:state;
  procedure rec(x,y:longint);
    var i:longint;
    begin
      l[x]:=y; ay[x]:=true;
      for i:=1 to n do
        if (ax[x,i])and(not ay[i]) then
          rec(i,l[x]+ar[x,i]);
    end;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  read(f1,n);
  for i:=1 to n-1 do
    begin
      readln(f1,a,b,c); gr[i].x:=a; gr[i].y:=b; gr[i].z:=c;
      ar[a,b]:=c; ar[b,a]:=c;
      ax[a,b]:=true; ax[b,a]:=true;
    end;
  for i:=1 to n-2 do
    for j:=1 to (n-1)-i do
      if gr[i].x>gr[i+1].x then
        begin
          k:=gr[i]; gr[i]:=gr[i+1]; gr[i+1]:=k;
        end;
  j:=1; min:=maxlongint; b:=0;
  for i:=1 to n-1 do
    begin
        ar[gr[i].x,gr[i].y]:=0;
        ar[gr[i].y,gr[i].x]:=0;
        for j:=1 to n do begin l[j]:=0; ay[j]:=false; end;
        rec(1,0);
        ar[gr[i].x,gr[i].y]:=gr[i].z;
        ar[gr[i].y,gr[i].x]:=gr[i].z;
        max:=0;
        for j:=1 to n do
          if l[j]>max then max:=l[j];
        if min>max then begin min:=max; b:=i; end;
        if gr[i+1].x<>gr[i].x then
          begin
            ar[gr[b].x,gr[b].y]:=0;
            ar[gr[b].y,gr[b].x]:=0;
          end;
    end;
  write(f2,min);
  close(f1); close(f2);
end.