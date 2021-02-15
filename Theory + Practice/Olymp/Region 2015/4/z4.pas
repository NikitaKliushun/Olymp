program z4;
label
  L1;
var
  s, s2 : ansistring;
  ls, i, j, t, n : longint;
  f1, f2 : text;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  readln(f1,n); 
  readln(f1,s);
  ls := length(s); t := 0;
  for j:=2 to n do
    begin
      readln(f1,s2);
      for i := 1 to ls do
        if s[i]='?'
           then s[i] := s2[i]
           else if (s2[i]<>'?') and (s[i]<>s2[i])
                   then begin
                          t := j;
                          goto L1;
                        end;
    end;
L1:
  if t = 0
     then write(f2,s)
     else begin
            writeln(f2,'NO');
            writeln(f2,t);
          end;  
  close(f1); close(f2);   
end.