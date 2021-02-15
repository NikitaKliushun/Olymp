var s,t:array[1..100000] of char;
    q,z,a,b,i:longint;
    f1,f2:text;
    h:char;
begin
 assign(f1,'input.txt');
 reset(f1);
 assign(output,'output.txt');
 rewrite(output);
 a:=0;
 while not eoln(f1) do
  begin
   read(f1,h);
   inc(a);
  end;
  readln(f1);
 b:=0;
 while not eof(f1) do
  begin
   read(f1,h);
   inc(b);
  end;
 close(f1);
 reset(f1);
 if a=b then begin
              i:=1;
              while not eoln(f1) do
               begin
                read(f1,s[i]);
                inc(i);
               end;
              readln(f1);
              i:=1;
              while not eof(f1) do
               begin
                read(f1,t[i]);
                inc(i);
               end;
             end;
 if a>b then begin
              for i:=1 to a-b do
               read(f1,h);
              i:=1;
              while not eoln(f1) do
               begin
                read(f1,s[i]);
                inc(i);
               end;
              readln(f1);
              i:=1;
              while not eof(f1) do
               begin
                read(f1,t[i]);
                inc(i);
                end;
              a:=b;
             end;
 if a<b then begin
              i:=1;
              while not eoln(f1) do
               begin
                read(f1,s[i]);
                inc(i);
               end;
              readln(f1);
              for i:=1 to b-a do
               read(f1,h);
              i:=1;
              while not eof(f1) do
               begin
                read(f1,t[i]);
                inc(i);
                end;
              b:=a;
             end;
 q:=0;
 for i:=a downto 1 do
  if s[i]=t[i] then inc(q)
               else break;
 write(q);
 close(input);
 close(output);
end.
