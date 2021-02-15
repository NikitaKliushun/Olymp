{Davidovich Vadim Vitalievich, Molodechno, gimnasia N7, 11"B" klass, Zadacha 1 "Elektronnyy Zhurnal"}
program T1Z1N105;
var
  fI,fO:text;
  n:integer;
  t:word;
  q:array[1..2000] of string[8];
  qq:array[1..2000] of word;
  i,j:integer;
  Ans:array[1..1000] of string[17];
  k:integer;
function tm(s:string):integer;
 var
   h1,h2:integer;
   m1,m2:integer;
   s1,s2:integer;
   h,m,sk:integer;
   err:integer;
 begin
   val(s[1],h1,err);
   val(s[2],h2,err);
   val(s[4],m1,err);
   val(s[5],m2,err);
   val(s[7],s1,err);
   val(s[8],s2,err);
   {==================}
   h:=(h1*10)+h2;
   m:=(m1*10)+m2;
   sk:=(s1*10)+s2;
   {==================}
   tm:=(h*3600)+(m*60)+sk;
 end;
Begin
  {==============READING================}
  assign(fI,'input.txt');
  assign(fO,'output.txt');
  reset(fI);
  rewrite(fO);
  readln(fI,n,t);
  for i:=1 to n*2 do
    readln(fI,q[i]);
  k:=1;
  {============MASSIV-SECONDS===============}
  for i:=1 to n*2 do
    qq[i]:=tm(q[i]);
  {============MASSIV-OPERATIONS==============}
  for i:=1 to n*2 do
    for j:=1 to n*2 do
      if qq[i]-qq[j]=t then begin
        Ans[k]:=q[j]+chr(45)+q[i];
        k:=k+1;
        qq[i]:=0;
        qq[j]:=0; end;
  {=============OUTPUT-CLOSING===============}
  for i:=1 to n do
    writeln(fO,Ans[i]);
  close(fI);
  close(fO);
End.
