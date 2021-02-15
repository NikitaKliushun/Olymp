{Gordiychuk Vladimir , g.Minsk , 11 , Z1}

program MortLord;

 const MaxM = 1000000;

 var p : array [0..MaxM+1] of integer;
     Path,a : array [0..3010,0..3010] of integer;
     o : array [0..2000] of longint;
     o2,o1 : longint;
     N,M,i,Pos,x,y,KF : longint;

procedure ino(x:longint);
 begin
 o[o2] := x;
 inc(o2);
 if o2 = 2000 then o2 := 1;
 end;

procedure outo(var x:longint);
 begin
 x:=o[o1];
 inc(o1);
 if o1 = 2000 then o1 := 1;
 end;

procedure SumPath(i:longint);
 var j,x,y:longint;
 begin

 ino(i);
 p[i]:=1;
 while o1<>o2 do
  begin

  outo(x);

  for y:=1 to N do
  if (a[x,y]=1)and(p[y]=0) then
   begin
   ino(y);
   path[i,y]:=path[i,x]+1;
   p[y]:=1;
   KF := KF + path[i,y]-1;
   end;

  end;

 end;

Begin

 o1:=1;
 o2:=1;
 KF := 0;

 Assign(input,'input.txt');reset(input);
 Assign(output,'output.txt');rewrite(output);

 Read(N,M);

 for i:=1 to M do
  begin
   read(x,y);
   a[x,y]:=1;
   a[y,x]:=1;
  end;

 for i:=1 to N do
  begin
   fillchar(p,sizeof(p),0);
   SumPath(i);
  end;

 write(KF);

 Close(input);
 CLose(output);
End.
