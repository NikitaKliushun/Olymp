{Pivovarevich Vitaly Igorevich, g.Vileyka, shkola 3 , klass 11A, zadacha 3,tur 1}
Program T1Z3NA06;
Var f1,f2:text;
n,m,e:longint;
p:byte;
max:byte;
a:array [1..100000] of byte;
sovp:array [1..100] of longint;
deb:array [1..100] of longint;
Begin
  Assign(f1,'input.txt');
  Assign(f2,'output.txt');
  Reset(f1);
  Readln(f1,n);
  For e:=1 to n do
      Begin
      Read(f1,a[e]);
      inc(sovp[a[e]]);
      If sovp[a[e]]=1 then deb[a[e]]:=e;
      end;
  Close (f1);
  max:=1;
  For p:=1 to 100 do
      Begin
      If sovp[max]<sovp[p] then max:=p;
      end;
  For m:=n downto deb[max] do
      If (a[m]<>max) and (a[m]>0) then
                          Begin
                          deb[a[m]]:=0;
                          sovp[a[m]]:=0;
                          For e:=1 to n do
                              If a[e]=a[m] then a[e]:=0;
                          end;
  For e:=1 to n do If a[e]=0 then dec(n);
  For p:=1 to 100 do
  If (sovp[p]>1) and (a[p]<>max) then n:=n-sovp[p];
  Rewrite(f2);
  Writeln(f2,n);
  Close(f2);
end.
                                 
                                 
                                 
                                 
                                 
                          
                          
                          
 
  
  