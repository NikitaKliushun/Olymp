Program z1;
 Var f1,f2:text;
     n,i,s,k,r,j:integer;
     a:array[1..2000,1..3] of integer;
     b:array[1..2000] of string;
     a1:array[1..3] of integer;
Procedure perev(var z,x,y:integer);
 begin
  if y>=60
   then begin
         inc(x,y div 60);
         y:=y mod 60;
         perev(y,z,x);
        end;
 end;
Procedure reade(var g:integer);
 var c,v:char;
  begin
   read(f1,c);
   read(f1,v);
   g:=(ord(c)-ord('0'))*10+(ord(v)-ord('0'));
   read(f1,c);
   c:='0';
  end;
Procedure poisk(m:integer;var t:integer);
 var u:integer;
 begin
  a1[1]:=24;
  for u:=1 to m do
   begin
    if (a[u,1]<a1[1])
     then begin
           a1[1]:=a[u,1];
           a1[2]:=a[u,2];
           a1[3]:=a[u,3];
           t:=u;
          end
     else if (a[u,2]<a1[2]) and(a[u,1]=a1[1])
           then begin
                 a1[1]:=a[u,1];
                 a1[2]:=a[u,2];
                 a1[3]:=a[u,3];
                 t:=u;
                end
           else if (a[u,3]<a1[3]) and(a[u,1]=a1[1])and (a[u,2]=a1[2])
                 then begin
                       a1[1]:=a[u,1];
                       a1[2]:=a[u,2];
                       a1[3]:=a[u,3];
                       t:=u;
                      end;
   end;
 end;
Begin
 assign(f1,'input.txt');
 reset(f1);
 readln(f1,n,s);
 for i:=1 to n*2 do
  begin
  read(f1,b[i]);
  readln(f1);
  end;
 close(f1);
 assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 readln(f1,n,s);
 for i:=1 to 2*n do
  begin
   reade(a[i,1]);
   reade(a[i,2]);
   reade(a[i,3]);
   readln(f1);
  end;
 for i:=1 to n do
  begin
   poisk(n*2,k);
   inc(a1[3],s);
   perev(a1[1],a1[2],a1[3]);
   j:=1;
   while (a[j,1]<>a1[1])or(a[j,2]<>a1[2])or(a[j,3]<>a1[3]) do
    inc(j);
   writeln(f2,b[k],chr(45),b[j]);
   a[k,1]:=24;
   a[j,1]:=24;
  end;
 close(f1);
 close(f2);
end.
