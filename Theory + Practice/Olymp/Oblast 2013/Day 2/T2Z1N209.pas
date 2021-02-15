type mass=array[1..1000] of integer;
var a,b,res,c:array[1..1000] of integer;
    l,s,i,j,n,m,k:integer;
procedure sort(var a,b:mass);
  var t,i,j:integer;
  begin
    for i:=1 to n-1 do
      for j:=1 to n-i do
        if a[j]>a[j+1]
          then begin
                 t:=a[j];
                 a[j]:=a[j+1];
                 a[j+1]:=t;

                 t:=b[j];
                 b[j]:=b[j+1];
                 b[j+1]:=t;

                 t:=c[j];
                 c[j]:=c[j+1];
                 c[j+1]:=t;
               end;
  end;
procedure put;
  var i,j:integer;
  begin
    sort(b,a);

    i:=1;

    while a[i]=b[i]do
      inc(i);

    while (s<k)and(a[i]<b[i])and(i<=n) do
      begin
        inc(a[i]);
        inc(l);
        res[l]:=c[i];
        inc(s);
        if a[i]=b[i] then inc(i);
      end;
  end;
procedure get;
  begin
    sort(a,b); i:=n;

    while (a[i]>0)and(s>k)and(i>=1) do
      begin
        dec(a[i]);
        inc(l);
        res[l]:=c[i];
        dec(s);
        if a[i]=0 then dec(i);
      end;
  end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);

  read(n,k); s:=0;

  for i:=1 to n do
    begin
      read(a[i],b[i]);
      s:=s+a[i];
      c[i]:=i;
    end;

  l:=0;

  if s=k then write(0)
         else if s<k then begin
                            put;
                            writeln(l);

                            for i:=1 to l do
                              writeln(res[i]);
                          end
                     else begin
                            get;

                            writeln(l);

                            for i:=1 to l do
                              writeln(-res[i]);
                          end;


  close(input);
  close(output);
end.