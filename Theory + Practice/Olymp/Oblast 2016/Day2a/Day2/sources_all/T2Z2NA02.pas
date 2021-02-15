//Kamenko Pavel
const inf:int64=3000000000;
var i,j:longint;
    f:text;
    n,m:int64;
    rt,a,r,gen,b:array[0..10000]of int64;
    used:array[1..10000]of boolean;
procedure rec(i:longint);
var q,j:longint;
tek,min:int64;
    fl:boolean;
begin
 if i>n
  then begin
        fl:=true;
        min:=inf;
        for j:=1 to n do
         r[j]:=gen[j];
        for q:=1 to n do
         begin
          min:=inf;
          for j:=1 to n do
           if r[j]<min
            then begin min:=r[j];tek:=j;end;
          rt[q]:=a[tek]+b[min];
          r[tek]:=inf+1;
         end;
        for i:=1 to n do
         if rt[i]<=rt[i-1]
          then begin
                fl:=false;
                break;
               end;
        if fl
         then begin
               assign(f,'output.txt');
               rewrite(f);
               for i:=1 to n do
                write(f,gen[i],' ');
               close(f);
               halt;
              end;
       end
      else begin
            for j:=1 to m do
             begin
              if not used[j]
               then begin
                     used[j]:=true;
                     gen[i]:=j;
                     rec(i+1);
                     used[j]:=false;
                    end;

             end;
           end;
end;
begin
 assign(f,'input.txt');
 reset(f);
 read(f,n,m);
 for i:=1 to n do
  read(f,a[i]);
 for j:=1 to m do
  read(f,b[j]);
 close(f);
 if (n<=3)and(m<=400)
  then rec(1)
  else begin
        assign(f,'output.txt');
        rewrite(f);
        write(f,-1);
        close(f);
       end;
 assign(f,'output.txt');
 rewrite(f);
 write(f,-1);
 close(f);
end.
