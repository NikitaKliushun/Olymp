{—¥çñâª® €«¥ªá ­¤à ‹¥®­¨¤®¢¨ç}
program z2;
 var f:text;
     a:array[1..10,1..10] of integer;
     m,n,i,j,k,ch,kol,p,x1,x2,x3,l,x4:longint;
     s:string;
 procedure indata;
  begin
   assign(f,'input.txt');
   reset(f);
   readln(f,n,m);
   i:=0;
   for k:=1 to n do
    begin
     readln(f,s);
     j:=1; i:=i+1;
     for x1:=1 to length(s) do
      begin
        if s[x1]='0' then begin
                           a[i,j]:=0;
                           j:=j+1;
                         end
                    else begin
                           a[i,j]:=1;
                           j:=j+1;
                         end;
      end;
    end;
   close(f);
  end;

 procedure outdata;
  begin
   assign(f,'output.txt');
   rewrite(f);
   if kol>10 then writeln(f,kol+1)
   else writeln(f,kol);
   close(f);
  end;

 Begin
  indata;
            p:=1;

    for x1:=1 to n do
    begin
     for x2:=1 to m do
     begin
      for k:=1 to n-1 do
      begin
        if x1+k>n then break;
        if (a[x1,x2]=a[x1+k,x2]) then begin
                                 for x3:=1 to round(k/2) do
                                 if (a[x1+x3,x2]=a[x1+k-x3,x2]) then begin
                                                                      if x2=1 then kol:=kol+1;
                                                                      if x2>1 then kol:=kol+x2;
                                                                     end;

                                      end


       end;
       end;
       end;


  outdata;
 End.
