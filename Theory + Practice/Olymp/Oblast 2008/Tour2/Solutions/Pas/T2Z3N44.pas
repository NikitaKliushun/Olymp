//Вовченко Влад. Пуховический р-н
//Задача №3
const
 inFile = 'input.txt';
 outFile = 'output.txt';
var
 F: TextFile;
 n, m: DWORD;
 LAN: array of array of DWORD;
 calced_comps: array of boolean; //Массив нужен чебы не было зацикливания
                                 //типа C1->C2 ; C2->C1

 i, j: DWORD;
 count: int64;

 NoComp: boolean;

 procedure ZeroArray;
 var
  loop: DWORD;
 begin
  NoComp:=FALSE;
  for loop:=1 to n do
   calced_comps[loop]:=FALSE;
 end;

 function calc(comp1, comp2: DWORD): DWORD;
 var
  loop1, loop2: DWORD;
  machines: array [0..1] of DWORD;    //С кем соединен
  searchpos: byte;
  pathes: array [0..1] of DWORD;
  flags: array [0..1] of boolean;  //Использовался ли путь
 begin
  //init
  searchpos:=0;
  machines[0]:=0;
  machines[1]:=0;
  pathes[0]:=0;
  pathes[1]:=0;
  flags[0]:=FALSE;
  flags[1]:=FALSE;
  //Найти компы с которым соединен
  for loop1:=0 to m-1 do
   for loop2:=0 to 1 do
    if LAN[loop1, loop2]=comp1 then begin
     machines[searchpos]:=LAN[loop1, abs(loop2-1)];
     inc(searchpos);
    end;
  //Если ме ничего не нашли значит его вообще нет
  if (machines[0]=0) and (machines[1]=0) then NoComp:=TRUE;
  //Выбросить компы с недоступным calced_comps
  if calced_comps[machines[0]] then machines[0]:=0;
  if calced_comps[machines[1]] then machines[1]:=0;
  //Прямые соединения
  if (machines[0]=comp2) or (machines[1]=comp2) then begin
   calc:=0;
   exit;
  end;
  //call'ы
  calced_comps[comp1]:=TRUE;
  if machines[0]<>0 then begin
   pathes[0]:=1+calc(machines[0], comp2);
   flags[0]:=not NoComp;
   NoComp:=FALSE;
  end;
  if machines[1]<>0 then begin
   pathes[1]:=1+calc(machines[1], comp2);
   flags[1]:=not NoComp;
   NoComp:=FALSE;
  end;

  if flags[0] and (not flags[1]) then calc:=pathes[0]
  else
   if (not flags[0]) and flags[1] then calc:=pathes[1]
   else
    if (not flags[0]) and (not flags[1]) then NoComp:=TRUE
    else
     if pathes[0]<pathes[1] then calc:=pathes[0]
     else calc:=pathes[1];

  if NoComp then calc:=0;
 end;

begin
 Assign(F, inFile);
 reset(F);
 readln(F, n, m);

 SetLength(calced_comps, n+1);
 SetLength(LAN, m, 2);
 for i:=0 to m-1 do
  readln(F, LAN[i, 0], LAN[i, 1]);

 close(F);

 count:=0;
 for i:=1 to n do               //Выбирающая машина
  for j:=1 to n do begin        //Выбираемая машина
   ZeroArray;                   //Сбросить calced_comps
   if i<>j then count:=count+calc(i, j);
  end;

 assign(F, outFile);
 rewrite(F);
 write(F, count);
 close(F);
end.
