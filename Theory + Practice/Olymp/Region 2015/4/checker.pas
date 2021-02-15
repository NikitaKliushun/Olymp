program Check01;
var
  a : ansistring;
  b : ansistring;
  c, d : longint;
  f1, f2 : text;
begin
  assign(f1,ParamStr(1));
  reset(f1);
  assign(f2,'output.txt');
  reset(f2);
  readln(f1,a);
  readln(f2,b);
  if a=b
     then if a='NO'
             then begin
                    readln(f1,c);
                    readln(f2,d);
                    if c=d
                       then writeln('Correct')
                       else writeln('Error : violation must be ',c,' instead of ',d);
                  end
             else writeln('Correct')   
     else writeln('Error: ',b,', must be ',a);
  close(f1);
  close(f2);
end.
