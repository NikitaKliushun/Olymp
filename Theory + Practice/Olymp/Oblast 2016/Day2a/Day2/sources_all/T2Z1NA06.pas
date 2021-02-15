{Pivovarevich Vitaly Igorevich, g. Vileyka, shkola 3, klass 11A, zadacha 1, tur 2}
Program T2Z1NA06;
Var f1,f2:text;
m,w,resu,mc,wc,dc,t,b:longint;
d:array [1..100000] of longint;
Begin
  Assign(f1,'input.txt');
  Assign(f2,'output.txt');
  Reset(f1);
  Readln(f1,m,w);
  For m:=1 to m do Read(f1,d[m]);
  Readln(f1,wc,b,t);
  Close (f1);
  Resu:=0;
  dc:=1;
  mc:=1;
  repeat
    If (wc=b) and (dc=t) then resu:=resu+1;
    Inc(wc);
    If wc>w then wc:=1;
    Inc(dc);
    If (dc>d[mc]) and (mc<m) then
        Begin
        Inc(mc);
        dc:=1;
        end
  until (dc>d[mc]) and (mc=m);
  Rewrite(f2);
  Writeln(f2,resu);
  Close(f2);
end.
  

  
  
  