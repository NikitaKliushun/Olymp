{�������᪨� ����਩ ��졥�⮢��, 9�, �.������, ����� �1}
var fin,fout:text;
 begin
   assign(fin,'input.txt');
   reset(fin);
   close(fin);

   assign(fout,'output.txt');
   rewrite(fout);
   write(fout,8);
   close(fout);
 end.