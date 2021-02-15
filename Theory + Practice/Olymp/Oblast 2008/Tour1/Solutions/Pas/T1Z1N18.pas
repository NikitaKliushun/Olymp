{Gordiychuk Vladimir, g.Minsk , 11 , z1}
program MortLord;

 var K,H1,W1,H2,W2,R1,S1,kr1,kr2,s2,r2,i : longint;

function Max(a,b:longint):longint;
 begin
 if a>b
  then max := a
  else max := b;
 end;

Begin

 Assign(input,'input.txt');reset(input);
 Assign(output,'output.txt');rewrite(output);

 read(K);

 H1 := trunc( sqrt(K) );
 W1 := K div H1;
 i:=max(h1,w1);

 R1 := abs (H1-W1);
 S1 := K - (H1*W1);

 kr1 := R1+S1;

 while (i > 1)and(kr1 <> 0) do
  begin

  i:=i-1;

  H2 := i;
  W2 := K div i;

  R2 := abs (H2-W2);
  S2 := K - (H2*W2);

  kr2 := R2+S2;

  if kr2 < kr1 then kr1 := kr2;

  end;

 write(H1,' ',W1);

 Close(input);
 Close(output);

End.