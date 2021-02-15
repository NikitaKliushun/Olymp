{golovin artem, t1z1nd04,zhodino, gymnasia 1, 11 klass}
var
  a:array[0..11,0..11] of integer;
  och:array[1..2,1..1000] of byte;
  hod:array[1..100,1..2] of integer;
  f1,f2:text;
  i,x,y,n,r:byte;
  ans:string;

 function check_game:string;
  var
    i,j:byte;
    ans:string;
    f:boolean;
  begin
   f:=false;
    for i := 1 to 10 do
     for j := 1 to 10 do
      if a[i,j]=1 then
                   begin f:=true; break; end;
   if f=true then ans:='GO_ON'
             else ans:='GAME OVER';
   check_game:=ans;
  end;
 procedure add_och(c,d:byte);
  begin
   inc(r);
   och[1,r]:=c; och[2,r]:=d;
  end;
 procedure init_och;
  begin
   r:=0;
  end;
 function check_och(x,y:byte):string;
  var
    j:byte;
    ans:string;
  begin
   ans:='yes';
    for j := 1 to r do
     if (x=och[1,j]) and (y=och[2,j]) then ans:='no';
   check_och:=ans;
  end;
 procedure missy(s,d:byte);
  begin
   add_och(s,d);
   if (s+1<11) and (a[s+1,d]<>0) and (check_och(s+1,d)='yes') then missy(s+1,d);
   if (s-1>0) and (a[s-1,d]<>0) and (check_och(s-1,d)='yes') then missy(s-1,d);
   if (d+1<11) and (a[s,d+1]<>0) and (check_och(s,d+1)='yes') then missy(s,d+1);
   if (d-1>0) and (a[s,d-1]<>0) and (check_och(s,d-1)='yes') then missy(s,d-1);
  end;
 function count_and_fill_och(x,y:byte):string;
  var
    f:boolean;
    ans:string;
    i:byte;
  begin
   missy(x,y);
   f:=false;
    for i := 1 to r do
     if a[och[1,i],och[2,i]]=1 then f:=true;
   if f=false then ans:='DEAD'
              else ans:='HIT';
   count_and_fill_och:=ans;
  end;

procedure init;
 const y='a';
 var
   x,s:string; s1:string;
   i,j:byte;
 begin
  s:='abcdefghik';
  for i := 1 to 10 do
   begin
    readln(f1,s1);
     for j := 1 to 10 do
      if s1[j]=chr(46) then
                      a[i,j]:=0
                  else
                      a[i,j]:=1
   end;
 readln(f1,n);
  for i := 1 to n do
   begin
    read(f1,hod[i,1]);
    readln(f1,s1);
    x:=copy(s1,length(s1),1);
    for j := 1 to length(s) do
     if s[j]=x then break;
    hod[i,2]:=j;
   end;
 end;
begin
 assign(f1,'input.txt');
 reset(f1);
 init;
 assign(f2,'output.txt');
 rewrite(f2);
  for i := 1 to n do
   begin
    x:=hod[i,1]; y:=hod[i,2];
    if (a[x,y]=0) or (a[x,y]=-1) then ans:='MISS'
                                 else
                                  begin
                                   a[x,y]:=-1;
                                   init_och;
                                   add_och(x,y);
                                   ans:=count_and_fill_och(x,y);
                                  end;

    if check_game='GAME OVER' then
                                  begin
                                   ans:='GAME OVER';
                                   writeln(f2,ans);
                                   break;
                                  end;
     writeln(f2,ans);
   end;
 close(f1);
 close(f2);
end.
