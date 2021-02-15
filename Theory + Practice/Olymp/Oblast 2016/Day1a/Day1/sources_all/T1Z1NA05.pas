{Барковский Николай Анатольевич,г. Воложин,10,1}
var a,b:array[0..11,0..11] of byte;
    n,i,j,x,y,q:longint;
    s:string;
procedure qwe(i,j:longint);
 begin
  if (a[i-1,j]<>a[i,j]) and (a[i-1,j]<>0)
   then begin
         a[i-1,j]:=a[i,j];
         qwe(i-1,j);
        end;
  if (a[i,j-1]<>a[i,j]) and (a[i,j-1]<>0)
   then begin
         a[i,j-1]:=a[i,j];
         qwe(i,j-1);
        end;
  if (a[i+1,j]<>a[i,j]) and (a[i+1,j]<>0)
   then begin
         a[i+1,j]:=a[i,j];
         qwe(i+1,j);
        end;
  if (a[i,j+1]<>a[i,j]) and (a[i,j+1]<>0)
   then begin
         a[i,j+1]:=a[i,j];
         qwe(i,j+1);
        end;
 end;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 q:=0;
 for i:=1 to 10 do
  begin
   readln(s);
   for j:=1 to 10 do
    begin
     if s[j]='.'
      then a[i,j]:=0
      else begin
            a[i,j]:=1;
            inc(q);
           end;
     if (a[i-1,j]<>0) and (a[i,j]=1)
      then begin
            a[i,j]:=a[i-1,j]+1;
            qwe(i,j);
           end;
     if (a[i,j-1]<>0) and (a[i,j]=1)
      then begin
            a[i,j]:=a[i,j-1]+1;
            qwe(i,j);
           end;
    end;
  end;
 readln(n);
 for i:=1 to n do
  begin
   readln(x,s);
   if s[2]<>'k'
    then y:=ord(s[2])-96
    else y:=10;
   if (a[x,y]=0) or (b[x,y]=1)
    then writeln('MISS')
    else if (q-1=0) and (a[x,y]=1)
          then begin
                write('GAME OVER');
                break;
               end
          else if a[x,y]=1
                then begin
                      dec(q);
                      a[x,y]:=0;
                      qwe(x,y);
                      writeln('DEAD');
                     end
                else begin
                      dec(q);
                      a[x,y]:=a[x,y]-1;
                      b[x,y]:=1;
                      qwe(x,y);
                      writeln('HIT');
                     end;
  end;
 close(input);
 close(output);
end.