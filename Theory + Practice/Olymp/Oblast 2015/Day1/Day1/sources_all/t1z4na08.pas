//shlyakhov yan antonovich,sluck,8,4
program asd;
 var n,i,j,x,y,z:longint;
     s:array[1..10]of longint;
//---------------
 procedure prot(a:longint);
 var buff:longint;
 begin
    for j:=1 to 10 do
      if s[j]<=a then
       begin
        buff:=a;
        a:=s[j];
        s[j]:=buff;
       end;
  end;
//---------------
begin
 assign(input,'input.txt');reset(input);
  readln(n);
  dec(n);
  for i:=1 to n do
    begin
      readln(x,y,z);
      prot(z);
    end;

 close(input);
 assign(output,'output.txt');rewrite(output);
  write(s[2]);
 close(output);
end.
