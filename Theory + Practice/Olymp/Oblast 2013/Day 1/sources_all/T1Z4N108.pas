program zzz;
 var st:array [1..200000] of longint;
 a:array [1..10000,1..10000] of byte;
 met,s:array [1..200000] of longint;
 e,k,n,m,i,j,f,ch,r,y,ans,x:longint;

procedure inst(x:longint);
 begin
  inc(e);
  st[e]:=x;
 end;

procedure outst;
 begin
  dec(e);
 end;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);

 readln(n,m,k);

 for i:=1 to m do
 read(s[i]);

 readln;

 for i:=1 to n do
  for j:=1 to n do
   a[i,j]:=0;


 for i:=1 to n do
 begin
  read(ch);
  a[i,ch]:=1;
 end;
 readln;

 read(f);

 for i:=1 to n do
 met[i]:=0;


 ans:=0; x:=0;

 for i:=1 to m do
  begin
   inst(s[i]);
   inc(met[s[i]],1);
   x:=0;
   while (met[f]=ans) and (e<>0) and (x=0)  do
    begin
      j:=1;
      r:=st[e];
      y:=0;
      while (y=0) and (j<=n) do
       begin
        if (a[r,j]=1) and (met[j]<k) then begin
         y:=1; end else inc(j);
       end;
      if y=1 then begin
        inst(j);
        inc(met[j],1);
        if j=f then begin x:=1; inc(ans); end;
        end
      else outst;

  end;
  e:=0;
  end;

 write(ans);

 close(input);
 close(output);
end.
