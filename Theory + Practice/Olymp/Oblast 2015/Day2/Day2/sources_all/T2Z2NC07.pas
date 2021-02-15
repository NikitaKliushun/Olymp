{Ломтев Даниил 11 Слуцк №2}
var
 l, ll, sum, a : array [1..1000000] of integer;
 long, llong, slong, along : longint;
 d : longint;
 pos : int64;
 i, j, n : longint;
 pos_end, kub, kub_find : boolean;


function max(a, b : longint) : longint;
begin
 if (a >= b)
  then max := a
  else max := b;
end;

procedure in_array(x : int64);
var
 i, j, h, ii, jj : longint;
 deviding : boolean;
 delim, delit : longint;
begin


 long := 0;
 while x > 0 do
  begin
   inc(long);
   l[long] := x mod 10;
   x := x div 10;
  end;
 for i := 1 to long do
  ll[i] := l[i];
 llong := long;

 for j := 1 to llong do
  for i := 1 to long do
   begin
    h := l[i]*ll[j];
    if (h >= 10)
     then begin
           sum[i+j-1] := sum[i+j-1] +  h mod 10;
           sum[i+j] := sum[i+j] + h div 10;
           slong := max(slong, i+j);
          end
     else  begin
            sum[j+i-1] := sum[j+i-1] + h;
            slong := max(slong, i+j-1);
           end;
   end;

 for i := 1 to slong do
  if sum[i] >= 10
   then begin
         h := sum[i];
         sum[i] := 0;
         j := i;
         while h > 0 do
          begin
           sum[j] := sum[j] + h mod 10;
           slong := max(slong, j);
           h := h div 10;
           inc(j);
          end;
        end;

 //
 {for i := slong downto 1 do
  write(sum[i], '');
 writeln;}

 long := slong;
 for i := 1 to long do
  l[i] := sum[i];
 for i := 1 to slong do
  sum[i] := 0;

 for j := 1 to llong do
  for i := 1 to long do
   begin
    h := l[i]*ll[j];
    if (h >= 10)
     then begin
           sum[i+j-1] := sum[i+j-1] +  h mod 10;
           sum[i+j] := sum[i+j] + h div 10;
           slong := max(slong, i+j);
          end
     else begin
           sum[j+i-1] := sum[j+i-1] + h;
           slong := max(slong, i+j-1);
          end;
   end;

 for i := 1 to slong do
  if sum[i] >= 10
   then begin
         h := sum[i];
         sum[i] := 0;
         j := i;
         while h > 0 do
          begin
           sum[j] := sum[j] + h mod 10;
           h := h div 10;
           slong := max(slong, j);
           inc(j);
          end;
        end;

 long := slong;
 for i := 1 to long do
  l[i] := sum[i];

  //

 {write(':');
 for i := long downto 1 do
  write(l[i]);
 writeln;}


 i := long;
 along := 0;
 deviding := false;
 delim := 0;
 delit := 0;

 while deviding = false do
  begin
   delim := delim*10 + l[i];
   j := 0;

   while (delim div d < 1) and (i-j > 1) do
    begin


            inc(j);
            delim := delim*10 + l[i-j];

    end;
   //write('- делим ', delim);
   inc(along);
   a[along] := delim div d;
   //write(' берем по ', a[along]);
   delit := (delim div d) * d;
   delim := delim - delit;
   //writeln(' в остатке ', delim);
   i := i - j - 1;
   if i <= 0
    then begin
          deviding := true;
          if delim = 0
           then begin
                 for ii := along downto 1 do
                  write(a[ii]);
                 {if along > 1
                  then for ii := along-1 to 1 do
                        ans := ans + a[ii]*10;}
                 kub_find := true;

                end;
         end;
  end;

 for i := 1 to long do
  l[i] := 0;
 long := 0;
 for i := 1 to llong do
  ll[i] := 0;
 llong := 0;
 for i := 1 to slong do
  sum[i] := 0;
 for i := 1 to 20 do
  a[i] := 0;
 along := 0;
 i := 0;
end;

BEGIN

 assign(input, 'input.txt');
 assign(output, 'output.txt');
 reset(input);
 rewrite(output);

 readln(d);
 //in_array(d);
 {
     W A N N A
       S E E
      S O M E
     M A G I C
       ? ? ?

      L O O K
        A T
      T H I S
         _
        | |
        | |
      __| |__
      \     /
        \ /
 }
 kub_find := false;
 i := 0;
 while kub_find = false do
  begin
   inc(i);
   //writeln('i=', i);
   in_array(i);
  end;

 {pos := d;
 pos_end := false;
 while pos_end = false do
  begin
   inc(n);
   //write(pos, ' ');
   kub := false;
   i := 0;
   j := round(sqrt(pos)/2) + 1;
   while kub = false do
    begin
     inc(i);
     if (pos = i*i*i)
      then begin
            kub := true;
            pos_end := true;
            //writeln;
            writeln(n);
           end;
     if (i >= j)
      then kub := true;
    end;
   if (pos_end = false)
    then pos := pos + d;
  end;
 writeln('последний ', pos, '=', i, '^3');}
END.
