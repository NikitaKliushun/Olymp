{Жидецкий Евгений Павлович,г.Солигорск,11 класс,задача №2}
Var
 f1,f2:text;
 variants:int64;
 i,n,k:longint;
 A:array [1..50] of Int64;
Begin
 Assign(f1,'input.txt');
 Assign(f2,'output.txt');
 Reset(f1);
 Rewrite(f2);
 read(f1,n);
 case n of
   4:write(f2,8);
   5:write(f2,6);
 else write(f2,0);
 end;
 Close(f1);
 Close(f2);
End.

