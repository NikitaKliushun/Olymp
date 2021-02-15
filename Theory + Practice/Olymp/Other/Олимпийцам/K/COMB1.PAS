{kolichestvo}
program Comb1;
var n,m:longint;
function P(n:longint):longint; {Perestanovka}
  begin
    if n=0
       then P:=1
       else P:=P(n-1)*n;
  end;
function A(n,m:longint):longint; {Razmeschenie}
  begin
    A:=P(n) div P(n-m);
  end;
function A2(n,m:longint):longint; {Razmeschenie s recursiej}
  begin
    if m=1
       then A2:=n
       else A2:=A2(n-1,m-1)*n;
  end;
function C(n,m:longint):longint; {Sochetanie}
  begin
    C:=P(n) div P(m) div P(n-m);
  end;
function C2(n,m:longint):longint; {Sochetanie s recursiej}
  begin
    if m=1
       then C2:=n
       else C2:=C2(n-1,m-1)*n div m;
  end;
begin
  n:=5; m:=2;
  Writeln(P(n));
  Writeln(A(n,m));
  Writeln(C(n,m));
end.