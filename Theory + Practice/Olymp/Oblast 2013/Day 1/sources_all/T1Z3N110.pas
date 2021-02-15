{Прилепский Александр Игоревич, г.Вилейка, 10 кл}
program T1Z3N110;
  var a:array[1..400,1..400] of byte;
      i,j,n,m:integer;
      k:longint;



function pr(i1,i2,j1,j2:integer):boolean;
  var j:integer;
  begin
  pr:=true;
  //writeln(i1,i2,j1,j2);
  for j:=j1 to j2 do
  if a[i1,j]<>a[i2,j] then begin pr:=false; break; end
  end;

function prov(i1,j1,i2,j2:integer):boolean;
  var i,j:integer;
      x:boolean;
  begin

  prov:=true;
  x:=true;
  while (i1<=i2) and x do
    begin
    if not pr(i1,i2,j1,j2) then begin x:=false; prov:=false; end;
    i1:=i1+1;
    i2:=i2-1;
    end;
  end;

procedure ppr(i,j:integer);
  var ii,jj:integer;
  begin
  ii:=i+1;
  jj:=j;
  while ii<=n do
    begin
    while jj<=m do
      begin
      if prov(i,j,ii,jj) then k:=k+1;
      //writeln(i,' ',j,' ',ii,' ',jj,' ',prov(i,j,ii,jj));
      jj:=jj+1;;
      end;
    ii:=ii+1;
    jj:=j;
    end;
  end;


begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
readln(n,m);
k:=0;
for i:=1 to n do
  for j:=1 to m do
  read(a[i,j]);
for i:=1 to n-1 do
 for j:=1 to m do
   ppr(i,j);

writeln(k);
Close(input); Close(output);
end.
