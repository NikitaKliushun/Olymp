{Колячко Мария Николаевна}
{Березино, 8 класс}
{Задача 4}
uses math;
type
  TList = ^List;
  List = record
           x,r:longint;
           Nx:TList;
         end;

var
  a:array[0..100000]of tlIST;
  c,v,D,m,b:array[0..100000]of longint;
  i,j,n,x,y,z,maxx:longint;

procedure IN_List(T1,T2,T3:longint);
 var
  q:TList;
 begin
  New(q);
  q^.x:=t2;
  q^.r:=t3;
  q^.Nx:=a[t1];
  a[t1]:=q;
 end;

procedure DFS(x:longint);
  var
   P:TList;
  begin
   P:=a[x];
   m[x]:=1;
   while P <> Nil do
    begin
     y:=P^.x;
       if m[y] = 0 then
                      begin
                          DFS(y);
                          if c[y]*P^.r > v[x] then
                                                begin
                                                  v[x]:=c[y]*P^.r;
                                                  d[x]:=y;
                                                end;
                      end;
     P:=P^.Nx;
    end;
  end;

procedure DFS_1(x,c:longint);
 var
  p:TList;
 begin
  m[x]:=1;
  P:=a[x];
  while p <> nil do
   begin
    y:=P^.x;
    if m[y] = 0 then
                  begin
                    DFS_1(y,c);
                    if y <> d[x] then m[x]:=max(m[x],m[y]+P^.r)
                                 else m[x]:=max(m[x],m[y]);
                  end;
      P:=P^.nx;
   end;
 end;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
  read(n);
  for i:=1 to n-1 do
   begin
    read(x,y,z);
    in_List(x,y,z);
    if z >= b[x] then b[x]:=z;
    inc(c[x]);
   end;
   DFS(1);
   fillchar(m,sizeof(m),0);
   DFS_1(1,0);
   for i:=1 to n do
    if m[i] > maxx then maxx:=m[i];
   write(maxx div 2);
 close(input);
 close(output);
end.