{Davidovich Vadim Vitalievich, Molodechno, gimnasia N7, 11"B" klass, Zadacha 1 "Windows 1000"}
program T2Z1N105;
label
  bol,men,kon;
var
  n:byte;    {kol-vo yashchikov}
  k:integer; {zakazano kopiy}
  a:array[1..1000] of integer; {kol-vo kopiy v yashchike}
  p:array[1..1000] of integer; {vmestitelnost yashchika}
  fI,fO:text; {fayly}
  i,l:integer; {schotchik}
  m:integer; {vremya}
  q:integer;
  mxb:integer;
  mnb:integer;
  Ans:array[1..10000] of integer;
Begin
  assign(fI,'input.txt');
  assign(fO,'output.txt');
  reset(fI);
  rewrite(fO);
  readln(fI,n,k);
  for i:=1 to n do
    readln(fI,a[i],p[i]);
  l:=0;
  mxb:=0;
  mnb:=1001;
  {==============================}
  for i:=1 to n do
    q:=q+a[i];
  if q>k then goto bol;
  if q<k then goto men;
  if q=k then goto kon;
  {==============================}
  bol:
  for i:=1 to n do
    if a[i]>mxb then mxb:=i;
  repeat
    a[mxb]:=a[mxb]-1;
    q:=q-1;
    m:=m+1;
    l:=l+1;
    Ans[l]:=(mxb*(-1));
  until (a[mxb]=0) or (q=k);
  if q=k then goto kon else goto bol;
  {==============================}
  men:
  for i:=1 to n do
    if a[i]<mnb then mnb:=i;
  repeat
    a[mnb]:=a[mnb]+1;
    q:=q+1;
    m:=m+1;
    l:=l+1;
    Ans[l]:=mnb;
  until (a[mnb]=p[mnb]) or (q=k);
  if q=k then goto kon else goto men;
  {=============================}
  kon:
  writeln(fO,m);
  for i:=1 to m do
    writeln(fO,Ans[i]);
  close(fI);
  close(fO);
End.


