//Вовченко Влад. Пуховический р-н
//Задача №1
const
 inFile = 'input.txt';
 outFile = 'output.txt';
var
 F: TextFile;
 n: byte;
 a: array of DWORD;

 i, j: integer;
 max: DWORD;
 maxnum: integer;

 player, casino: int64;
begin
 Assign(F, inFile);
 Reset(F);

 readln(F, n);

 SetLength(a, n);
 for i:=0 to n-1 do
  read(F, a[i]);

 close(F);

 player:=0;
 casino:=0;

 //Выбрать самые большие числа
 for j:=1 to (n div 2) do begin
  max:=0;
  for i:=0 to n-1 do
   if a[i]>max then begin
    max:=a[i];
    maxnum:=i;
   end;
  player:=player+max;
  a[maxnum]:=0;
 end;

 //Оставшиеся для казино
 for i:=0 to n-1 do
  casino:=casino+a[i];

 assign(F, outFile);
 rewrite(F);
 write(F, player-casino);
 close(F);
end.
