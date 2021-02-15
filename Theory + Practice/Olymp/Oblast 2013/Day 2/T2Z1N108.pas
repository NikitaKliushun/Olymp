program zzz;
  var a,p:array [1..101] of longint;
  i,j,n,ch,k:longint;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);

 readln(n,k);

 ch:=0;

 for i:=1 to n do
  begin
    read(a[i]);
    readln(p[i]);
    ch:=ch+a[i];
  end;


 if ch>k then
     begin
     writeln(ch-k);
     i:=1;
      while ch<>k do
        begin
         if a[i]>0 then
                   for j:=1 to a[i] do
                   begin
                     if ch=k then halt;
                      writeln('-',i);
                      dec(a[i]);
                      dec(ch);
                   end
         else inc(i);
        end;
     end
 else
     begin
     writeln(k-ch);
     i:=1;
     while ch<>k do
       begin
         if a[i]<p[i] then
                     for j:=1 to p[i]-a[i] do
                     begin
                     if ch=k then halt;
                        writeln(i);
                        inc(a[i]);
                        inc(ch);
                     end
          else inc(i);
       end;
     end;

 close(input);
 close(output);
end.
