{Матвиевич Егор Сергеевич 11 класс ГУО"Гимназия №2 г. Солигорска}
program T1Z1NB11;
const b:array[1..10] of char = ('a','b','c','d','e','f','g','h','i','k');
type matr=array[0..11,0..11] of char;

var i,j,t,n:byte;f:boolean;k,c:integer;
v:string[4];x1,y1:string[4];x,y:string[4];
 och:array[1..20] of string[4];
 a:matr;
  procedure dfs(i,j:byte);
      var c1:string[2];
     begin
    if f=false then
   inc(k,2);
      str(i,c1);
       if c1='10' then c1:='!';
     och[k]:=och[k]+c1;
     och[k+1]:=och[k+1]+b[j];
      a[i,j]:='.';
       if a[i+1,j]='#' then begin f:=true; dfs(i+1,j);end;
       if a[i-1,j]='#' then begin f:=true; dfs(i-1,j);end;
       if a[i,j+1]='#' then begin f:=true; dfs(i,j+1);end;
       if a[i,j-1]='#' then begin f:=true; dfs(i,j-1);end;
        inc(t);
   end;

begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
    for i:=1 to 10 do
    begin
     for j:=1 to 10 do
     read(a[i,j]);
     readln;
    end;

     for i:=0 to 11 do
     begin
     a[0,i]:='.';a[11,i]:='.';
     a[i,0]:='.';a[i,11]:='.';
     end;
   k:=-1;t:=0;

    for i:=1 to 10 do
    for j:=1 to 10 do
     if a[i,j]='#' then
      begin
      f:=false;
      dfs(i,j);
      end;

      readln(n);
           for i:=1 to n do
           begin
           readln(v);
           x:=v;y:=v[length(v)];
           delete(x,length(v)-1,2);
            if x='10' then x:='!';
           c:=k;f:=false;
            while(c>0)and(f=false) do
            begin

            x1:=och[c];y1:=och[c+1];

             for j:=1 to length(x1) do
             begin
             if (x1[j]=x)and(y1[j]=y)
              then begin dec(t);delete(x1,j,1);delete(y1,j,1);f:=true;
              och[c]:=x1;och[c+1]:=y1; if t=0 then begin writeln('GAME OVER');exit;end
               else begin if x1='' then writeln('DEAD') else writeln('HIT');  end
               end;
                if f=true then break;
               end;
               dec(c,2);
                end;

             if f=false then writeln('MISS');
           end;
close(input);close(output);
end.
