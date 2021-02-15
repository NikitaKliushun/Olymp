program z1;
label zz;
var a:array[1..100,1..2] of byte;
    i,j,n,m,k,t,w:longint;
    p:boolean;


procedure null;
begin
  for j:=1 to n do
  if a[j,1]=0 then
    begin
    writeln(j);
    inc(a[j,1]);
    dec(m);
    end;
end;

procedure post;
begin
  for i:=1 to n do
  if a[j,1]=a[j,2] then
    begin
    writeln('-',i);
    dec(a[j,1]);
    dec(m);
    end;
end;



begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

readln (n,k);

for i:=1 to n do readln(a[i,1],a[i,2]);

for i:=1 to n do
begin
  t:=t+a[i,1];
  w:=w+a[i,2];
end;

if t<k then
   begin
     p:=true;
     m:=(k-t)
   end
   else
   begin
     p:=false;
     m:=(t-k);
   end;

writeln (m);

null;
post;

i:=1;
while (m>0) do
begin
  zz:
  if (a[i,1]>0) and (a[i,1]<a[i,2]) then //2
    if p then                              //1
    begin
       writeln(i);
       inc(a[i,1]);
    end
    else
    begin
       writeln('-', i);
       dec(a[i,1]);
    end                                    //1
  else if i=n then break
  else
  begin
    inc(i);
    goto zz;                               // goto
  end;                                     //2
  dec(m);
end;

close(input);
close(output);
end.
