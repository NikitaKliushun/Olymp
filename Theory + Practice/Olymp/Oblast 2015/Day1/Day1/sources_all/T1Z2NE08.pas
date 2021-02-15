//Стельмачёнок Максим Олегович, г. Молодечно, 11 класс, задача 2
Program T1Z2NE08;
var
  a,b,t,min,min2:longint;
  kol:uint64;
Begin
  Assign(input,'input.txt');
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);

  Read(a,b);
  if a>b
    then Begin
           t:=a;
           a:=b;
           b:=t;
         end;

  if a<>b
    then kol:=kol+((2*a)+1)
    else kol:=kol+(2*a);
//  writeln(kol);

  min:=2;

  while (sqr(min) div 2)<=a do
    Begin
      if sqr(min)<=a+b
        then kol:=kol+1;
      min2:=min;
      t:=0;
      if min mod 2<>0
        then While (min*min2<=a+b) and ((min*min2)div 2<=a) do
               Begin
                 min2:=min2+1;
                 kol:=kol+1;
                 t:=1;
               end;
      if min mod 2=0
        then While (min*min2<=a+b) and ((min*min2)div 2<=a) do
               Begin
                 min2:=min2+1;
                 kol:=kol+1;
                 t:=1;
               end;
      if t=1
        then kol:=kol-1;
      min:=min+1;
    end;

  Write(kol);



  Close(input);
  Close(output);
end.