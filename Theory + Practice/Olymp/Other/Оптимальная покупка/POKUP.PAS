{$A+,B-,D+,E+,F+,G-,I+,L+,N-,O+,P-,Q+,R+,S+,T-,V+,X+}
{$M 16384,0,655360}
program task;
const
   d            =       10000;
var
   s            :       array [1..40] of longint;
   c            :       array [1..20] of longint;
   f            :       text;
   n,k,i,j      :       longint;
   m            :       array [0..d] of longint;
   nom1,nom2    :       longint;
   ot           :       longint;
   summa        :       longint;

procedure InputData;
begin
  Assign(f,'pokup.txt');
  ReSet(f);
  ReadLn(f,n,k);
  for i:=1 to n do
   begin
     Read(f,s[i]);
     summa:=summa +s[i];
   end;
  ReadLn(f);
  for i:=1 to k do
   Read(f,c[i]);
  Close(f);
end;

procedure Zapoln;
begin
  m[0]:=1;
  for i:=1 to n do
   for j:=summa downto 0 do
    if (j-s[i] >= 0) and (m[j-s[i]] <> 0) and (m[j] <= m[j-s[i]] ) then
                          m[j]:=m[j-s[i]] + 1;
end;

procedure Poisk_Resh;
{ 1 - выбираем, где больше чеков
  2 - если чеков поровну, то выбираем товар с большей ценой
  3 - если и цена одинаковая, то выбираем товар с большим номером }
begin
  ot:=0;
  for i:=1 to k do
   begin
     if m[c[i]] > ot then begin
                            ot:=m[c[i]];
                            nom1:=i;
                            nom2:=c[i];
                          end
                     else begin
                            if m[c[i]] = ot then
                                          if c[i] >= nom2 then
                                                            begin
                                                              nom2:=c[i];
                                                              nom1:=i;
                                                            end;

                          end;
 end;
end;

begin
  InputData;
  Zapoln;
  Poisk_Resh;
  WriteLn(ot-1);
  WriteLn(nom1,' ',nom2);
end.