Program z3;
var 
  a:array[1..60001] of byte;
  n,i,x,l,r,maxl,maxr:word;
  t:byte;
  f1,f2:text;
begin
  assign(f1,'in.txt');
  reset(f1);
  assign(f2,'out.txt');
  rewrite(f2);
  
  for i:=1 to 60001 do
    a[i]:=0;
  read(f1,n);
  for i:=1 to n do
    begin
      read(f1,x);
      a[x]:=1;
    end;
  maxl:=1; maxr:=2;
  t:=0;
  for i:=1 to 60001 do
    if a[i]=1
       then begin
               if t=0
                  then begin
                         l:=i;
                         t:=1;
                       end
            end
       else if t=1
               then begin
                      r:=i;
                      t:=0;
                      if r-l>maxr-maxl
                         then begin
                                maxl:=l;
                                maxr:=r;
                              end;
                    end;
  write(f2,maxr-maxl);  
  
  close(f1);
  close(f2);
end.