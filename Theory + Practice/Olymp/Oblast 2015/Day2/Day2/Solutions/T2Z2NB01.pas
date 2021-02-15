program z2;
var d,k,i:longint;
    t:byte;
    f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,d);
  t:=0; i:=1; k:=1;
  while t=0 do
    begin
     while i*i*i<k*d do inc(i);
     while i*i*i>k*d do inc(k);
     if i*i*i=k*d then begin write(f2,k); t:=1; end;



    end;





  close(f1);
  close(f2);
end.
