{Davidovich Vadim Vitalievich, Molodechno, gimnasia N7, 11"B" klass, Zadacha 2 "Pochtaliony"}
program T1Z2N105;
var
  fI,fO: text;
  a,c: int64;
  i:longint;
  Ans:int64;
function al(q,w,e:int64):boolean;
  begin
    if (e mod w = 0) and (w mod q = 0) then al:=true else al:=false;
  end;
Begin
  assign(fI, 'input.txt');
  assign(fO,'output.txt');
  reset(fI);
  rewrite(fO);
  readln(fI,a,c);
  Ans:=0;
  {========================}
  for i:=a to c do
    if al(a,i,c)=true then Ans:=Ans+1;
  {========================}
  writeln(fO,Ans);
  close(fI);
  close(fO);
End.
