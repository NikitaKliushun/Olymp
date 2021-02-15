{Kutas Dmitry 11 MGOL T2Z3NE02}
{smode delphi}

Const inf=1000000007;

VAR
  n,k,i,sum,d:longint; { d-iz val }
  kol:int64;    {rezult}
  c:char;       {BBod}
  err:byte;     {val}

  pol:array of byte;
  a:array of byte;   {na 100}
  b:array [0..9] of byte =(6,3,4,4,4,5,5,3,7,5);    {dlya sum}



function sumir:longint;
var
  r:longint;
begin
  r:=0;
  for i:=1 to n do
    r:=r+b[a[i]];
  sumir:=r;
end;

function mas:boolean;
var
  per1:array [1..9] of byte;   {polutsch tschislo}
  per2:array [1..9] of byte;   {iz massiwa _a_}
  t:longint;
begin


  t:=0;
  for i:=1 to n do {natschalo konza}
  begin
    for d:=1 to 9 do
    begin
      per1[d]:=0;
      per2[d]:=0;
    end;

    case a[i] of
      0: begin inc(per2[1]);  inc(per2[2]); inc(per2[3]); inc(per2[4]); inc(per2[5]); inc(per2[6]); end;
      1: begin inc(per2[8]);  inc(per2[3]); inc(per2[4]); end;
      2: begin inc(per2[3]);  inc(per2[2]); inc(per2[5]); inc(per2[9]); end;
      3: begin inc(per2[2]);  inc(per2[8]); inc(per2[7]); inc(per2[9]); end;
      4: begin inc(per2[3]);  inc(per2[4]); inc(per2[7]); inc(per2[8]); end;
      5: begin inc(per2[1]);  inc(per2[2]); inc(per2[4]); inc(per2[5]); inc(per2[7]); end;
      6: begin inc(per2[8]);  inc(per2[7]); inc(per2[4]); inc(per2[5]); inc(per2[6]); end;
      7: begin inc(per2[2]);  inc(per2[8]); inc(per2[6]); end;
      8: begin inc(per2[1]);  inc(per2[2]); inc(per2[3]); inc(per2[4]); inc(per2[5]); inc(per2[6]); inc(per2[7]); end;
      9: begin inc(per2[1]);  inc(per2[2]); inc(per2[3]); inc(per2[7]); inc(per2[9]); end;
      end;
    case pol[i] of
      0: begin inc(per1[1]);  inc(per1[2]); inc(per1[3]); inc(per1[4]); inc(per1[5]); inc(per1[6]); end;
      1: begin inc(per1[8]);  inc(per1[3]); inc(per1[4]); end;
      2: begin inc(per1[3]);  inc(per1[2]); inc(per1[5]); inc(per1[9]); end;
      3: begin inc(per1[2]);  inc(per1[8]); inc(per1[7]); inc(per1[9]); end;
      4: begin inc(per1[3]);  inc(per1[4]); inc(per1[7]); inc(per1[8]); end;
      5: begin inc(per1[1]);  inc(per1[2]); inc(per1[4]); inc(per1[5]); inc(per1[7]); end;
      6: begin inc(per1[8]);  inc(per1[7]); inc(per1[4]); inc(per1[5]); inc(per1[6]); end;
      7: begin inc(per1[2]);  inc(per1[8]); inc(per1[6]); end;
      8: begin inc(per1[1]);  inc(per1[2]); inc(per1[3]); inc(per1[4]); inc(per1[5]); inc(per1[6]); inc(per1[7]); end;
      9: begin inc(per1[1]);  inc(per1[2]); inc(per1[3]); inc(per1[7]); inc(per1[9]); end;
      end;

    for d:=1 to 9 do
      if per1[d]<>per2[d] then t:=t+abs(per1[d]-per2[d]);

    if t>(k*2) then begin mas:=false; break; end;
  end
 // if t<=(k*2) then mas:=true;

end;

BEGIN
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  sum:=0;



  readln(n,k);

  setlength(pol,n+1);
  setlength(a,n+1);


  for i:=1 to n do
  begin
    read(c);
    val(c,d,err);
    pol[i]:=d;

    inc(sum,b[d]);
  end;

  a[0]:=0;
  a[1]:=1;
  for i:=2 to n do
    a[i]:=0;

{OOO}

  while a[0]=0 do
  begin
    if (sumir=sum) and (mas=true) then begin inc(kol);  if kol>inf then kol:=kol mod inf;  end;

    inc(a[n]);
    i:=n;
    while a[i]=10 do
    begin
      a[i]:=0;
      inc(a[i-1]);
      dec(i);
    end;
  end;

{OOO}

//  kol:=kol mod inf;
  writeln(kol);

  close(input);
  close(output);
END.