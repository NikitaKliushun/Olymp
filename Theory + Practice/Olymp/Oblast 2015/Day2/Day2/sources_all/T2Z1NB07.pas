program z1;
var
  s,t:string;
  x:char;
  i,j:longint;
  s1,k,ls,lt,lr:int64;

  f1,f2:text;

  st:array[1..100000] of char;

procedure in_st(x:char);
begin
  st[s1]:=x;
  s1:=s1+1;
end;
procedure out_st(var x:char);
begin
  s1:=s1-1;
  x:=st[s1];
end;
begin
   assign(f1,'input.txt');
   reset(f1);
   assign(f2,'output.txt');
   rewrite(f2);

   readln(f1,s);
   readln(f1,t);


   ls:=length(s);
   lt:=length(t);

   k:=0;

   s1:=1;

   for i:= 1 to ls do
    in_st(s[i]);


   for i:= lt downto 1 do
      begin
        out_st(x);
        if x=t[i] then k:=k+1 else break;

      end;
   writeln(f2,k);


   close(f1);
   close(f2);


end.
