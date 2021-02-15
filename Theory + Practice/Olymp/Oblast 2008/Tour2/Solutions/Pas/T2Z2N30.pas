{Михайловский Михаил Николаевич
Минский государственный областной лицей}
program T2Z2N30;
var a:array[1..200,1..200] of word;
    x:array[1..100] of longint;
    y:array[1..100] of longint;
    n,m,xn,yn,res:longint;
    i,j:longint;
    z:boolean;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(n,m);
  for i:=1 to m do
    read(x[i],y[i]);
  fillchar(a,sizeof(a),0);
  for i:=1 to m do
    begin
      a[x[i],y[i]]:=a[x[i],y[i]]+1;
      a[y[i],x[i]]:=a[y[i],x[i]]+1;
    end;
  for i:=1 to m do
    begin
      z:=true;
      yn:=y[i];
      while z=true do
        begin
          for j:=1 to m+1 do
            begin
              if j=m+1 then begin z:=false;break;end;
              if yn=x[j] then begin
                                 a[x[j],y[j]]:=a[x[j],y[j]]+1;
                                a[y[j],x[j]]:=a[y[j],x[j]]+1;
                                yn:=y[j];
                                break;
                              end;
            end;
        end;
    end;
  res:=0;
  f2Z2N30;
var a:array[1..200,1..200] of word;
    x:array[1..100] of longint;
    y:array[1..100] of long