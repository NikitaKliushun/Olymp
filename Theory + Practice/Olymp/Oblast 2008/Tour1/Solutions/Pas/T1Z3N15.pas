{Косик Иван, г. Воложин}
program T1Z3N15;
var
  N,M,i,i2,b,c,i3:word;
  a:array [1..65535] of word;
  d:boolean;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  readln(N,M);
  for i:=1 to N do
    a[i]:=i;
  d:=true;
  for i2:=1 to M do
  begin
    read(b);
    if d=true
      then if b<>1
             then
             begin
               write(b,' ');
               if i2=M
                 then halt;
               c:=a[1];
               a[1]:=b;
               for i3:=b downto 3 do
                 a[i3]:=a[i3-1];
               a[2]:=c;
               d:=false;
             end
             else
             begin
               write(1,' ');
               break
             end
      else for i:=1 to N do
           if a[i]=b
             then if i<>1
                    then
                    begin
                      write(i,' ');
                      if i2=M
                        then halt;
                      c:=a[1];
                      a[1]:=b;
                      for i3:=i downto 3 do
                        a[i3]:=a[i3-1];
                      a[2]:=c;
                      break
                    end
                    else
                    begin
                      write(1,' ');
                      break
                    end
  end;
  close(input);
  close(output)
end.