program z2;
var a,b,n,k,x,y,z,r,c,i,g,j:longint;
    aa:array[1..1000,1..1000] of byte;
    f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,a,b);
 { cm:=a+b-1;
  rm:=(a+b) div 2;
  r:=1; c:=1; k:=0;
  while a[cm,rm]=0 do
    begin
     if (a[1,c]<>0) and (a[r,c]<>0) and ((rp[r]=0) or (cp[c]=0)) then
        begin
          inc(k);
          rp[r]:=1;
          cp[c]:=1;
        end;



    end; }
  x:=0; y:=0;
  if a>b then begin inc(x); aa[1,1]:=1; z:=a-b; end
         else begin inc(y); aa[1,1]:=2; z:=b-a; end;
  i:=2;
  while (x<=a) or (y<=b) do
     begin
       if aa[i-1,1]=1 then begin aa[i,1]:=2; inc(y); inc(k); end
                      else begin aa[i,1]:=1; inc(x); inc(k); end;
       inc(i);


     end;
  k:=k-z-1;

  if a>b then z:=b
         else z:=a;
  z:=z+z;
  for i:=2 to (z div 2) do
      for j:=i to (z div 2) do
          if i*j<=z then inc(k);


  write(f2,k);
  close(f1);
  close(f2);
end.
