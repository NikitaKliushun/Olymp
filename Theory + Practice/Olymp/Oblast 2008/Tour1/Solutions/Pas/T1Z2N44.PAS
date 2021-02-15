{Вовченко Влад. Пуховический р-н.
Задача №2}
const
 inFile = 'input.txt';
 outFile = 'output.txt';
var
 F: TextFile;
 i, j: integer;
 n, k: integer;
 a: array of DWORD;

 count: int64;

 function calc(start, _count: integer): byte; {Функция подсчитывает кол-во
                                             конфет и возвращает
                                             1(если boy & girl >=k)}
 label
  _calc;
 var
  child: int64;
  pos, toadd: integer;
  flag: boolean;
 begin
  pos:=start;
  toadd:=_count;
  child:=0;
  calc:=0;
  flag:=FALSE;

_calc:
  //Подсчет кол-ва конфет
  while TRUE do begin
   child:=child+a[pos];

   inc(pos);
   if pos>=n then pos:=0;

   dec(toadd);
   if toadd=0 then break;
  end;
  if child<k then exit;


  toadd:=n-count;
  child:=0;
  if not flag then begin
   flag:=TRUE;
   goto _calc;
  end;

  calc:=1;
 end;
begin
 assign(F, inFile);
 Reset(F);

 readln(F, n, k);
 SetLength(a, n);

 for i:=0 to n-1 do
  read(F, a[i]);

 close(F);

 count:=0;
 for i:=1 to n-1 do
  for j:=0 to n-1 do
   count:=count+calc(j, i);

 assign(F, outFile);
 rewrite(F);
 write(F, count);
 close(F);
end.
