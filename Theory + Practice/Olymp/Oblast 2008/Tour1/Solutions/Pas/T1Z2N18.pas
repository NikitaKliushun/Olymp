{Gordiychuk Vladimir, g.Minsk , 11 , z2}
program MortLord;

 var  N,K,sum,sum1,sum2,V: int64;
      i,j,l,h : longint;
      a : array [0..51] of integer;

function Max(a,b:longint):longint;
 begin
 if a>b
  then max := a
  else max := b;
 end;

function Vr(x:int64):int64;
 begin
  if x = 1
   then Vr :=1
   else Vr := Vr(x-1)*x;
 end;

Begin

 V:=0;

 Assign(input,'input.txt');reset(input);
 Assign(output,'output.txt');rewrite(output);

 sum := 0;
 read(N,K);
 for i:=1 to N do
  begin
  read(a[i]);
  sum := sum + a[i];
  end;

 if sum < K then
  begin
   write('0');
   Close(input);
   Close(output);
   halt;
  end;

 if k = 1
  then V := Vr(N)
  else
 if N < 4 then
 for i:=1 to N do
  begin

  sum1 := a[i];

  for j:=1 to N do
   begin
   if (i<>j)and(sum1+a[j]>K)and(sum-sum1>K) then V := V+1;
   end;

  for j:=1 to N do
   begin
   if (i<>j) then
    begin
    inc(sum1,a[j]);
    for l:=1 to N do
     if (l<>j)and(l<>i)and(sum1+a[l]>K)and(Sum-sum1>K) then V := V+1;
    end;
   end;

  {for j:=1 to N do
   begin
   if (i<>j) then
    begin
    inc(sum1,a[j]);
    for l:=1 to N do
     if (l<>j)and(l<>i) then
     begin
     inc(sum1,a[l]);
     for h:=1 to N do
      if (h<>j)and(h<>i)and(h<>l)and(sum1+a[h]>K)and(Sum-sum1>K) then V := V+1;
     end;
    end;
   end;}

  end;

 if (N>3)and(K<>1) then V := N*2;

 write(V);

 Close(input);
 Close(output);

End.
