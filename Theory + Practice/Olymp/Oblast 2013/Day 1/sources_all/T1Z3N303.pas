 function cmp(var a:array[1..400,1..400]of byte;var s1,s2,c,l:integer):boolean;
 var i:integer;
     b:boolean;
 begin
      for i:=c to c+l-1 do begin
         if a[s1,i]=a[s2,i]then b:=true
            else begin b:=false;break; end;
      end;
      cmp:=b;
 end;

  var g ,k, i, j, sum:integer;
      n ,m :word;
      b:boolean;
      a:array[1..400,1..400]of byte;
      inf,outf:text;
  begin
       Assign(inf,'input.txt');
       reset(inf);
       sum:=0;
       readln(inf,n,m);
       for i:=1 to n do begin
           for j:=1 to m do begin
               read(inf,a[i,j]);
           end;
       end;
       close(inf);
        for g:=1 to n+1 do
           for j:=1 to n-1 do
               for k:=j+1 to n do begin
                   for i:=1 to m-g+1 do begin
                       if cmp(a,j,k,i,g) then inc(sum);
                   end;
               end;
  assign(outf,'output.txt');
     reWrite(outf);
     writeln(outf,sum);
     close(outf);
 end.