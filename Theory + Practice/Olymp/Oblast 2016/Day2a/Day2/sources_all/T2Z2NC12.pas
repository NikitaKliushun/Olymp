  program z2;
  var m,n,i,i1,num1,num2:integer;h,m11,m22:array[1..100] of integer;m1,m2:integer;t:text;label 1;
  begin
  assign(t,'input.txt');
  reset(t);
  read(t,m);readln(t,n);
  if m=1 then begin read(t,m1);close(t);m:=3; goto 1;end else
  read(t,m1);readln(t,m2);
  for i:=1 to n do begin read(t,h[i]);end;close(t);
  for i:=1 to n do begin
  m11[i]:=m1+h[i];
  m22[i]:=m2+h[i];end;
  for i:=1 to n-1 do begin
  for i1:=i+1 to n do begin
  num1:=i;num2:=i1;
  if m11[i]<m22[i1] then begin m:=0;break;end;
  if m22[i]<m11[i1] then begin m:=0;break;end;
  end;if m=0 then break;end;
  1:assign(t,'output.txt');
  rewrite(t);
  if m=0 then write(t,num1,' ',num2) else begin if m<>3 then write(t,'-1');   end;
  if m=3 then write(t,'1');
  close(t);
  end.
