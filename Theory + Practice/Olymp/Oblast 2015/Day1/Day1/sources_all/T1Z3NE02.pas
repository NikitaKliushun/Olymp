 {Kutas Dmitry Sergeewits MGOL 11 }
{smode delphi}
VAR
  n,m,p1,p2,sv1,sv2,pr,i,z:longint;
  sum1,sum2,min,max,raz,k:int64;
  a,b:array of longint;

function minim(q,w:longint):longint;
begin
  if q>w then begin   a[sv1]:=a[sv1]-b[sv2]; inc(sv2); p2:=p2*(-1); minim:=w;  end;
  if q<w then begin  b[sv2]:=b[sv2]-a[sv1]; inc(sv1); p1:=p1*(-1); minim:=q;  end;
  if q=w then begin  inc(sv2); inc(sv1);  p2:=p2*(-1); p1:=p1*(-1); minim:=q; end;
end;

BEGIN
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  readln(n,m);

  setlength(a,n+2);
  a[n+1]:=maxint;
  setlength(b,m+2);
  b[m+1]:=maxint;
  sum1:=0;
  sum2:=0;
  p1:=1;
  p2:=1;
  sv1:=1;
  sv2:=1;
  pr:=-1;
  z:=0;
  for i:=1 to n do
  begin
    read(a[i]);
    sum1:=sum1+a[i];
  end;
  readln;
  for i:=1 to m do
  begin
    read(b[i]);
    sum2:=sum2+b[i];
  end;

  if sum1<sum2 then begin min:=sum1; max:=sum2; k:=2; end
     else begin min:=sum2; max:=sum1; k:=1; end;
  raz:= max-min;


{1}
  if k=1 then
  begin



    while raz>0 do
      if a[sv1]< raz then
      begin
        write(a[sv1],' ');
        z:=1;
        p1:=p1*(-1);
        dec(raz,a[sv1]);
        inc(sv1);
      end
      else begin   pr:=p1; a[sv1]:=a[sv1]-raz; if a[sv1]=0 then begin inc(sv1); p1:=p1*(-1); end; break;   end;


  end;
{2}
  if k=2 then
  begin


    while raz>0 do
      if b[sv2]< raz then
      begin
        write(b[sv2],' ');
        z:=1;
        p2:=p2*(-1);
        dec(raz,b[sv2]);
        inc(sv2);
      end
      else begin  pr:=p2; b[sv2]:=b[sv2]-raz; if a[sv2]=0 then begin inc(sv2); p2:=p2*(-1); end; break;   end;

  end;


{OOO}
  while min>0 do
  begin
  {}if (p1=p2)and(pr=1) then
    begin
      write(raz,' ');
      z:=1;
      pr:=-1;
      k:=minim(a[sv1],b[sv2]);
      raz:=k;
      min:=min-k;
    end else

  {}if (p1=p2)and(pr=-1) then
    begin
      k:=minim(a[sv1],b[sv2]);
      raz:=raz+k;
      min:=min-k;
    end else

  {}if (p1<>p2)and(pr=1) then
    begin
      k:=minim(a[sv1],b[sv2]);
      raz:=raz+k;
      min:=min-k;
    end else

  {}if (p1<>p2)and(pr=-1) then
    begin
      if z=1 then  write(raz,' ');
      pr:=1;
      k:=minim(a[sv1],b[sv2]);
      raz:=k;
      min:=min-k;
    end;

  end;
{OOO}
  if raz>0 then write(raz,' ');

  close(input);
  close(output);
END.