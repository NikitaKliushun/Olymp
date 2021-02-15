var f:text;
    tek,d,i,co,j,te,num,kol:longint;
    ans:int64;
    a:array[0..10000]of longint;
begin
 assign(f,'input.txt');
 reset(f);
 read(f,d);
 close(f);
 i:=d;
 tek:=2;
  while i>1 do
   begin
    if i mod tek =0
     then begin inc(kol);a[kol]:=tek; i:=i div tek;end
     else inc(tek);
   end;

 co:=1;
 ans:=1;
 for i:=2 to kol+1 do
  begin
   if a[i]=a[i-1]
    then inc(co)
    else
     begin
      co:=co mod 3;
      if co=1
       then co:=2
       else
      if co=2
       then co:=1;
      for j:=1 to co do
       ans:=ans*a[i-1];
      co:=1;
     end;
  end;

assign(f,'output.txt');
rewrite(f);
write(f,ans);
close(f);

end.
