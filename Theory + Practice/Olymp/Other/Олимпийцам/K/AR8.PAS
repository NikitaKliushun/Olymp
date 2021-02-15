{Dlinnaja Arifmetika}
program ar8;
var a,b,c:array[0..5000] of longint;
    la,lb,lc,i:longint;
    s:string;
function Max(a,b:longint):longint;
  begin
    if a>b
       then Max:=a
       else Max:=b;
  end;
procedure Perenos;
  var i:longint;
  begin
    for i:=0 to lc-1 do
      begin
        c[i+1]:=c[i+1]+c[i] div 10;
        c[i]:=c[i] mod 10;
      end;
    while c[lc]>0 do
      begin
        c[lc+1]:=c[lc+1]+c[lc] div 10;
        c[lc]:=c[lc] mod 10;
        lc:=lc+1;
      end;
    while (lc>1) and (c[lc-1]=0) do
      lc:=lc-1;
  end;
procedure Sum;
  var i:longint;
  begin
    lc:=Max(la,lb);
    for i:=0 to lc-1 do
      c[i]:=a[i]+b[i];
    Perenos;
  end;
procedure Minus;
  var i:longint;
  begin
    lc:=Max(la,lb);
    FillChar(c,SizeOf(c),0);
    for i:=0 to lc-1 do
      begin
        c[i]:=c[i]+a[i]-b[i];
        if c[i]<0
           then begin
                  c[i]:=c[i]+10;
                  c[i+1]:=c[i+1]-1
                end;
      end;
    Perenos;
  end;
procedure Umn;
 var i,j:longint;
  begin
    lc:=la+lb;
    for i:=0 to la-1 do
      for j:=0 to lb-1 do
        c[i+j]:=c[i+j]+a[i]*b[j];
    Perenos;
  end;
begin
  Readln(s);
  la:=Length(s);
  for i:=1 to la do
    a[la-i]:=Ord(s[i])-Ord('0');
  Readln(s);
  lb:=Length(s);
  for i:=1 to lb do
    b[lb-i]:=Ord(s[i])-Ord('0');
  FillChar(c,SizeOf(c),0);

{  Sum;}
{  Minus;}
{  Umn;}

  for i:=lc-1 downto 0 do
    Write(c[i]);
  Writeln;
end.
