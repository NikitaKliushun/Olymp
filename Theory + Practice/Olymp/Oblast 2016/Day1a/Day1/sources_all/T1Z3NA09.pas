var f1,f2:text;
    p:array[1..100000] of shortint;
    i,n,a:longint;
    count:array[1..100] of longint;
    beg,en:array[1..100] of longint;
    povt:set of 1..100;
    length:longint;

function CTA(b:shortint):longint;
  begin
    CTA:=count[b];
  end;

function CTAAE(a:longint):longint;
var count1:longint;
    tTA:set of 1..100;
    i:longint;
  begin
    count1:=0;
    tTA:=[];
    for i:=beg[p[a]] to en[p[a]] do
      if (p[i]<>a)and(p[i]<>-1)and(not(p[i] in tTA))
        then
          begin
            tTA:=tTA+[p[i]];
            count1:=count1+CTA(p[i]);
          end;
    CTAAE:=count1;
  end;

procedure TA(a:longint); forward;

procedure TAAE(a:longint);
var i:longint;
  begin
    for i:=beg[p[a]] to en[p[a]] do
      if (p[i]<>a)and(p[i]<>-1)
        then
          TA(p[i]);
  end;

procedure TA(a:longint);
var i:longint;
  begin
    for i:=1 to n do
      if p[i]=a
        then p[i]:=-1;
  end;


begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  readln(f1,n);
  for i:=1 to n do
    begin
      read(f1,p[i]);
      inc(count[p[i]]);
      if count[p[i]]=1
        then
          beg[p[i]]:=i;
      en[p[i]]:=i;
      if (count[p[i]]>=2)and(p[i-1]<>p[i])
        then
          povt:=povt+[p[i]];
    end;

  for i:=1 to n do
    if p[i] in povt
      then
        if CTAAE(i)>count[p[i]]
          then
            begin
              povt:=povt-[p[i]];
              TA(i);
            end
          else
            begin
              povt:=povt-[p[i]];
              TAAE(i);
            end;

  length:=0;
  for i:=1 to n do
    if p[i]<>-1
      then inc(length);

  writeln(f2,length);

  close(f1); close(f2);
end.
