{Сазанович Никита Валерьевич, г.Столбцы, 9 класс, тур 1, задача 1}
var
    a:array[1..100000] of longint; time,n,t,hh,mm,ss:longint;


procedure inputdata;
var code,i:longint; s:string;
begin
  assign(input,'input.txt'); reset(input);
  readln(n,t);
  for i:=1 to 2*n do
    begin
      readln(s);
      val(s[1]+s[2],hh,code);
      val(s[4]+s[5],mm,code);
      val(s[7]+s[8],ss,code);
      inc(a[hh*3600+mm*60+ss]);
    end;
  close(input);
end;


procedure outputdata;
var i:longint;
begin
  assign(output,'output.txt'); rewrite(output);
  for i:=1 to 86400 do
    begin
      while a[i]<>0 do
        begin
          dec(a[i]); dec(a[i+t]);

          time:=i;
          hh:=time div 3600; time:=time mod 3600;
          mm:=time div 60; time:=time mod 60;
          ss:=time;
          if hh<10 then write('0'); write(hh,':');
          if mm<10 then write('0'); write(mm,':');
          if ss<10 then write('0'); write(ss,'-');

          time:=i+t;
          hh:=time div 3600; time:=time mod 3600;
          mm:=time div 60; time:=time mod 60;
          ss:=time;
          if hh<10 then write('0'); write(hh,':');
          if mm<10 then write('0'); write(mm,':');
          if ss<10 then write('0'); writeln(ss);
        end;
    end;
  close(output);
end;


begin

  inputdata;
  outputdata;

end.
