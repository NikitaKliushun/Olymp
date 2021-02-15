var
cod,cc,c,max,f,p,l,ii,i,j,zz,ans:longint;
s1,s:string;
a:array[1..255] of Real;
z:array[1..255] of Char;
pr:array[1..255] of longint;


Procedure Sol;
begin
 i:=1;
 ii:=1;
 s1:='';
 p:=0;
 f:=0;
 while i<=l do
 begin
  if s[i] in ['0'..'9'] then begin
                                s1:='';
                                while s[i] in ['0'..'9'] do
                                begin
                                 s1:=s1+s[i];
                                 Inc(i);
                                end;
                                Val(s1,a[ii],cod);
                                Inc(ii);
                             end;
 if s[i] in ['+','-','*','/'] then begin
                                    if s[i] in ['+','-'] then begin
                                                                Inc(p);
                                                                pr[ii]:=p;
                                                                if s[i]='+' then z[ii]:='+';
                                                                if s[i]='-' then z[ii]:='-';
                                                                if f=0 then p:=0;
                                                              end;
                                    if s[i] in ['*','/'] then begin
                                                                p:=p+2;
                                                                pr[ii]:=p;
                                                                if s[i]='*' then z[ii]:='*';
                                                                if s[i]='/' then z[ii]:='/';
                                                                if f=0 then p:=0;
                                                              end;
                                   end;
 if s[i] in ['(',')'] then begin
                            if s[i] = '(' then begin
                                                 f:=1;
                                                 p:=p+2;
                                               end;
                            if s[i] = ')' then begin
                                                 f:=0;
                                                 p:=p-2;
                                               end;
                           end;
 Inc(i);
 end;
end;


Begin
 Assign(input,'Input.txt');
 ReSet(input);
  ReadLn(s);
 Close(input);
 l:=Length(s);
 Sol;
 Assign(output,'Output.txt');
 ReWrite(output);
 max:=0;
 i:=l-1;
 while i>1 do
 begin
  if z[i]='-' then a[i+1]:=a[i-1]-a[i];
  if z[i]='+' then a[i+1]:=a[i-1]+a[i];
  if z[i]='*' then a[i+1]:=a[i-1]*a[i];
  if z[i]='/' then a[i+1]:=a[i-1]/a[i];
  Dec(i);
 end;
  WriteLn(a[l]:0:0);
 Close(output);
End.