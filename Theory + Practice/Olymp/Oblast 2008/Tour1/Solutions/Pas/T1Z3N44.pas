//Вовченко Владислав. Пуховический р-н
//Задача №3
const
 inFile = 'input.txt';
 outFile = 'output.txt';
var
 inF, outF: TextFile;
 n, m: Cardinal;

 db: array of cardinal;
 i, count: Cardinal;
 quest: cardinal; //Запрос

 procedure reloc(q: cardinal); //перемещает запись q на верх и
                               //сдвигает за ней оставшиеся
 var
  save, loop: cardinal;
 begin
  save:=db[q-1];
  for loop:=q-1 downto 1 do
   db[loop]:=db[loop-1];
  db[0]:=save;
 end;

 function search(q: cardinal): cardinal; //возвращает номер записи в которой
                                         //находится элемент q
 var
  loop: cardinal;
 begin
  for loop:=1 to n do
   if db[loop-1]=q then break;

  search:=loop;
 end;
begin
 assign(inF, inFile);
 assign(outF, outFile);
 reset(inF);
 rewrite(outF);


 readln(inF, n , m);

 SetLength(db, n);
 //init array
 for i:=0 to n-1 do
  db[i]:=i+1;

 for i:=0 to m-1 do begin
  read(inF, quest);
  count:=search(quest);
  write(outF, count, ' ');
  reloc(count);
 end;

 close(inF);
 close(outF);
end.
