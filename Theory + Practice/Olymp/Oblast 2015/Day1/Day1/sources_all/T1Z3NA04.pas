var a,b,ans,itogo:array[1..40000]of longint;
    num,x,tek,tek2,tek3,tekk,n,m,i,j,tekznak:longint;
    znak,itogoznak:array[1..40000]of byte;
    f:text;
    fl:boolean;
    

begin
 assign(f,'input.txt');
 reset(f);
 read(f,n,m);
 for i:=1 to n do
  read(f,a[i]);
 for i:=1 to m do
  read(f,b[i]);
 close(f);
 
 tek:=n;
 tek2:=m;
 tek3:=1;
 while true do
  begin
   if a[tek]<b[tek2]
    then begin x:=a[tek];num:=2;end
    else begin x:=b[tek2];num:=1;end;
   if num=2
    then
     begin
      ans[tek3]:=a[tek];
      znak[tek3]:=(tek mod 2)xor(tek2 mod 2);
      b[tek2]:=b[tek2]-a[tek];
      a[tek]:=0;
      dec(tek);
      if b[tek2]=0
       then dec(tek2);
      inc(tek3);
     end;
     
   if num=1
    then
     begin
      ans[tek3]:=b[tek2];
      znak[tek3]:=(tek mod 2)xor(tek2 mod 2);
      a[tek]:=a[tek]-b[tek2];
      b[tek2]:=0;
      dec(tek2);
      if a[tek]=0
       then dec(tek);
      inc(tek3);
     end;

     
if (tek2=0)or(tek=0)
 then break;
end;

if tek2>0
 then
  begin
   for i:=tek2 downto 1 do
    begin
     ans[tek3+tek2-i]:=b[tek2];
     znak[tek3+tek2-i]:=tek2 mod 2;
    end;
  end;
if tek>0
 then
  begin
   for i:=tek downto 1 do
    begin
     ans[tek3+tek-i]:=a[tek];
     znak[tek3+tek-i]:=tek mod 2;
    end;
  end;
tekznak:=znak[tek3+tek+tek2];
tekk:=1;
for i:=1 to tek+tek2+tek3 do
 begin
  if znak[i]=tekznak
   then  begin itogo[tekk]:=itogo[tekk]+ans[i];itogoznak[tekk]:=tekznak;end
   else begin inc(tekk); itogo[tekk]:=itogo[tekk]+ans[i];tekznak:=znak[i];itogoznak[tekk]:=tekznak;end;
 end;

 assign(f,'output.txt');
 rewrite(f);
for i:=tekk downto 1 do
 begin
  if (i=tekk)and(itogoznak[i]=0)
   then  continue
   else if itogo[i]<>0 then write(f,itogo[i],' ');
 end;
close(f);
end.