{Колячко Мария}
{ г. Березино }
{    Тур 2    }
{   Задача 3  }
const
  inf = 1000000000;
var
 d,a,h,p:array[0..111111]of int64;
 R,k,n,Ans,sr,L:int64;
 i,q:longint;

procedure Sol(j,L:int64;var R:int64);
begin
  while R-L > 1 do
   begin
     sr:=(R+L)div 2;
     if d[sr] < j then L:=sr
                  else R:=sr;
   end;
end;


begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
   Read(N,k);
   for i:=1 to N do
    Read(a[i]);
   for q:=1 to k do
    if q mod 2 = 1 then begin
                          for i:=1 to N do
                            begin
                             d[i]:=inf;
                             p[i]:=0;
                            end;
                          d[0]:=0; L:=0; R:=1;
                          for i:=1 to N do
                            if h[i] = 0 then
                              begin
                                Sol(a[i],0,R);
                                if d[R] = inf then Inc(Ans);
                                h[p[R]]:=0;
                                h[i]:=1;
                                p[R]:=i;
                                d[R]:=a[i];
                                Inc(R);
                              end;
                        end
                   else begin
                          for i:=1 to N do
                           begin
                             d[i]:=inf;
                             p[i]:=0;
                           end;
                          d[0]:=0;  L:=0;R:=1;
                          for i:=N downto 1 do
                            if h[i] = 0 then
                             begin
                               Sol(a[i],0,R);
                               if d[r] = inf then Inc(Ans);
                               h[p[r]]:=0;
                               p[r]:=i;
                               h[i]:=1;
                               d[r]:=a[i];

                               Inc(R);
                             end;
                        end;
  writeln(Ans);
  close(input);
  close(output);
end.