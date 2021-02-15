{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q-,R-,S+,T-,V+,X+}
{$M 65520,0,655360}
{
(C) Чернушевич Игорь Леонидович
}
 const
    NameIn = 'input.txt';
    NameOut= 'output.txt';
 type
    zapis = record
       x,y:byte;
    end;
 var
   mas              : array [1..100] of zapis;
   kol,a,b,i,n      : integer;
   f,f1             : text;
   m                : array [1..100] of byte;
   p                : zapis;
   s,s1,s2          : string;



procedure InputData;
 begin
   FillChar(m,SizeOf(m),0);
   Assign(f,NameIn);
   ReSet(f);
   Assign(f1,NameOut);
   ReWrite(f1);
   ReadLn(f,n);
   if n = 1 then begin
                   WriteLn(f1,'YES');
                   Close(f1);
                   Halt;
                 end;
   kol:=0;
   for i:=1 to n do
    begin
      ReadLn(f,a,b);
      if a<>b then begin 
                     Inc(kol);
                     mas[kol].x:=a;
                     mas[kol].y:=b;
                   end;    
    end;
   Close(f);
end;

procedure Per(z:integer);
var
  j,cod : integer;
  p     : integer;
  s_vrem: string;

function Podhodit_Lev:boolean;
begin
  Val(s[1],p,cod);
  if (p = mas[j].x) or (p = mas[j].y) then Podhodit_Lev:=true
                                      else Podhodit_Lev:=false;
end;

function Podhodit_Pr:boolean;
begin
  Val(s[Length(s)],p,cod);
  if (p = mas[j].x) or (p = mas[j].y) then Podhodit_Pr:=true
                                      else Podhodit_Pr:=false;
end;

begin
  for j:=1 to kol do
   begin
     if Length(s)-1 = kol then begin
                                 WriteLn(f1,'YES');
                                 Close(f1); 
                                 Halt;
                               end;
     if (m[j]=0) and (Podhodit_Lev) then
                              begin
                                m[j]:=1;
                                if mas[j].x = p then Str(mas[j].y,s_vrem)
                                                else Str(mas[j].x,s_vrem);
                                s:=s_vrem + s;
                                Per(z+1);
                                m[j]:=0;
                                Delete(s,1,1);
                              end;
     if (m[j]=0) and (Podhodit_Pr) then
                              begin
                                m[j]:=1;
                                if mas[j].x = p then Str(mas[j].y,s_vrem)
                                                else Str(mas[j].x,s_vrem);
                                s:=s + s_vrem;
                                Per(z+1);
                                m[j]:=0;
                                Delete(s,Length(s),1);
                               end;
     end;
end;


 begin
    InputData;
    for i:=1 to kol do
     begin
       m[i]:=1;
       s:='';
       Str(mas[i].x,s1);
       Str(mas[i].y,s2);
       s:=s1+s2;
       Per(i);
     end;
    WriteLn(f1,'NO');
    Close(f1);  
  end.