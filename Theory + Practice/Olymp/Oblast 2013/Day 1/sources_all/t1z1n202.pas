{Ефимович Максим Геннадьевич, г.Солигорск, 9 "Б" класс, №1}
var n,t,i,j:longint;
   h,m,s,code:longint;
   c,c1:string;
   f1,f2:text;
   a:array[1..2000] of longint;
begin
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
read(f1,n);
readln(f1,t);
for i:=1 to 2*n do
  begin
  readln(f1,c);
  c1:=copy(c,1,2);
  val(c1,h,code);
  c1:=copy(c,4,2);
  val(c1,m,code);
  c1:=copy(c,7,2);
  val(c1,s,code);
  a[i]:=(h*3600)+(m*60)+s;
  end;
for i:=1 to n*2 do
  begin
   for j:=1 to n*2 do
      begin
      if (i<>j) and (a[j]>0) and (a[i]>0) and (abs(a[i]-a[j])=t)
        then begin
             if (a[i]>a[j]) then begin
                                 h:=a[j] div 3600;
                                 if h div 10=0 then write(f2,'0',h,':')
                                               else write(f2,h,':');
                                 a[j]:=a[j] mod 3600;
                                 m:=a[j] div 60;
                                 if m div 10=0 then write(f2,'0',m,':')
                                               else write(f2,m,':');
                                 s:=a[j] mod 60;
                                 if s div 10=0 then write(f2,'0',s,'-')
                                               else write(f2,s,'-');
                                 h:=a[i] div 3600;
                                 if h div 10=0 then write(f2,'0',h,':')
                                               else write(f2,h,':');
                                 a[i]:=a[i] mod 3600;
                                 m:=a[i] div 60;
                                 if m div 10=0 then write(f2,'0',m,':')
                                               else write(f2,m,':');
                                 s:=a[i] mod 60;
                                 if s div 10=0 then writeln(f2,'0',s)
                                               else writeln(f2,s);
                                 end;
             if (a[i]<a[j]) then begin
                                 h:=a[i] div 3600;
                                 if h div 10=0 then write(f2,'0',h,':')
                                               else write(f2,h,':');
                                 a[i]:=a[i] mod 3600;
                                 m:=a[i] div 60;
                                 if m div 10=0 then write(f2,'0',m,':')
                                               else write(f2,m,':');
                                 s:=a[i] mod 60;
                                 if s div 10=0 then write(f2,'0',s,'-')
                                               else write(f2,s,'-');
                                  h:=a[j] div 3600;
                                 if h div 10=0 then write(f2,'0',h,':')
                                               else write(f2,h,':');
                                 a[j]:=a[j] mod 3600;
                                 m:=a[j] div 60;
                                 if m div 10=0 then write(f2,'0',m,':')
                                               else write(f2,m,':');
                                 s:=a[j] mod 60;
                                 if s div 10=0 then writeln(f2,'0',s)
                                               else writeln(f2,s);
                                 end;
             a[i]:=0;
             a[j]:=0;
             end;
      end;
  end;
close(f1);
close(f2);
end.
