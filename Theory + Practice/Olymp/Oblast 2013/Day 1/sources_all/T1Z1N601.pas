{Скоморощенко Александр Игоревич, Борисов, 9, 1}
program T1Z1N601;
var
  a:array[1..1000,1..3] of byte;
  i,j,n:longint;
  t:longint;
  s,s1:string;
  c:char;
  ff,fp:longint;

function minus(t1,t2:integer):longint;
 begin
  ff:=(a[t1,1]*3600+a[t1,2]*60+a[t1,3])-(a[t2,1]*3600+a[t2,2]*60+a[t2,3]);
  minus:=ff;
 end;

procedure twrite(t1,t2:integer);
 begin
   if a[t1,1]<10 then write(0);
   write(a[t1,1],':');
   if a[t1,2]<10 then write(0);
   write(a[t1,2],':');
   if a[t1,3]<10 then write(0);
   write(a[t1,3],'-');

   if a[t2,1]<10 then write(0);
   write(a[t2,1],':');
   if a[t2,2]<10 then write(0);
   write(a[t2,2],':');
   if a[t2,3]<10 then write(0);
   write(a[t2,3]);

   writeln;
 end;


procedure main_part;
 begin
   for i:=1 to n*2 do
     for j:=i+1 to n*2 do
      begin
       if (a[i,1]<>25) and (a[j,1]<>25) then
        begin
          fp:=minus(i,j);
          if fp=t then
                           begin
                            twrite(j,i);
                            a[i,1]:=25;
                            a[j,1]:=25;
                           end;
          if fp=-t then
                           begin
                            twrite(i,j);
                            a[i,1]:=25;
                            a[j,1]:=25;
                           end;
        end;
      end;
 end;



begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

    readln(n,t);
    for i:=1 to 2*n do
     begin
       s:='';
       while not seekeoln do
        begin
          read(c);
          s:=s+c;
        end;
       readln;
       s1:=s[1]+s[2];
       val(s1,a[i,1],j);
       s1:=s[4]+s[5];
       val(s1,a[i,2],j);
       s1:=s[7]+s[8];
       val(s1,a[i,3],j);
     end;

    main_part;

  close(input);
  close(output);
end.
