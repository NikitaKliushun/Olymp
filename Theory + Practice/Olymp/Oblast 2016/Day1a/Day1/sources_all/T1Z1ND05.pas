{Pogireycik_Margarita_Soligorsk_Gimn1}
program T1Z1ND05;
 var a:array[0..11,0..11]of char;
     q,i,j,u,n,y,p:integer;
     x,k:char;
     f1,f2:text;
     
 begin
  p:=0;
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  rewrite(f2);
  for i:=1 to 10 do
   begin
    for j:=1 to 10 do
     if j=10
      then readln(f1,a[i,j])
      else read(f1,a[i,j]);
   end;
  readln(f1,n);
  
 for j:=0 to 11 do
  begin
   a[0,j]:='.';
   a[j,0]:='.';
   a[11,j]:='.';
   a[j,11]:='.';
  end;
  
 for i:=1 to 10 do
  begin
   for j:=1 to 10 do
    if a[i,j]='#'
     then inc(p);
  end;
    
 for q:=1 to n do
  begin
   read(f1,y);
   read(f1,k);
   readln(f1,x);
   i:=y;
   if x='a'
    then j:=1
    else if x='b'
       then j:=2
       else if x='c'
             then j:=3
             else if x='d'
                   then j:=4
                   else if x='e'
                         then j:=5
                         else if x='f'
                               then j:=6
                               else if x='g'
                                     then j:=7
                                     else if x='h'
                                           then j:=8
                                           else if x='i'
                                                 then j:=9
                                                 else if x='k'
                                                       then j:=10;
   if (a[i,j]='.')or(a[i,j]='*')
    then writeln(f2,'MISS')
    else  begin
           if p=1
            then begin
                  writeln(f2,'GAME OVER');
                  break;
                 end
            else begin if (a[i-1,j]='.')and(a[i+1,j]='.')and(a[i,j-1]='.')and(a[i,j+1]='.')
                       then writeln(f2,'DEAD')
                       else if (a[i-1,j]='#')or(a[i+1,j]='#')or(a[i,j-1]='#')or(a[i,j+1]='#')
                            then writeln(f2,'HIT')
            else begin if a[i-1,j]='*' 
              then case a[i-2,j] of
                    '.': u:=3;
                    '#': u:=5;
                    '*': case a[i-3,j] of
                          '.': u:=3;
                          '#': u:=5;
                          '*': u:=3;
                         end;
                   end;
             if a[i+1,j]='*'
              then case a[i+2,j] of
                    '.': u:=3;
                    '#': u:=5;
                    '*': case a[i+3,j] of
                          '.': u:=3;
                          '#': u:=5;
                          '*': u:=3;
                         end;
                   end;
              if a[i,j-1]='*'
               then case a[i,j-2] of
                    '.': u:=3;
                    '#': u:=5;
                    '*': case a[i,j-3] of
                          '.': u:=3;
                          '#': u:=5;
                          '*': u:=3;
                         end;
                   end;
               if a[i,j+1]='*'
                then case a[i,j+2] of
                    '.': u:=3;
                    '#': u:=5;
                    '*': case a[i,j+3] of
                          '.': u:=3;
                          '#': u:=5;
                          '*': u:=3;
                         end;
                   end;
               if u=3
                then writeln(f2,'DEAD')
                else if u=5 then writeln(f2,'HIT');
        end;
            
                   p:=p-1; 
                   end; 
            a[i,j]:='*';

               
  end; end;
  close(f1);
  close(f2);
end.
  
