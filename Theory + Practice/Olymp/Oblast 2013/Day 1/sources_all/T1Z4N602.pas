//Сазанович Владислав Валерьевич Столбцы 10класс задача4
program uio;
const infile  =  'input.txt';
      outfile =  'output.txt';

 var  s,post,sum:array[1..250000] of longint;
      n,m,k,kol,f:longint;


procedure indata;
 var i:longint;

begin

 assign(input,infile);
 reset(input);
 readln(n,m,k);
  for i:=1 to m do
   read(s[i]);
  for i:=1 to n do
   read(post[i]);
 readln(f);
 close(input);

end;


procedure outdata;
begin

 assign(output,outfile);
 rewrite(output);
 writeln(kol);
 close(output);

end;


procedure solve;
 var i,tv:longint;

begin

 fillchar(sum,sizeof(sum),0);
 for i:=1 to m do
  begin
   tv:=s[i]; sum[tv]:=1;
   while post[tv]<>f do
    begin
     inc(sum[ post[tv] ]);
     if sum[ post[tv] ]>k then break;
     tv:=post[tv];
    end;
  end;

 kol:=0;
 for i:=1 to n do
  if post[i]=f then
   begin
    if sum[i]>k then inc(kol,k)
                else inc(kol,sum[i]);
   end;

end;


BEGIN

 indata;
 solve;
 outdata;

END.
