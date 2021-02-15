//Вовченко Влад. Пуховический р-н
//Задача№1
label
 wrt_answ;
const
 inFile =  'input.txt';
 outFile = 'output.txt';
var
 F: TextFile;
 k: DWORD;
 nice, h, w: DWORD;
 bestnice, besth, bestw: DWORD;
begin
 Assign(F, inFile);
 reset(F);
 readln(F, k);
 close(F);

 bestnice:=$FFFFFFFF;

 for h:=0 to k do
  for w:=0 to k do begin
   if k<h*w then break;
   nice:=abs(h-w)+(k-h*w);
   if nice=0 then goto wrt_answ;
   if nice<bestnice then begin
    besth:=h;
    bestw:=w;
    bestnice:=nice;
   end;
  end;

wrt_answ:
 Assign(F, outFile);
 Rewrite(F);
 write(F, besth);
 write(F, ' ');
 write(F, bestw);
 close(F);
end.
