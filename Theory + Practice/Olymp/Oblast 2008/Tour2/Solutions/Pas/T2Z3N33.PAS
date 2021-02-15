{KOTOV PAVEL VYACHESLAVOVICH, Soligorsk,9*B klass,Z3}
program T2Z3N33;
type mm=0..2000;
xy=array[1..2000]of mm;
var f1,f2:text;
b,c,d,n,m:longint;
a:mm;
x,y:xy;


      procedure pro(x,y:xy;n,m:longint; var c:longint);
      var a,b,d,k,u:longint;
      w:integer;
      s:string;
      begin

         c:=0;
            for a:=1 to n do
            begin
            k:=-1;
                u:=y[a];

                    for b:=1 to m do
                    begin
                       if x[b]=a
                       then begin w:=1;end;
                       if y[b]=a
                      then begin w:=0;end;

                         d:=0;


                    for b:=1 to m do
                    begin
                    if w=1 then
                    begin
                      if u<>x[b] then
                        begin
                           u:=y[b];
                           w:=0;
                           k:=k+1;
                        end;
                      end
                       else
                       begin
                       u:=x[b];
                          w:=1;
                       end;


                    if k=-1 then k:=0;

                    c:=c+k;
                    end;
                    end;
            end;


  if c mod m=0 then
  c:=c div m
  else
  c:=(c div m)+1;
      end;
begin
  assign(f1,'input.txt');
  reset(f1);
  read(f1,n,m);
  for a:=1 to m do
  begin
     readln(f1,x[a],y[a]);

  end;
  close(f1);
      pro(x,y,n,m,c);
  assign(f2,'output.txt');
  rewrite(f2);
  write(f2,c);
  close(f2);




end.