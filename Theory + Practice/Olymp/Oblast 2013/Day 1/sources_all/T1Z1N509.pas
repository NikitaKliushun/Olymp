{Кальман Владислав Анатольевич, Жодино,10,1}
program task1;
var HH,MM,SS: array [1..1000] of integer;
    HH1,MM1,SS1:integer;
    T,N:integer;
    i,j,j1:integer;
    z:string;
    k:char;
    k1,f,f3,f1:integer;
    t1,t2:text;

procedure find(var MET:integer; FL:byte);
var j3,TEK:integer;
begin
FL:=0;
j3:=met+1;
TEK:=MET;
while (FL<>1) or (j3<>met) do begin
if (HH[Met]=HH[j3]) and (MM[Met]=MM[j3]) and (SS[Met]=SS[j3]) then FL:=1;
                              j3:=j3+1;
                              if j3=i then j3:=1;
                              end;
MET:=TEK;
end;


begin
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
Read(t1,N,T);
readln(t1);
i:=1;
z:='00';
while not EOF(t1) do begin
                 delete(z,1,2);
                 f:=1;
                 while not EOLN(t1) do begin
                                  f1:=1;
                                  while k<>':' do begin
                                                  read(t1,k);
                                  if (f1=1) and (k<>'0') then z:=z+k;
                                  if (f1=2) and (k='0') then z:=z+k;
                                                  f1:=f1+1;
                                                  end;
                                  if f=1 then val(z,HH[i],k1);
                                  if f=2 then val(z,MM[i],k1);
                                  if f=3 then val(z,SS[i],k1);
                                  f:=f+1;
                                  end;
                 i:=i+1;
                 readln(t1);
                 end;
i:=i-1;
j:=1;
while j<=n do begin
                f3:=0;
                j1:=1;
                while j1<=i do begin
                                   HH1:=HH[j1];
                                   MM1:=MM[j1];
                                   SS1:=SS[j1];
                                   SS[j1]:=SS[j1]+T;
                                   if SS[j1]>60 then begin
                                                     SS[j1]:=T mod 60;
                                                     MM[j1]:=MM[j1]+(T div 60);
                                                     end;
                                   if MM[j1]>60 then begin
                                                     MM[j1]:=T mod 3600;
                                                   HH[j1]:=HH[j1]+(T div 3600);
                                                     end;
                                   find(j1,f3);
                                   if f3=1 then begin
                                   if HH1 div 10<>0 then write(t2,'0',HH1)
                                                            else write(t2,HH1);
                                                write(t2,':');
                                        if MM1 div 10<>0 then write(t2,'0',MM1)
                                                            else write(t2,MM1);
                                                write(t2,':');
                                        if SS1 div 10<>0 then write(t2,'0',SS1)
                                                           else write(t2,SS1);
                                                write(t2,'-');
                                 if HH[j1] div 10<>0 then write(t2,'0',HH[j1])
                                                        else write(t2,HH[j1]);
                                                write(t2,':');
                                  if MM[j1] div 10<>0 then write(t2,'0',MM[j1])
                                                     else write(t2,MM[j1]);
                                                write(t2,':');
                                  if SS[j1] div 10<>0 then write(t2,'0',SS[j1])
                                                    else write(t2,SS[j1]);
                                                writeln(t2);
                                                end
                                           else begin
                                                HH[j1]:=HH1;
                                                MM[j1]:=MM1;
                                                SS[j1]:=SS1;
                                                end;
                                   j1:=j1+1;
                                   end;
                j:=j+1;
                 end;
close(t1);
close(t2);

end.
