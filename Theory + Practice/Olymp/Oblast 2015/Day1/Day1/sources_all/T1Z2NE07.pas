//Лагун Алексей Юрьевич,Копыльский р-н, 9 класс, задача №2
var f,f1:text;
    a,a1,b,temp,i,dob:longint;
    ans:int64;
    begin
    assign(f,'input.txt');
    reset(f);
    read(f,a,b);
    close(f);
    a1:=0;
    ans:=0;
    if a>b then
      begin
      temp:=a;
      a:=b;
      b:=temp;
      end;
    if a>=2 then a1:=3
      else
      if b>1 then ans:=3
             else ans:=2;
    if a1=3 then
      begin
      ans:=a1;
      dob:=a;
      for i:=2 to b do
        begin
        ans:=ans+dob;
        dec(dob);
        if dob=0 then break;
        end;
      end;
    assign(f1,'output.txt');
    rewrite(f1);
    write(f1,ans);
    close(f1);
    end.
