program Z1;
var
  pn,pk,x,n,k,i,j,l,o2,o1,p,t,m,max:longint;
  o:array[0..1000] of longint;
  a,b:array[1..100] of longint;
  f1,f2:text;
procedure sort;
var
   i,t:longint;
begin
    for i:= 1 to n do
     if (i<n) and (a[i]>a[i+1]) then
      begin
       t:=a[i];
       a[i]:=a[i+1];
       a[i+1]:=t;
      end
end;

procedure in_o(x:longint);
begin
  o[o1]:=x;
  o1:=o1+1;
  if o1>1000 then o1:=0;
end;
procedure out_o(var x:longint);
begin
  x:=o[o2] ;
  o2:=o2+1;
  if o2>1000 then o2:=0;
end;

begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,n,k);
  fillchar(a,sizeof(a),0);
  fillchar(b,sizeof(b),0);
  fillchar(o,sizeof(o),0);

  for i:= 1 to n do
    read(f1,a[i]);
  for i:= 1 to n-1 do
    sort;


  max:=0;
  o1:=0;
  o2:=0;


  x:=a[1];
  pn:=1;
  pk:=1;
  t:=1;
  for i:= 2 to n do
    begin
      if x=a[i] then begin pk:=pk+1; end
       else
      begin
        in_o(pn);
        in_o(pk);
        in_o(x);
        pn:=i;
        pk:=i;
        x:=a[i];
      end
    end;

  in_o(pn);
  in_o(pk);
  in_o(x);

  j:=1;

  while o1<>o2 do
  begin
   out_o(pn);
   out_o(pk);
   out_o(x);
   if ((pk-pn+1) mod k=0) then
     begin
      for i:= 1 to (pk-pn+1) div k  do
      begin
        b[j]:=x;
        max:=max+1;
        inc(j);
      end
       end  else if ((pk-pn+1) div k>0) then
       begin
       for i:= 1 to (pk-pn+1) div k do
       begin
         b[j]:=x;
         max:=max+1;
         inc(j);
       end;

     end

  end;








  writeln(f2,max);

  if max <> 0 then
  for i:= 1 to max do
    write(f2,b[i],' ');



  close(f1);
  close(f2);
end.
