//Сазанович Владислав Валерьевич Столбцы 10класс 1задача
program uio;
const  infile  =  'input.txt';
       outfile =  'output.txt';

 var n,k,sum,min,f:longint;
     a,max:array[1..200] of longint;
     mas:array[1..200000] of longint;

procedure indata;
 var i:longint;

begin

 assign(input,infile);
 reset(input);
 readln(n,k);
 sum:=0;
  for i:=1 to n do
   begin
    read(a[i]); readln(max[i]);
    inc(sum,a[i]);
   end;
 close(input);

end;


procedure outdata;
 var i:longint;

begin

 assign(output,outfile);
 rewrite(output);
 writeln(min);
  for i:=1 to f-1 do
   writeln(mas[i]);
 close(output);

end;


procedure solve;
 var cis,ts,i,j:longint;

begin

 min:=0;
 ts:=abs(sum-k); f:=1; i:=1;

 if sum>k then
  begin

   while ts<>0 do
    begin
     cis:=a[i];
     if cis<ts then
      begin
       dec(ts,cis); inc(min,cis);
        for j:=1 to cis do
         begin
          mas[f]:=-i; inc(f);
         end;
      end
       else
      begin
       inc(min,ts);
        for j:=1 to ts do
         begin
          mas[f]:=-i; inc(f);
         end;
       ts:=0;
      end;
     inc(i);
    end;

  end;

 if sum<k then
  begin
   while ts<>0 do
    begin
     cis:=max[i]-a[i];
     if cis<ts then
      begin
       dec(ts,cis); inc(min,cis);
        for j:=1 to cis do
         begin
          mas[f]:=i; inc(f);
         end;
      end
      else
      begin
       inc(min,ts);
        for j:=1 to ts do
         begin
          mas[f]:=i; inc(f);
         end;
       ts:=0;
      end;
     inc(i);
    end;

  end;

end;

BEGIN

 indata;
 solve;
 outdata;

END.
