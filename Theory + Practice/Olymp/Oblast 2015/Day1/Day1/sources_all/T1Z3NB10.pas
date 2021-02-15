Program z3;
Var
a,b,c:array[-10000100..10000100] of byte;
u,l,k,n,m,i,j,max,sm1,sm2:longint;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

    readln(n,m);

    u:=1;
    l:=1;

    for i:=1 to n do begin
      read(k);
      for j:=1 to k do begin
        a[u]:=l;
        inc(u);
      end;

      if l = 1 then l:=0 else l:=1;
    end;
    readln;

    n:=u;

    u:=1;
    l:=1;

    for i:=1 to m do begin
      read(k);
      for j:=1 to k do begin
        b[u]:=l;
        inc(u);
      end;

      if l = 1 then l:=0 else l:=1;
    end;

    m:=u;
    sm1:=0; sm2:=0;

    if n>m then begin max:=n; sm2:=abs(n-m); end else begin max:=m; sm1:=abs(n-m); end;

    for i:=-10000100 to 10000100 do c[i]:=0;

    for i:=max downto 1 do
      if a[i-sm1]+b[i-sm2]=1 then c[i]:=1 else
        if a[i-sm1]+b[i-sm2]=2 then c[i]:=0 else
          if a[i-sm1]+b[i-sm2]=0 then c[i]:=0;

    i:=-10000100;


    while c[i]=0 do inc(i);

    l:=1;

    j:=i;

    while j<=max-1 do begin
      u:=0;
        while (c[j]=l) and (j<=max-1) do begin inc(u); inc(j); end;
         if l = 1 then l:=0 else l:=1;
         if u<>0 then write(u,' ');
    end;


  close(input); close(output);
End.
