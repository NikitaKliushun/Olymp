program T2Z2N110;
var a:array[1..100000] of longint;
    i,n,m,k,min,max,i1,i2,n1,n2,ii1,ii2,in1,in2:longint;
    x:boolean;
procedure mm(var nekr,i1,i2:longint);
 var min,max,i:longint;
 begin
 min:=1000000000; max:=a[1];
 i1:=1; i2:=1;
 for i:=2 to n do
   begin
   if (min>a[i]) and (a[i]<>0) then begin  min:=a[i]; i1:=i; end;
   if max<a[i] then begin  max:=a[i]; i2:=i; end;
   end;
   nekr:=max-min;
   end;


   begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);

readln(n,k);
for i:=1 to n do
 read(a[i]);
m:=n;
mm(n1,i1,i2);
//writeln(n1,' ',i1,' ',i2) ;
x:=true;
while x do
  begin
  ii1:=a[i1]; ii2:=a[i2];
  a[i1]:=0; a[i2]:=0;
  mm(n2,in1,in2);
  //writeln(n2,' ',in1,' ',in2);
  if n2>=n1 then begin
                 a[i1]:=ii1; a[i2]:=ii2; x:=false;
                end
           else begin
                if a[in1]-a[i1]>a[in2]-a[i2] then a[i2]:=ii2
                                          else a[i1]:=ii1;
                n1:=n2; i1:=in1; i2:=in2;
                end;
  m:=m-1;
  if m<=k then x:=false;
  end;
m:=0;
for i:=1 to n do
if a[i]<>0 then m:=m+1;
writeln(m);
for i:=1 to n do
if a[i]<>0 then write(i,' ');
Close(input); Close(output);
end.



