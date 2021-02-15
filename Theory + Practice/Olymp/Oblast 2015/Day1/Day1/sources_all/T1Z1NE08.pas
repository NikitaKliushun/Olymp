//Стельмачёнок Максим Олегович, г. Молодечно, 11 класс, задача 1
Program T1Z1NE08;
var
  n,k,i,j,max,sum,x:longint;
  a:array[1..100000] of longint;
  p:array[1..100000] of byte;
Begin
  Assign(input,'input.txt');
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);

  Read(n,k);
  fillchar(p,sizeof(p),0);
  max:=0;
  for i:=1 to n do
  Begin
    Read(x);
    a[x]:=a[x]+1;
    if max<x
      then max:=x;
  end;

  sum:=0;
  for i:=1 to max do
    if a[i] div k>0
      then  Begin
              sum:=sum+a[i] div k;
              p[i]:=1;
            end;

  if sum<>0
    then Begin
           Writeln(sum);
           For i:=1 to max do
             if p[i]=1
               then Begin
                      for j:=1 to (a[i] div k) do
                        Write(i,' ');
                    end;
         end
    else Write(sum);

  Close(input);
  Close(output);
end.