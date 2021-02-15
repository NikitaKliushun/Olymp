Var
a:array[1..10000,1..3] of Integer;
i,j,k,k1,g:Integer;
n,m,kol:Integer;
y:Integer;

procedure first;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
end;

procedure last;
begin
close(input);
close(output);
end;

procedure rech;
begin

 k:=1;
while k<=n do
 Begin
 k1:=k;
 i:=0;
 repeat i:=i+1 until (k1=a[i,1])or(k1=a[i,2]);
 if k1=a[i,1] then k1:=a[i,2] else
 if k1=a[i,2] then k1:=a[i,1];
 for g:=i+1 to m do
 Begin
  if (a[g,1]=k1) then Begin
        kol:=kol+1;
        k1:=a[g,2];
        end else
  if (a[g,2]=k1) then Begin
                kol:=kol+1;
                k1:=a[g,1];
                  end;
    end;
    k:=k+1;
  end;
end;

Begin
first;
read(n,m);
For i:=1 to m do
 For j:=1 to 2 do
 read(a[i,j]);

 rech;
 write(kol);

last;
End.
