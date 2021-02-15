Program z1;

Var
  s,t:ansistring;
  i,j,n,m,res:longint;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
    res:=0;

    readln(s); readln(t);

    n:=length(s); m:=length(t);

    i:=n; j:=m;

    while (s[i]=t[j]) and (i>=1) and (j>=1) do begin
      inc(res);
      if (i>1) and (j>1) then begin
        dec(i); dec(j);
      end else break;
    end;

    write(res);

  close(input); close(output);
End.
