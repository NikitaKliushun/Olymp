{Gordiychuk Vladimir , g.Minsk , 11, z3}
program MortLord;

 var a,z : array [0..66000] of longint;
     N,M,i,j,V : longint;

function Find(i:longint):longint;
 var q,o : longint;
 begin
 q:=i-1;
 o:=0;
 while z[q]<>z[i] do
  begin
  q:=q-1;
  if z[q]=0 then inc(o);
  end;
 z[q]:=0;
 Find := i - q - o;
 end;

procedure R(i:longint);
 var q :longint;
 begin

  a[z[i]]:=maxlongint;
  for q:=1 to z[i]-1 do
   if a[q]<>maxlongint then a[q]:=a[q]+1;

 end;

function Mst(x:longint):longint;
 var t : longint;
 begin

 if a[z[x]] = maxlongint
  then Mst := Find(x)
  else
   begin
   t := a[x] + x;
   R(x);
   end;
  Mst := t;

 end;

function Place(i:longint):longint;
 const svalka = maxlongint;
 var t : longint;
 begin
 if a[z[i]] = svalka
  then t := Find(i)
  else
   begin
   t := a[z[i]]+z[i];
   R(i);
   end;
 Place := t;
 end;

 Begin

 fillchar(a,sizeof(a),0);

 Assign(input,'input.txt');reset(input);
 Assign(output,'output.txt');rewrite(output);

 read(N,M);
 i:=0;
 while i<M do
  begin
  inc(i);
  read(z[i]);
  v:=Place(i);
  {
  for j:=1 to N do write(a[j],' ');
  writeln;
  }
  write(v,' ');
  end;

 Close(input);
 Close(output);

End.
