//Стельмачёнок Максим Олегович, г. Молодечно, 11 класс, задача 2
Program T2Z2NE08;
Var
  d:longint;
  sum,i:uint64;
function kub(n:uint64):extended;
  Begin
    kub:=exp(ln(n)*1/3);
  end;
Begin
  Assign(input,'input.txt');
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);

  Read(d);
{  if d<=1000
    then Begin
           for i:=1 to 1000 do
             a[i]:=i*i*i;
           while sum<=1000000000 do
             if
         end;}
  sum:=d;
  i:=1;
//  Writeln(sum,' ',kub(sum),' ',frac(kub(sum)));
  While frac(kub(sum))>0.00000000000000001 do
    Begin
//      Writeln(sum,' ',kub(sum),' ',frac(kub(sum)));
      sum:=sum+d;
      i:=i+1;
    end;

  Write(i);

  Close(input);
  Close(output);
end.

