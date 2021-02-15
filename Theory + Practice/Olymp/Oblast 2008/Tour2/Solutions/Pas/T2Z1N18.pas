{Gordiychuk Vladimir , g.Minsk , 11 , Z1}

program MortLord;

 const MaxN = 2000;

 var a : array [0..MaxN+1] of longint;
     N,i : longint;
     Win,SumPlayer,SumCrup : int64;

procedure QSort(l,r:longint);
 var i,j,x,t : longint;
 begin

 i:=l;
 j:=r;
 x := a[l+random(r-l+1)];

 repeat

  while a[i]<x do inc(i);
  while a[j]>x do j:=j-1;

  if i<=j then
   begin
   t:=a[i];
   a[i]:=a[j];
   a[j]:=t;
   inc(i);
   j:=j-1;
   end;

 until i>j;

 if l<j then QSort(l,j);
 if i<r then QSort(i,r);

 end;

Begin

 SumCrup := 0;
 SumPlayer := 0;

 Assign(input,'input.txt');reset(input);
 Assign(output,'output.txt');rewrite(output);

 read(N);
 for i:=1 to N do read(a[i]);

 QSort(1,N);

 for i:=1 to (N div 2) do SumCrup := SumCrup + a[i];

 for i:=( (N div 2) + 1 ) to N do SumPlayer := SumPlayer + a[i];

 Win := SumPlayer - SumCrup;

 write(Win);

 Close(input);
 CLose(output);

End.
