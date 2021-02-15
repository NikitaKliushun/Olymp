{Жуковский Алексей Андреевич, Березино, 9 класс, задача №1}
           Type
               Zapis                      =      Record
                                                  x  :  integer;
                                                  y  :  integer;
                                                  kr :  integer;
                                                 end;
           Var  a                         :      array [1..10000] of zapis;
                k,i,j,k1,k2,k3,p          :      longint;
                min                       :      integer;

Procedure InputData;
begin
     Assign (Input,'Input.txt');
     Reset  (Input);
      Readln (k);
     Close  (Input);
end;

Procedure Sol;
begin
for i:=1 to k do
 for j:=2 to k do
  if i*j > k then begin
                   Break;
                  end
             else begin
                   k1:=Abs(i-j);
                   k2:=k - i*j;
                   k3:=k1+k2;
                   Inc (p);
                   a[p].x:=i;
                   a[p].y:=j;
                   a[p].kr:=k3;
                  end;
min:=999;
 for i:=1 to p do
  if a[i].kr < min then min:=a[i].kr;
end;

Procedure OutputData;
begin
     Assign  (Output,'Output.txt');
     Rewrite (Output);
      for i:=1 to p do
       if a[i].kr = min then begin
                              Write (a[i].x,' ',a[i].y);
                              Break;
                             end;
     Close   (Output);
end;

begin
InputData;
Sol;
OutputData;
end.
