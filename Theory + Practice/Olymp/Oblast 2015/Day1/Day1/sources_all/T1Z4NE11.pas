{Новицкая Л., г.Солигорск, гимназия №1, 9Б, задача 4 тур 1}
program z1;
 type edge=record
            ou,dou,w,otv,sl:longint;
            p:int64
           end;
 var f:text;
     a:array[0..200000] of edge;
     max,last,kol:array[0..100000] of longint;
     p:array[1..100000] of int64;
     n,i,k,t,r:longint;
procedure poisk(v,pred:longint);
 var u,e,em,em2,emo,c:longint;
begin
 e:=last[v];
 c:=0;
 em:=0;
 em2:=0;
 emo:=0;
 if(a[e].ou=pred)and(a[e].sl=0)
  then begin
        p[v]:=0;
        exit;
       end;
 while(e>0) do
  begin
   u:=a[e].ou;
   if(u<>pred)
    then begin
          poisk(u,v);
          a[e].p:=a[e].w+p[u];
          if(a[e].p>=a[em].p)and(a[e].otv=v)
           then begin
                 em2:=em;
                 em:=e;
                end;
          if(a[e].p>a[em2].p)and(a[e].otv=v)and(a[e].p<a[em].p)
           then begin
                 em2:=e;
                end;
          if(a[e].p>a[emo].p)and(a[e].otv<>v)
           then begin
                 emo:=e;
                end;
         end;
   if(u=pred)and(a[e].otv=v)
    then c:=e;
   e:=a[e].sl;
  end;
 if(a[emo].p>a[em2].p)
  then em2:=emo;
 p[v]:=a[em2].p;
 if(c>0)
  then begin
        if(a[c].w+a[em2].p>=a[em].p)
         then begin
               a[c].w:=0;
               a[c-1].w:=0;
               p[v]:=a[em].p;
              end
         else begin
               p[v]:=a[em2].p;
              end;
       end;
end;
begin
 assign(f,'input.txt');
 reset(f);
 readln(f,n);
 for i:=1 to n-1 do
  begin
   readln(f,t,k,r);
   a[i*2].dou:=t;
   a[i*2].ou:=k;
   a[i*2].otv:=t;
   a[i*2].w:=r;
   a[i*2].sl:=last[t];
   last[t]:=i*2;
   if(r>a[max[t]].w)
    then max[t]:=i*2;
   inc(kol[t]);

   a[i*2-1].dou:=k;
   a[i*2-1].ou:=t;
   a[i*2-1].otv:=t;
   a[i*2-1].w:=r;
   a[i*2-1].sl:=last[k];
   last[k]:=i*2-1;
  end;
 for i:=1 to n do
  begin
   if(kol[i]=1)
    then begin
          a[max[i]].w:=0;
         end;
  end;

 poisk(1,0);
 close(f);
 assign(f,'output.txt');
 rewrite(f);
 writeln(f,p[1]);
 close(f);
end.
