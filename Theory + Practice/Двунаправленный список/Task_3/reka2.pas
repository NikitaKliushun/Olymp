var
 n,p,i,k,v,e,j:longint;
 ans:int64;
 a:array[0..100110]of longint;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
  read(n,p);
  ans:=0;
  for i:=1 to n do begin
                    read(a[i]);
                    ans:=ans+a[i]*a[i];
                   end;
  writeln(ans);
  read(k);
  for i:=1 to k do
   begin
     read(e,v);
     ans:=ans-a[v]*a[v];
     if e = 1 then
         begin
            ans:=ans-a[v-1]*a[v-1];
            ans:=ans-a[v+1]*a[v+1];
            if v = 1 then inc(a[v+1],a[v])
                     else
            if v = n then inc(a[v-1],a[v])
                     else
            if a[v] mod 2 = 0 then begin
                                       inc(a[v+1],a[v] div 2);
                                       inc(a[v-1],a[v] div 2);
                                   end
                               else begin
                                       inc(a[v+1],a[v] div 2 +1);
                                       inc(a[v-1],a[v] div 2);
                                    end;
            ans:=ans+a[v+1]*a[v+1];
            ans:=ans+a[v-1]*a[v-1];
            for j:=v to n do
             a[j]:=a[j+1];
            dec(n);

         end
              else
         begin
           for j:=n+1 downto v do
             a[j]:=a[j-1];
           a[v]:=a[v+1]div 2;
           if a[v+1] mod 2 = 0 then a[v+1]:=a[v+1]div 2
                               else a[v+1]:=a[v+1]div 2 +1;
           ans:=ans+a[v+1]*a[v+1];
           ans:=ans+a[v]*a[v];
           inc(n);
         end;
     writeln(ans);
   end;
 close(output);
 close(input);
end.