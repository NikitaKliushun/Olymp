{Гайдук Илья Олегович,11 класс, Задача 2}
LABEL 10;
VAR f2,f1:text;
    kolY,kolB,i,FY,TY,x,nm1,nm2,min1,min2,k:integer;
    masB:array[1..100] of integer;
BEGIN
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
read(f1,kolY); read(f1,kolB); readln(f1);
k:=0;
if kolY=2 then
Begin
     read(f1,FY); read(f1,TY);
     readln(f1);
     for i:=1 to kolB do
     begin
          read(f1,x);
          masB[i]:=x;
     end;
     min1:=masB[1];
     nm1:=1;
     for i:=2 to kolB-1 do
     begin
          if masB[i]<min1 then
                         begin
                              min1:=masB[i];
                              nm1:=i;
                         end;
     end;
     min2:=masB[nm1+1];
     nm2:=nm1+1;
     for i:=nm1+1 to kolB do
     begin
          if masB[i]<min2 then
                          begin
                               min2:=masB[i];
                               nm2:=i;
                          end;
     end;
     if FY<TY then
              begin
                   write(f2,nm1,' ',nm2);
                   goto 10;
              end;
     if TY<FY then
              begin
                   write(f2,nm2,' ',nm1);
                   goto 10;
              end;
     if TY=FY then
     Begin
          min2:=masB[nm1+1];
          nm2:=nm1+1;
             for i:=nm1+1 to kolB do
                begin
                        if (masB[i]>min1) then
                                                             begin
                                                              min2:=masB[i];
                                                              nm2:=i;
                                                              inc(k);
                                                             end;
                end;
          if k<>0 then
          write(f2,nm1,' ',nm2);
          goto 10;
     end;
end;
write(f2,-1);
10:
close(f1); close(f2);
END.
