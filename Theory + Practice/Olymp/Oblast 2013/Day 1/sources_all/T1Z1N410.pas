//Акулов Максим Сергеевич, Несвижский район, 10 класс, 1-ая задача
type nomer = record
     p: integer;
     v: integer;
     end;
var f,v: text;
    b: array [1..100] of nomer;
    a,c: array [1..100] of integer;
    s,u,p,vt,p2,vt2 : string;
    n,t,i,k,j,e,g,des,sot,ed: integer;
    r: byte;
begin
assign (f,'input.txt');
reset (f);

assign (v,'output.txt');
rewrite (v);

readln(f,n,t);


for i:=1 to 2*n do begin
                   readln(f,s);
                   a[i]:=( strtoint(s[1])*10+strtoint(s[2]) )*3600+( strtoint(s[4])*10+strtoint(s[5]) )*60+( strtoint(s[7])*10+strtoint(s[8]));
                   c[i]:=a[i];
                   end;
for k:=1 to 2*n do
for j:=1 to 2*n do begin
                     if (c[k]+t)=c[j] then begin
                                           inc(e);
                                           
                                           b[e].p:=k;
                                           b[e].v:=j;
                                           
                                           c[k]:=0;
                                           c[j]:=0;
                                           end;
                     end;
k:=e;
e:=1;
 while (b[e].p<>0) and (b[e].v<>0) do begin
                                                                            des:=a[b[e].p] div 3600;
                                      sot:=(a[b[e].p]-(a[b[e].p] div 3600)*3600)div 60;
                                      ed:=a[b[e].p]-(a[b[e].p] div 3600)*3600-((a[b[e].p]-(a[b[e].p] div 3600)*3600) div 60)*60;
                                      
                                      if des<10 then p:='0'+inttostr(des)+':'else p:=inttostr(des)+':';
                                      
                                      if sot<10 then p:=p+'0'+inttostr(sot) else p:=p+inttostr(sot);
                                      
                                      if ed<10 then p:=p+':'+'0'+inttostr(ed) else p:=p+':'+inttostr(ed);
                                      //**
                                      des:=a[b[e].v] div 3600;
                                      sot:=(a[b[e].v]-(a[b[e].v] div 3600)*3600) div 60;
                                      ed:=a[b[e].v]-(a[b[e].v] div 3600)*3600-((a[b[e].v]-(a[b[e].v] div 3600)*3600) div 60)*60;
                                      
                                      if des<10 then vt:='0'+inttostr(des)+':'else vt:=inttostr(des)+':';

                                      if sot<10 then vt:=vt+'0'+inttostr(sot) else vt:=vt+inttostr(sot);

                                      if ed<10 then vt:=vt+':'+'0'+inttostr(ed) else vt:=vt+':'+inttostr(ed);
                                      


                                      
                                      write (v,p,'-',vt);
                                      if (b[e+1].p<>0) and (b[e+1].v<>0) then writeln;
                                      
                                      inc(e);
                                      end;
 close (f);
close (v);

end.