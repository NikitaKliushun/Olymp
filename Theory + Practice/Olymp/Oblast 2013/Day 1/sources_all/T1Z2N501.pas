{Небожин Максим Михайлович. г. Борисов. 10 класс. задача -2}
 var a,b,c,sch:int64;
begin
  assign(input,'input.txt');
   reset(input);
     read(a,c);
   close(input);

  sch:=1;
  b:=a;
  while b<=c do
   begin
     b:=b+a;
     if c mod b=0 then inc(sch);
   end;


  assign(output,'output.txt');
   rewrite(output);
     write(sch);
   close(output);
end.
