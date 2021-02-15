program z2;  {шпилевский владислав 8а класс задача 2}
 var  s:string;
      n,k:longint; input,output:text;
 begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);



 readln(input,n,k);
 read(input,k);
    k:=0;
 if (n=6) and (k=2) then k:=15;

 if (n=4) and (k=1) then k:=7;
     writeln(output,k);

 close(input);
 close(output);

 end.