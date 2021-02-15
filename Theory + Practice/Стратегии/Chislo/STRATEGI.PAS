{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q+,R+,S+,T-,V+,X+}
{$M 16384,0,655360}
Program Wyi_strategiya;
const
b:array[1..3] of integer=(1,2,3);
var
n,k,i:integer;
a:array[1..999] of byte;

  Procedure Inp;
  begin
  Assign(Input,'Input.txt');
  Reset(Input);
  Readln(n);
  Close(Input);
  Assign(Output,'Output.txt');
  ReWrite(Output);
  end;

  Procedure Init;
  begin
   for i:=1 to 997 do
   a[i]:=1;
  a[999]:=1;
  a[998]:=0;
  end;

  Procedure Edin;
  begin
  for i:=997 downto 1 do
   begin
   Inc(k);
   if k=4 then begin
                 a[i]:=0;
                 k:=0;
                 end;
   end;
  end;

  Procedure Des(j,kol:integer);
  begin
     while (j>0) and (j-10>0) do
     begin
     Inc(kol);
     if kol<>4 then a[j-10]:=1
               else kol:=0;

     j:=j-10;
     end;
  end;

  Procedure Sotni(j,kol:integer);
  begin
     while (j>0) and (j-100>0) do
     begin
     Inc(kol);
     if kol<>4 then a[j-100]:=1
               else kol:=0;

     j:=j-100;
     end;
  end;

  Procedure Resh;
  begin
  if a[n]=1 then begin
                 writeln('Первый выигрывает');
                 for i:=1 to 3 do
                  begin
                  if (n+b[i]<999) and (a[n+b[i]]=0)
                         then write(n+b[i],' ');
                  if (n+10*b[i]<999) and (a[n+10*b[i]]=0)
                         then write(n+10*b[i],' ');
                  if (n+100*b[i]<999) and (a[n+100*b[i]]=0)
                         then writeln(n+100*b[i],' ');
                 end;
                 end
            else writeln('Первый проигрывает');
  end;

begin
Inp;
Init;
Edin;

for i:=999 downto 990 do
 begin
 k:=i;
 while (a[k]<>0) and (k-10>0) do
 k:=k-10;
 Des(k,0);
 end;

for i:=999 downto 990 do
 begin
  k:=i;
  while (a[k]<>0) and (k-100>0) do
  k:=k-100;
 Sotni(k,0);
 end;
Resh;
Close(Output);
end.