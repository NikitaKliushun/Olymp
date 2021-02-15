//Стельмачёнок Максим Олегович, г. Молодечно, 11 класс, задача 4
Program T1Z4NE08;
const inf=1000000000;
var
  a:array[1..2000,1..2000] of integer;
  l:array[1..2000] of longint;
  p:array[1..2000] of byte;
  p2:array[1..2000] of byte;
  i,j,x,y,z,max,maxi,maxj,k,n,min,l1,t:longint;

Begin
  Assign(input,'input.txt');
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);

  Read(n);
  fillchar(p,sizeof(p),0);
  for i:=1 to n do
    for j:=1 to n do
      a[i,j]:=-1;
  for i:=1 to n-1 do
    Begin
      Read(x,y,z);
      a[x,y]:=z;
      a[y,x]:=z;
      p2[x]:=1;
    end;


{   for i:=1 to n do
    Begin
      for j:=1 to n do
        Write(a[i,j]:3);
      Writeln;
    end;
   writeln; }



  for i:=1 to n do
  Begin
    max:=-1;
    maxi:=i;
    maxj:=1;
    t:=0;
    for j:=1 to n do
       Begin
         if (a[i,j]>max) and (p2[i]=1)
           then Begin
                  max:=a[i,j];
                  maxi:=i;
                  maxj:=j;
                  t:=1;
                end;
       end;
    if t=1
    then  Begin
            a[maxi,maxj]:=0;
            a[maxj,maxi]:=0;
          end;
  end;

  for i:=1 to n do
    l[i]:=inf;
  fillchar(p,sizeof(p),0);
  l[1]:=0;
  i:=1;
  repeat
    p[i]:=1;
    for j:=1 to n do
      if (a[i,j]>-1) and (p[j]=0) and (l[i]+a[i,j]<l[j])
        then l[j]:=l[i]+a[i,j];
    min:=inf;
    for j:=1 to n do
      if (l[j]<min) and (p[j]=0)
        then Begin
               min:=l[j];
               i:=j;
             end;
  until min=inf;

  max:=0;
  for i:=1 to n do
    if l[i]>max
      then max:=l[i];
{  for i:=1 to n do
    Begin
      for j:=1 to n do
        Write(a[i,j]:3);
      Writeln;
    end;}

  Write(max);


  Close(input);
  Close(output);
end.