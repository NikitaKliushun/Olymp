{Pivovarevich Vitaly Igorevich, g. Vileyka, shkola 3, zadacha 3, tur 2}
Program T2Z3NA06;
Var f1,f2:text;
n,resu,next:word;
ki,ku:longint;
k:byte;
a:array [1..1000] of word;
b:array [1..1000] of word;
fa:array [1..1000000] of boolean;

Procedure cou;
Var j,res:longint;
bo:boolean;
Begin
  bo:=false;
  res:=0;
  next:=1;
  While (ku<=ki) do
         Begin
         bo:=(bo=false);
         If bo=true then for j:=1 to n do
                             Begin
                             If (next=a[j]) then begin inc(next); a[j]:=0; inc(res); end
                                            Else If (fa[ku]=true) and (next<a[j]) then
                                                     Begin
                                                     While (next<a[j]) do inc(next);
                                                     inc(next);
                                                     inc(res);
                                                     a[j]:=0;
                                                     end;
                             ku:=ku+1;
                             end
                       else for j:=n downto 1 do
                             Begin
                             If (next=a[j]) then begin inc(next); a[j]:=0; inc(res); end
                                            Else If (fa[ku]=true) and (next<a[j]) then
                                                     Begin
                                                     While (next<a[j]) do inc(next);
                                                     inc(next);
                                                     inc(res);
                                                     a[j]:=0;
                                                     end;
                             ku:=ku+1;
                             end;
         end;
  If res>resu then resu:=res;
end;

Procedure backup;
Var i:word;
Begin
  For i:=1 to n do a[i]:=b[i];
end;

Procedure act(i:longint);
Begin
   fa[i]:=false;
   If i<ki then act(i+1)
           Else Begin
                  ku:=1;
                  cou;
                end;
   backup;
   Fa[i]:=true;
   If i<ki then act(i+1)
           Else Begin
                  ku:=1;
                  cou;
                end;
   backup;
end;

Begin
  Assign(f1,'input.txt');
  Assign(f2,'output.txt');
  Reset(f1);
  Readln(f1,n,k);
  For n:=1 to n do read(f1,b[n]);
  For n:=1 to n do a[n]:=b[n];
  Close(f1);
  ki:=n*k;
  Act(1);
  Rewrite(f2);
  Writeln(f2,resu);
  Close(f2);
end.

