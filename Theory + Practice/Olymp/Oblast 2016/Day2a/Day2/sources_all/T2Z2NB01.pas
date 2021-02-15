{Колячко Мария}
{ г. Березино }
{    Тур 2    }
{   Задача 2  }
var
 h,b,d:array[0..3333]of int64;
 N,M,p:int64;
 i,j,k:longint;
 a:array[0..3333,0..3333]of int64;
 f:boolean;

procedure Sol(x,y,p:longint);
var j:longint;
begin
  if f then exit;
  if y > M then begin
                  f:=True;
                  exit;
                end;
  for j:=x+1 to N do
   if not(f) then
    if a[y,j] > p then begin
                         d[y]:=j;
                         Sol(j+1,y+1,a[y,j]);
                       end;

end;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
  Read(M,N);
  for i:=1 to M do
     Read(h[i]);
  for i:=1 to N do
     Read(b[i]);
  j:=1;
  for i:=1 to M do
   for j:=1 to N do
    a[i,j]:=h[i]+b[j];
  f:=false;
  for i:=1 to N do
   begin
    p:=a[1,i];d[1]:=i;
    k:=i;
    Sol(k,2,p);
    if f then break;
   end;
  if f then begin
              write(d[1]);
              for i:=2 to M do
                write(' ',d[i])
            end
       else writeln(-1);
 close(input);
 close(output);
end.
