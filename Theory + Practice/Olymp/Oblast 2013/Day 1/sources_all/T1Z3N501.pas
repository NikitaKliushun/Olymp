{Небожин Максим Михайлович. г. Борисов. 10 класс. задача -3}
 var n,m,i,j:integer;   kol:longint;  chr:char; s:string;
     a:array[1..400,1..400] of char;
procedure dot;
  var ln,k,j1,j2,q,count:integer; tr:boolean;
 begin
   for k:=2 to m do
    for ln:=1 to m-k+1 do
    begin
      count:=0;
      for i:=1 to n do
       begin
         tr:=true;
         j2:=ln+k-1;
         for j1:=1 to ln+(k div 2)-1 do
          begin
            if a[i,j1]<>a[i,j2]
             then begin
                    tr:=false;
                    break;
                  end;
            dec(j2);
          end;
         if tr=true then inc(count)
                    else begin
                           for q:=0 to count do
                            kol:=kol+q;
                           count:=0;
                         end;
       end;
    end;

                           for q:=0 to count do
                            kol:=kol+q;
                           count:=0;

 end;
begin
  assign(input,'input.txt');
   reset(input);
     readln(n,m);
     for i:=1 to n do
      begin
        readln(s);
        for j:=1 to length(s) do
         s[j]:=a[i,j];
      end;
   close(input);
  kol:=0;
  dot;
  assign(output,'output.txt');
   rewrite(output);
     write(kol);
   close(output);
end.
