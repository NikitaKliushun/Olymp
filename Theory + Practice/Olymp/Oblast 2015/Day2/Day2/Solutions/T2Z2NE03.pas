type
 mas = array[0..20] of longint;
var
 a:array[0..1000001] of int64;
 i,d,j,ii,ost :Longint;
 k,x:int64;
 f:boolean;


begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
  read(d);
  x:=0;
  for i:=1 to d do
   begin
    x:=i*i*i;
    if x mod d = 0 then
             begin
                k:=x;
                break;
             end;
   end;
  write(k div d);
 close(input);
 close(output);
end.
