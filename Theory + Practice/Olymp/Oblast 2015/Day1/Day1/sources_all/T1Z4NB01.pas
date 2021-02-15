program z4;
const INF=1000000;
var n,x,y,z,i,j,k,min,maxi,maxj,max:longint;
    a,lv:array [1..10000,1..10000] of integer;
    w,p:array [1..10000] of integer;
    l:array [1..10000] of longint;

    f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,n);
  for i:=1 to n-1 do
      begin
        read(f1,x,y,z);
        a[x,y]:=z;
      //  a[y,x]:=z;
      end;



  for i:=1 to n do
      for j:=1 to n do
          if a[i,j]>0 then inc(w[i]);
  for i:=1 to n do
      if w[i]=1 then
         for j:=1 to n do
             begin
                a[i,j]:=0;
              //  a[j,i]:=0;
                p[i]:=1;
             end;
  max:=0;
  for i:=1 to n do
    begin
      max:=0;
      for j:=1 to n do
          if (a[i,j]>max) or (a[j,i]>max) then
             begin
               maxi:=i; maxj:=j; max:=a[i,j]+a[j,i];
             end;
      a[maxi,maxj]:=0;
    end;
  for i:=1 to n do
      l[i]:=inf;
  l[1]:=0;
  for k:=1 to n do
   //   for i:=1 to n do
          for j:=1 to n do
              if (l[j]>l[k]+a[k,j]) and ((a[k,j]<>0) or (a[j,k]<>0)) then
                 if a[k,j]>0 then l[j]:=l[k]+a[k,j]
                             else l[j]:=l[k]+a[j,k];


{  for i:=1 to n do
      for j:=1 to n do
          begin
            if (a[i,j]>0) or (a[j,i]>0)
              then
                begin
                  lv[i,j]:=lv[i,j]+a[i,j]+a[j,i];
                end;


          end;
                 }
  min:=inf;
  for i:=1 to n do
      if (l[i]<min) and (l[i]>0) then min:=l[i];
  write(f2,min);


  close(f1);
  close(f2);
end.
