{Юнцевич Михатил Олегович Минский район 11 з.1}
Program z1;
Var i,j,k,n,z,p,l,code:integer;  t:real; u:string;  a:array[1..10000] of string; s:array[1..10000] of string; f1,f2:text;
Begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);
  readln(f1,n,t); k:=2*n;
  for i:=1 to k do
  readln(f1,a[i]);
  if t<60 then t:=round(t)else
  if t<360  then t:=round((t/60)*100)else
  if t<3600  then t:=round((t/360)*1000)else
  if t<36000 then t:=round((t/3600)*10000)else
  if t<42300  then t:=round((t/36000)*100000);
  for i:=1 to k do
    begin
       delete(a[i],3,1);
       delete(a[i],5,1);
    end;
  l:=1;
  for i:=1 to k do
    for j:=2 to k-1 do
    begin
      val(a[i],z,code);
      val(a[j],p,code);
      if z-p=t then
        begin
          s[l]:=a[i]+'-'+a[j];
          l:=l+1;
        end;
      if p-z=41 then  begin s[l]:=a[i]+'-'+a[j]; l:=l+1; end;
      if z-p=41 then  begin s[l]:=a[i]+'-'+a[j]; l:=l+1; end;
      if p-z=4100 then  begin s[l]:=a[i]+'-'+a[j]; l:=l+1; end;
      if z-p=4100 then  begin s[l]:=a[i]+'-'+a[j]; l:=l+1; end;
      if p-z=4041 then  begin s[l]:=a[i]+'-'+a[j]; l:=l+1; end;
      if z-p=4041 then  begin s[l]:=a[i]+'-'+a[j]; l:=l+1; end;
      if p-z=t then
         begin
           s[l]:=a[i]+'-'+a[j];
           l:=l+1;
         end;
    end;
  for i:=1 to l-1 do
  begin
    u:=':';
    insert(u,s[i],3);
    insert(u,s[i],6);
    insert(u,s[i],12);
    insert(u,s[i],15);
    writeln(f2,s[i],' ');
  end;
  close(f1);
  close(f2);

end.
