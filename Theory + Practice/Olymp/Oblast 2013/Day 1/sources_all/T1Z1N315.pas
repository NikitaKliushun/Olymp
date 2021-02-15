

var
T,N,n2,code,i,j:integer;
sort:longint;
c1,c2,c3,c4,c5,c6:integer;
v1,v2,v3,v4,v5,v6:real;
hh:array[1..20000] of longint;
mm:array[1..20000] of longint;
ss:array[1..20000] of longint;
vr:array[1..20000] of string;
ps:array[1..20000] of longint;
s,s1,s2,s3,s4,s5,z,s6:string;


begin
assign(input,'in.txt');
reset(input);
assign(output,'out.txt');
rewrite(output);

read(N,T);
n2:=n*2;

 for i:=1 to n2+1 do
 readln(vr[i]);

  for i:=1 to n2+1 do
   begin
     s:=copy(vr[i],1,2);
     val(s,hh[i],code);
     s:=copy(vr[i],4,2);
     val(s,mm[i],code);
     s:=copy(vr[i],7,2);
     val(s,ss[i],code) ;
  end;

   for i:=1 to n2+1 do
  begin
    ps[i]:=ps[i]+hh[i]*3600;
    ps[i]:=ps[i]+mm[i]*60;
    ps[i]:=ps[i]+ss[i];
 end;


    for i:=3 to n2+1 do
     begin
       if ps[i]<ps[i-1] then
        begin
         sort:=ps[i];
         ps[i]:=ps[i-1];
         ps[i-1]:=sort;
        end;
       end;
                  {
  for i:=1 to n2+1 do
  writeln(ps[i]);}


for i:=2 to n2+1 do

 if ps[i]+t=ps[i+1] then
 begin
 v1:=trunc(ps[i]/3600);
 v2:=trunc((ps[i]-(v1*3600))/60);
 v3:=trunc(ps[i]-(v1*3600+v2*60));
 v4:=trunc(ps[i+1]/3600);
 v5:=trunc((ps[i+1]-(v4*3600))/60);
 v6:=trunc(ps[i+1]-(v4*3600+v5*60));

  c1:=trunc(v1);
  c2:=trunc(v2);
  c3:=trunc(v3);
  c4:=trunc(v4);
  c5:=trunc(v5);
  c6:=trunc(v6);

  if v1=0 then
  begin
  str(c1,s1); s1:=s1+'0'end else str(c1,s1);

  if v2=0 then  begin
  str(c2,s2);s2:=s2+'0'end else str(c2,s2);

  if v3=0 then
  begin
  str(c3,s3);s3:=s3+'0'end else str(c3,s3);

  if v4=0 then begin
  str(c4,s4);s4:=s4+'0' end else str(c4,s4);

  if v5=0 then begin

  str(c5,s5);s5:=s5+'0'end else str(c5,s5);

  if v6=0 then begin

  str(c6,s6);s6:=s6+'0'end else str(c6,s6);

   z:='0';
           if (s1='1') or(s1='2') or(s1='3') or(s1='4')
           or(s1='5') or(s1='6') or(s1='7') or(s1='8') or(s1='9') then
            insert(z,s1,0);
   //s2

  if (s2='1') or (s2='2') or (s2='3')
  or (s2='9')or (s2='8')or (s2='7')or (s2='4')or (s2='5')or (s2='6')   then
            insert(z,s2,0);

 if  (s3='1')  or (s3='2') or (s3='3') or (s3='4') or (s3='5') or (s3='6')
  or (s3='7') or (s3='8') or (s3='9')     then
            insert(z,s3,0);
              //s4
 if    (s4='1') or (s4='2') or (s4='3') or (s4='4') or (s4='5')
  or (s4='6') or (s4='7') or (s4='8') or (s4='9')   then
            insert(z,s4,0);

   //s5
if    (s5='1')or (s5='2') or (s5='3') or (s5='4') or (s5='5') or (s5='6')
or (s5='7') or (s5='8') or (s5='9')   then
            insert(z,s5,0);
     //s6
if (s6='1')or (s6='2')or (s6='3')or (s6='4')or (s6='5')or (s6='6')
or (s6='7')or (s6='8')or (s6='9')  then
            insert(z,s6,0);






  writeln(s1:0,':',s2:0,':',
 s3:0,'-',s4:0,':',s5:0,':',s6:0);




 ps[i]:=0;
 ps[i+1]:=0;
 end;

close(input);
close(output);




end.





