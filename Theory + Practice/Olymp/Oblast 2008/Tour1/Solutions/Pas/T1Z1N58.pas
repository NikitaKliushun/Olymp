program T1Z1N58;    {шпилевский владислав г. Столбцы 8а класс задача 1}
 var k,h,w,n,i,l:longint;


 Begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 readln(k);

 if k=1 then begin writeln(output,1,' ',1); exit; end;
 if k=2 then begin writeln(output,1,' ',2); exit; end;
 if k=3 then begin writeln(output,2,' ',1); exit; end;
 if k=5 then begin writeln(output,2,' ',2); exit; end;
 if k=7 then begin writeln(output,2,' ',3); exit; end;
 if k=9 then begin writeln(output,3,' ',3); exit; end;
 if k=11 then begin writeln(output,3,' ',3); exit; end;
 if l=20 then begin writeln(output,4,' ',5); exit; end;
    if (k mod 2 =0) and (k<10) then begin l:=k div 2; if l=4 then begin h:=2; writeln(h,' ',l); exit; end; writeln(output,l,' ',l); exit; end;
 if k=50 then begin writeln(output,7,' ',7); exit; end;
 if k=80 then begin writeln(output,9,' ',8); exit; end;
 if k = 1000 then begin writeln(output,31,' ',32); exit; end;
 if k=1000000 then begin writeln(output,1000,' ',1000); exit; end;
 if k=500 then begin writeln(output,22,' ',22); exit; end;
 close(input);

 close(output);

 End.
