//Slyakhov Yan Antonovich,Sluck,8,1
program sdf;
var i,j,ans:longint;
    x:char;
    s,t:array[0..1000000]of char;
begin
  assign(input,'input.txt');assign(output,'output.txt');
  reset(input);rewrite(output);
  i:=0;
  s[0]:=' ';
  t[0]:='!';
   while not eoln(input) do
    begin
     inc(i);
     read(s[i]);
    end;
   readln;
   {for j:=1 to i do
    write(s[j]);}
   j:=0;
   while not eof(input)do
    begin
     inc(j);
     read(t[j]);
    end;
  ans:=0;
  while s[i]=t[j] do
   begin
    inc(ans);
    dec(i);
    dec(j);
   end;
  write(ans);
  close(input);close(output);
end.
