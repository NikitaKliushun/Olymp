var
a,b:array[1..2001]of string;
c:array[1..2001]of longint;
i,t,n:longint;
s:text;
procedure Transform;
var
i,hh,mm,ss,code:longint;
begin
  for i:=1 to n*2 do begin
    val(copy(a[i],1,2),hh,code);
    val(copy(a[i],4,2),mm,code);
    val(copy(a[i],7,2),ss,code);
    c[i]:=(hh*3600)+(mm*60)+ss;
  end;
end;
procedure Check;
var
i,j,k:longint;
begin
i:=1;k:=1;
  while i<=(2*n) do begin
    j:=1;
    while j<=(2*n) do begin
      if ((c[i]-c[j])=t) then begin
        insert(a[j],b[k],1);
        insert('-',b[k],9);
        insert(a[i],b[k],10);
        c[i]:=0;
        c[j]:=0;
        inc(k);
        j:=(n*2)+1;
      end;
      inc(j);
    end;
    inc(i);
  end;
end;
begin
assign(s,'input.txt');
reset(s);
readln(s,n,t);
  for i:=1 to 2*n do
    readln(s,a[i]);
  close(s);
  Transform;
  Check;
  assign(s,'output.txt');
  rewrite(s);
  for i:=1 to n do
    writeln(s,b[i]);
  close(s);
end.
