{Барковский Николай Анатольевич,Воложенский район г.Воложин,9 класс,Z3}
var a,b,c:array[0..100000] of qword;
    n,m,i,j:longint;
    q,w:qword;
    s1,s2,s:string;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 fillchar(a,sizeof(a),0);
 fillchar(c,sizeof(c),0);
 fillchar(b,sizeof(b),0);
 readln(n,m);
 for i:=1 to n do
  begin
   read(a[i]);
   q:=q+a[i];
  end;
 readln;
 for i:=1 to m do
  begin
   read(b[i]);
   w:=w+b[i];
  end;
 if q>w then begin
              b[0]:=q-w;
              w:=q;
             end;
 if q<w then begin
              a[0]:=w-q;
              q:=w;
             end;
 s1:='';
 s2:='';
 s:='';
 j:=1;
 while q>0 do
  begin
   i:=0;
   while (length(s1)<100) and (q>0) do
    begin
     if a[i]=0 then inc(i);
     if i mod 2=0 then s1:=s1+'0'
                  else s1:=s1+'1';
     dec(a[i]);
     dec(q);
    end;
   i:=0;
   while (length(s2)<100) and (w>0) do
    begin
     if b[i]=0 then inc(i);
     if i mod 2=0 then s2:=s2+'0'
                  else s2:=s2+'1';
     dec(b[i]);
     dec(w);
    end;

   while s1<>'' do
    begin
     if s1[1]=s2[1] then s:=s+'0'
                    else s:=s+'1';
     delete(s1,1,1);
     delete(s2,1,1);
    end;
   while s[1]<>'1' do
    delete(s,1,1);
   while s<>'' do
    begin
     if ord(s[1])-48<>j mod 2
      then inc(j);
     inc(c[j]);
     delete(s,1,1);
    end;
  end;
 i:=1;
 while c[i]<>0 do
  begin
   write(c[i],' ');
   inc(i);
  end;
 close(input);
 close(output);
end.
