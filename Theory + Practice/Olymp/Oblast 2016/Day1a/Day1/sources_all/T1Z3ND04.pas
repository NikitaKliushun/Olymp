type
  ansistring=string;
var
  ss:ansistring;
  c:char;
  //i,n:longint;
  f1,f2:text;
  n:longint;
  a:array[1..1000] of longint;
{ procedure sort;
  var
    i,j,d:longint;
  begin
   for i := 1 to n-1 do
    for j := 1 to n-i do
     if a[j]>a[j+1] then 
                        begin
                         d:=a[
                        end;
  end;}
 function check(s:string):boolean;
  var
    i,j,k:longint;
    f:boolean;
  begin 
   f:=true;
   for i := 1 to length(s) do
    for j := 1 to length(s) do
     for k := 1 to length(s) do
      if (i<j) and (j<k) and (s[i]=s[k]) and (s[i]<>s[j]) then begin check:=false; exit; end;
   check:=f;
  end; 
 procedure fucs(s:ansistring; x:char);
  var
    i:longint;
    f:boolean;
  begin
   i:=1;
   for i:= 1 to length(s) do
    if s[i]<>x then break; 
    c:=s[i]; 
   i:=1;
   while (pos(c,s)<>0) and (length(s)>0) do
    delete(s,pos(c,s),1);  
  f:=check(s);
   if f=true then begin writeln(f2,length(s)); exit; end
             else if (f=false) and (length(s)>0) then fucs(s,c)
                                                 else if (f=false) and (length(s)=0) then fucs(ss,c); 
  end;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'ouput.txt');
rewrite(f2);
readln(f1,n);
ss:='';
 while not eof(f1) do
  begin
   read(f1,c);
   if c in ['1'..'9'] then ss:=ss+c;
  end;
if check(ss)=true then writeln(f2,length(ss))
                 else fucs(ss,'0');
close(f1);
close(f2);
end.