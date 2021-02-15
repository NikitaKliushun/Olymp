//Вовченко Влад. Пуховический р-н
//Задача №2
const
 inFile = 'input.txt';
 outFile = 'output.txt';
var
 F: TextFile;
 S: array of char;
 n, k: DWORD;

 i, j: DWORD;
 count: DWORD;
 res: byte;

 function calc(_start, _end: DWORD): byte; //Вычисляет подходит
                                           //ли строка по условию
 var
  loop1, loop2: DWORD;
  symbol_count: DWORD;
 begin
  calc:=0;
  for loop1:=_start to _end do begin
   symbol_count:=0;
   for loop2:=loop1 to _end do
    if S[loop1]=S[loop2] then begin
     inc(symbol_count);
     if symbol_count>k then exit;
    end;
  end;
  calc:=1;
 end;
begin
 assign(F, inFile);
 reset(F);

 readln(F, n, k);
 SetLength(S, n);

 for i:=0 to n-1 do
  read(F, S[i]);

 close(F);

 count:=0;
 for i:=0 to n-1 do
  for j:=i to n-1 do begin
   res:=calc(i, j);
   if res=0 then break; //Значит дальше функция всеравно вернет 0
   count:=count+res;
  end;

 assign(F, outFile);
 rewrite(F);
 write(F, count);
 close(F);
end.
