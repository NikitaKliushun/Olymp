//--Лагун Алексей Юрьевич, Копыль, 7 класс, №2
var a,b,m,c,e,g:int64;
    f,f1:text;
        function pochta(m,c:int64):int64;
        begin
             while c>0 do
             c:=c-m;
             e:=c;
        end;
        function pochta2(a,m:int64):int64;
        begin
             while m>0 do
             m:=m-a;
             g:=m;
        end;
    begin
    assign(f,'input.txt');
    reset(f);
    read(f,a,c);
    close(f);
    m:=a;
//-------------------------------------------
                 while m<=c do
                 begin
                 pochta(m,c);
                 pochta2(a,m);
                        if (e=0) and (g=0)
                           then
                           b:=b+1;
                           m:=m+1;
                 end;
//-------------------------------------------
    assign(f1,'output.txt');
    rewrite(f1);
    write(f1,b);
    close(f1);
    end.
