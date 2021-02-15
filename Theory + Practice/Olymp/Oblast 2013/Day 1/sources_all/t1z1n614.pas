program T1Z1N614;
  var hh,mm,ss:array [1..2000] of byte;
      tt:array [1..2000] of word;
      use:array[1..2000] of boolean;
      n,t,k,i,j:word;
      c:byte;
      s:ansistring;

  procedure qsort(l,r:word);
    var i,j,x,t:word;
  begin
    i:=l; j:=r; x:=tt[random(r-l+1)+l];
    repeat
      while tt[i]<x do inc(i);
      while tt[j]>x do dec(j);
      if i<=j then
        begin
          t:=tt[i]; tt[i]:=tt[j]; tt[j]:=t;
          t:=hh[i]; hh[i]:=hh[j]; hh[j]:=t;
          t:=mm[i]; mm[i]:=mm[j]; mm[j]:=t;
          t:=ss[i]; ss[i]:=ss[j]; ss[j]:=t;
          inc(i); dec(j);
        end;
    until i>j;
    if i<r then qsort(i,r);
    if l<j then qsort(l,j);
  end;

  function s1(x:byte):ansistring;
    var s0:ansistring;
  begin
    str(x,s0);
    if length(s0)=1 then
      s0:='0'+s0;
      s1:=s0;
  end;

begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  reset(output);

  read(n);
  readln(t);
  for i:=1 to n*2 do
    begin
      readln(s);
      val(s[1..2],hh[i],c);
      val(s[4..5],mm[i],c);
      val(s[7..8],ss[i],c);
      tt[i]:=hh[i]*3600+mm[i]*60+ss[i];
    end;
  qsort(1,2*n);
  fillchar(use,sizeof(use),false);
  i:=1; j:=1;
  while n-k>0 do
    begin
      while use[i]=true do inc(i);
      while tt[j]<>tt[i]+t do inc(j);
      use[i]:=true; use[j]:=true;
      write(s1(hh[i]),':',s1(mm[i]),':',s1(ss[i]),'-',s1(hh[j]),':',s1(mm[j]),':',s1(ss[j]));
      writeln;
      inc(k);
    end;

  close(input);
  close(output);
end.
