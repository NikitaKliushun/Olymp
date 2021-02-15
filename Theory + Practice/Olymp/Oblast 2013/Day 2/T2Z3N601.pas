{Скоморощенко Александр Игоревич, Борисов, 9, 3}
program T2Z3N601;
var
  a:array[1..100000,1..2] of longint;
  n,m,k,max,next,i:longint;
  was1,was2,nech:boolean;


procedure test_chain(s:ansistring);
 var
 i1,j1:longint;
 begin
   for i1:=1 to next-1 do
    begin
     if (chr(a[i1,1])=s[length(s)]) or (chr(a[i1,2])=s[length(s)]) then
      begin

      if (chr(a[i1,2])=s[1]) or (chr(a[i1,1])=s[1]) then
       begin
         if length(s) mod 2=1 then nech:=false;
       end
      else
       begin
         was1:=false;
         was2:=false;
         for j1:=1 to length(s) do
          begin
            if (s[j1]=chr(a[i1,2]))   then was1:=true;
            if (s[j1]=chr(a[i1,1]))   then was2:=true;
          end;
         if was1=false then test_chain(s+chr(a[i1,2]));
         if was2=false then test_chain(s+chr(a[i1,1]));
       end;

      end;
    end;
 end;


procedure test;
 var
 i2:longint;
 s:ansistring;
 begin
   for i2:=1 to next-1 do
    begin
      s:=chr(a[i2,1])+chr(a[i2,2]);
      nech:=true;
      test_chain(s);
    end;
 end;


procedure new_road;
 var
 nech_was,road_was:boolean;
 i3,j3,l:longint;
 begin
   for i3:=1 to n do
    for j3:=1 to n do
     begin

       road_was:=false;
       for l:=1 to next-1 do
       if ((i3=a[l,1]) and (j3=a[l,2])) or ((j3=a[l,1]) and (i3=a[l,2]))  then
         road_was:=true;

          if (road_was=false) and (i3<>j3) then
           begin
             a[next,1]:=i3;
             a[next,2]:=j3;
             next:=next+1;
             test;
             nech_was:=false;
             if nech=true then
              begin
                k:=k+1;
                if k>max then max:=k;
                new_road;
                nech_was:=true;
              end;
             next:=next-1;
             a[next,1]:=0;
             a[next,2]:=0;
             if nech_was then k:=k-1;
           end;


     end;
 end;
begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  readln(n,m);
  for i:=1 to m do readln(a[i,1],a[i,2]);
  next:=m+1;
  max:=0;
  k:=0;

  new_road;

  write(max);


  close(input);
  close(output);
end.
