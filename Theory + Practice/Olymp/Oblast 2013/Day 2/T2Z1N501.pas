{Небожин Максим Михайлович. г. Борисов. 10 класс. задача -}
 var a,p:array[1..1000] of integer;
     stack:array[1..1100] of integer;
     now,min,stk,n,i,k:integer;
begin
  now:=0;
  assign(input,'input.txt');
   reset(input);
     read(n,k);
     for i:=1 to n do
      begin
        read(a[i],p[i]);
        now:=now+a[i];
      end;
   close(input);



  i:=1; min:=0; stk:=1;

  while now<>k do
   begin
     if now>k
      then if a[i]>0
            then
             begin
               dec(a[i]);
               dec(now);
               inc(min);
               stack[stk]:=i*(-1);
               inc(stk);
             end
            else inc(i)
      else if a[i]<p[i]
            then
             begin
               inc(a[i]);
               inc(now);
               inc(min);
               stack[stk]:=i;
               inc(stk);
             end
            else inc(i);
   end;












  assign(output,'output.txt');
   rewrite(output);
     writeln(min);
     for i:=1 to stk-1 do
      writeln(stack[i]);
   close(output);
end.
