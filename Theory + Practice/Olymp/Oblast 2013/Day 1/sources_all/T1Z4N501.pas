{Небожин Максим Михайлович. г. Борисов. 10 класс. задача -4}
program t1z4n501;
 var a:array[1..200000] of longint;      {200.000! but longint}
     b:array[1..200000] of longint;      {200.000! but longint}
     monet,n,m,k,i,F:longint;
function find(wher,many:longint):boolean;
 begin
   if many>0
    then
     if wher=F   {or just wher}
      then find:=true
      else find:=find(a[wher],many-1)
    else find:=false;
 end;
procedure dot;
 begin
   for i:=1 to m do
    begin
      if b[i]=F
      then inc(monet)
      else if find(b[i],k)=true
            then inc(monet);
    end;
 end;
begin
  monet:=0;
  assign(input,'input.txt');
   reset(input);
     read(n,m,k);
     for i:=1 to m do
      begin
        read(b[i]);
        {koli4estvo startov - m}
      end;
     for i:=1 to n do
      begin
        read(a[i]);
      end;
     read(F);{where finish is}
   close(input);
  dot;
  assign(output,'output.txt');
   rewrite(output);
     writeln(monet);
   close(output);
end.
