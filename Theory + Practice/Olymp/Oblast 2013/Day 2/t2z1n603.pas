{T2Z1N603}
program z;
 var t:text;
 mat:array[1..2,1..101]of longint;
 mas:array[1..1001]of longint;
 n,k,a,b,s,l:longint;

 procedure dob;
  var i:longint;
 begin
  i:=1;
  while s<>k do
   begin
   while mat[1,i]>=mat[2,i] do
    i:=i+1;
   while (mat[1,i]<mat[2,i])and(s<>k) do
    begin
    mat[1,i]:=mat[1,i]+1;
    s:=s+1;
    l:=l+1;
    mas[l]:=i;
    end;
   end;
 end;

 procedure vich;
  var i:longint;
 begin
  i:=1;
  while s<>k do
   begin
   while mat[1,i]=0 do
    i:=i+1;
   while (mat[1,i]<>0)and(s<>k) do
    begin
    mat[1,i]:=mat[1,i]-1;
    s:=s-1;
    l:=l+1;
    mas[l]:=mas[l]-i;
    end;
   end;
 end;


begin
 fillchar(mas,sizeof(mas),0);
 assign(t,'input.txt');
 reset(t);
 read(t,n,k);
 s:=0;
 for a:=1 to n do
  begin
  read(t,mat[1,a]);
  s:=s+mat[1,a];
  readln(t,mat[2,a]);
  end;
 close(t);

 l:=0;
 if s<k
  then dob
  else vich;

 assign(t,'output.txt');
 rewrite(t);
 writeln(t,l);
 for a:=1 to l do
  writeln(t,mas[a]);
 close(t);
end.