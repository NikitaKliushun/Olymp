//Белько Руслан Александрович, г. Молодечно, 9 "А", задача N2
program T2Z2NB02;
var
  f1,f2:text;
  p:byte;
  m,n,i,j:integer;
  max,min:longint;
  h,b,h1,b1,k,mp:array[0..3000] of longint;
  me:array[1..3000] of byte;

procedure qsort1(l,r:integer);
var i,j:integer;
    x,c:longint;
begin
  i:=l; j:=r; x:=h1[(l+r) div 2];
  while i<=j do
        if h1[i]<x then i:=i+1
                  else if h1[j]>x then j:=j-1
                                 else begin
                                      c:=h1[i]; h1[i]:=h1[j]; h1[j]:=c;
                                      i:=i+1; j:=j-1;
                                      end;
  if i<r then qsort1(i,r);
  if j>l then qsort1(l,j);
end;

procedure qsort2(l,r:integer);
var i,j:integer;
    x,c:longint;
begin
  i:=l; j:=r; x:=b1[(l+r) div 2];
  while i<=j do
        begin
        if b1[i]>x then i:=i+1
                else if b1[j]<x then j:=j-1
                        else begin
                             c:=b1[i]; b1[i]:=b1[j]; b1[j]:=c;
                             i:=i+1; j:=j-1;
                             end;
        end;
  if i<r then qsort2(i,r);
  if j>l then qsort2(l,j);
end;

procedure qsort3(l,r:integer);
var i,j:integer;
    x,c:longint;
begin
  i:=l; j:=r; x:=k[(l+r) div 2];
  while i<=j do
        if k[i]<x then i:=i+1
                else if k[j]>x then j:=j-1
                        else begin
                             c:=k[i]; k[i]:=k[j]; k[j]:=c;
                             i:=i+1; j:=j-1;
                             end;
  if i<r then qsort3(i,r);
  if j>l then qsort3(l,j);
end;

procedure qsort4(l,r:integer);
var i,j:integer;
    x,c:longint;
begin
  i:=l; j:=r; x:=mp[(l+r) div 2];
  while i<=j do
        if mp[i]<x then i:=i+1
                else if mp[j]>x then j:=j-1
                        else begin
                             c:=mp[i]; mp[i]:=mp[j]; mp[j]:=c;
                             i:=i+1; j:=j-1;
                             end;
  if i<r then qsort4(i,r);
  if j>l then qsort4(l,j);
end;

begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  rewrite(f2);
  readln(f1,m,n);

  for i:=1 to m do
        begin
        read(f1,h[i]);
        h1[i]:=h[i];
        end;
  readln(f1);
  for i:=1 to n do
        begin
        read(f1,b[i]);
        b1[i]:=b[i];
        end;

  qsort1(1,m);
  qsort2(1,n);

  i:=1;
  while h[i]<>0 do
        begin
        k[i]:=h1[i]+b1[i];
        i:=i+1;
        end;

  qsort3(1,m);

  p:=0;
  for i:=1 to m-1 do
        begin
        for j:=i+1 to m do
                if k[i]>=k[j] then
                        begin
                        p:=1;
                        break;
                        end;
        if p=1 then break;
        end;

  if p=1 then write(f2,'-1')
         else
          begin
          for i:=1 to m do
          for j:=1 to n do
                if (b1[i]=b[j]) and (me[j]=0) then
                        begin
                        mp[i]:=j;
                        me[j]:=1;
                        break;
                        end;
          qsort4(1,m);
          for i:=1 to m do
                if i<>m then write(f2,mp[i],' ')
                        else write(f2,mp[i]);
          end;

  close(f1);
  close(f2);
end.
