var
  j,sum,n,k,i,ans:integer;
  a,p:array [1..1000] of integer;
Begin
  Assign(input,'input.txt');
  reset(input);
  Assign(output,'output.txt');
  Rewrite(output);
  Readln(n,k);
  ans:=0;
  For i:=1 to n do
    begin
      readln(a[i],p[i]);
      sum:=sum+a[i];
    end;
  if sum=k
    then writeln(0)
    else
      if sum<k
        then
          begin
            writeln(k-sum);
            for i:=1 to n do
            while (sum <k) and (a[i]<p[i])  do
              begin
                for j:=a[i] to p[i]-1 do
                  if sum+1<=k then
                    begin
                      writeln(i);
                      inc(sum);
                    end;
                break;
              end;
          end
        else
          begin
            writeln(sum-k);
            for i:=1 to n do
            while (sum>k) and (a[i]>0) do
              begin
                for j:=a[i] downto 1 do
                  if sum-1>=k
                    then
                      begin
                        writeln(-i);
                        dec(sum);
                        dec(a[i]);
                      end;
                  break;
              end;

          end;
  close(input);
  close(output);
End.