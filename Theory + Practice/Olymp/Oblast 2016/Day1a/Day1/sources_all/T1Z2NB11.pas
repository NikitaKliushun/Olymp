{Матвиевич Егор Сергеевич 11 класс ГУО"Гимназия №2 г. Солигорска}
program T1Z2NB11;
const maxk=100000;
var k,i,kmax,j:longint; y,mask:longint;
b:array[1..maxk]of longint;
a:array[1..31]of byte;
ko:byte;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
   readln(k,y);
   if k=1 then begin write(y);exit;end;
  mask:=1;
  mask:=mask shl 30;
   for i:=1 to 31 do
   begin
    if mask and y=0 then begin a[i]:=0 ;inc(ko);end else a[i]:=255;
      mask:=mask shr 1;
   end;
   dec(ko);
      kmax:=trunc(exp(ko*ln(2)));
   if k>kmax then begin write(-1);exit;end;
        for i:=1 to k do
        begin
        b[i]:=y;mask:=1;
        mask:=mask shl 30;
         for j:=31 downto 1 do
         begin
         if (mask and b[i]=0)and(a[j]=0) then
         begin b[i]:=mask or b[i];a[j]:=1;break;  end;
          mask:=mask shr 1;
         end;
        end;
         for i:=1 to k do
         write(b[i],' ');
close(input);close(output);
end.
