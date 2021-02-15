var
  t,tempt:longint;
  n,i,j,z1,z2,z3,z4,z5,z6:integer;
  s1,s2:string;
  s:array [1..5000] of string;
function min(x,y:string):string;
var f:byte;
begin
 for f:=1 to 2 do
    begin
      s1:=s1+x[f];
      s2:=s2+y[f];
    end;
  val(s1,z1);
  val(s2,z2);
  if s1<s2 then min:=x
           else
             if s2>s1 then min:=y
                      else
                        begin
                          s1:='';
                          s2:='';
                           for f:=3 to 5 do
                          begin
                            s1:=s1+x[f];
                             s2:=s2+y[f];
                            end;
                                val(s1,z1);
                                val(s2,z2);
                              if s1<s2 then min:=x
                                       else
                                         if s2>s1 then min:=y
                                                  else
                                                    begin
                                                      s1:='';
                                                      s2:='';
                                                      for f:=7 to 8 do
                                                        begin
                                                          s1:=s1+x[f];
                                                          s2:=s2+y[f];
                                                        end;
                                                        val(s1,z1);
                                                        val(s2,z2);
                                                    if s1<s2 then min:=x
                                                             else
                                                              if s2>s1 then min:=y;
                                                    end;



                 end;


end;
function max(x,y:string):string;
var f:byte;
begin
 for f:=1 to 2 do
    begin
      s1:=s1+x[f];
      s2:=s2+y[f];
    end;
  val(s1,z1);
  val(s2,z2);
  if s1>s2 then max:=x
           else
             if s2>s1 then max:=y
                      else
                        begin
                          s1:='';
                          s2:='';
                           for f:=3 to 5 do
                          begin
                            s1:=s1+x[f];
                             s2:=s2+y[f];
                            end;
                                val(s1,z1);
                                val(s2,z2);
                              if s1>s2 then max:=x
                                       else
                                         if s2>s1 then max:=y
                                                  else
                                                    begin
                                                      s1:='';
                                                      s2:='';
                                                      for f:=7 to 8 do
                                                        begin
                                                          s1:=s1+x[f];
                                                          s2:=s2+y[f];
                                                        end;
                                                        val(s1,z1);
                                                        val(s2,z2);
                                                    if s1>s2 then max:=x
                                                             else
                                                              if s2>s1 then max:=y;
                                                    end;



                 end;


end;
Function check(x,y:string):boolean;
var f:byte;
Begin
  tempt:=0;
  for f:=1 to 2 do
    begin
      s1:=s1+x[f];
      s2:=s2+y[f];
    end;
  val(s1,z1);
  val(s2,z2);
  s1:='';
  s2:='';
  tempt:=tempt+abs(z1-z2)*3600;
  for f:=4 to 5 do
    begin
      s1:=s1+x[f];
      s2:=s2+y[f];
    end;

  val(s1,z1);
  val(s2,z2);
  s1:='';
  s2:='';
  tempt:=tempt+abs(z1-z2)*60;
  for f:=7 to 8 do
    begin
      s1:=s1+x[f];
      s2:=s2+y[f];
    end;
  val(s1,z1);
  val(s2,z2);
  s1:='';
  s2:='';
  tempt:=tempt+abs(z1-z2);
  if t=tempt
    then check:=true
    else check:=false;
end;
Begin
  Assign(input,'input.txt');
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);
  Readln(n,t);
  For i:=1 to n*2 do
    readln(s[i]);
  for i:=1 to (n*2)-1 do
    for j:=i+1 to n*2 do
      if (s[i]<>s[j]) and (check(s[i],s[j])=true)
        then
          begin

            writeln(s[i],'-',s[j]);
            s[i]:='00:00:00';
            s[j]:='00:00:00';
          end;
  close(input);
  close(output);
End.
