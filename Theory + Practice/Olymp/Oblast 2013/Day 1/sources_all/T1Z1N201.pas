{Яковлев Вячеслав Александрович, г.Борисов, 9 "А", 1}
Program T1Z1N201;
  Var a:array[1..2,1..2000]of longint;
      i,n,t,c,k,j,x1:longint;
      s,s1:string;
      f,f1:text;
Procedure QSort(l,r:longint);
  Var i,j,x,p:longint;
Begin
  i:=l;
  j:=r;
  x:=a[1,random(r-l)+l];
  repeat
    While a[1,i]<x do
      inc(i);
    While a[1,j]>x do
      dec(j);
    If i<=j then
    begin
      p:=a[1,i];
      a[1,i]:=a[1,j];
      a[1,j]:=p;
      inc(i);
      dec(j);
    end;
  until i>j;
  If i<r then QSort(i,r);
  If l<j then QSort(l,j);
end;
Begin
  fillchar(a,sizeof(a),0);
  assign(f,'input.txt');
  assign(f1,'output.txt');
  reset(f);
  rewrite(f1);
  read(f,n);
  readln(f,t);
  For i:=1 to n*2 do
  begin
    Readln(f,s);
    s1:=copy(s,1,2);
    val(s1,k,c);
    a[1,i]:=a[1,i]+(k*3600);
    s1:=copy(s,4,2);
    val(s1,k,c);
    a[1,i]:=a[1,i]+(k*60);
    s1:=copy(s,7,2);
    val(s1,k,c);
    a[1,i]:=a[1,i]+k;
  end;
  QSort(1,n*2);
  i:=1;
  While i<(n*2)do
  begin
    If a[2,i]=0 then
    begin
      j:=i+1;
      While ((a[1,j]-a[1,i])<>t)or(a[2,j]=1) do
        inc(j);
      a[2,j]:=1;
      a[2,i]:=1;
      x1:=a[1,i];
      If (x1 div 3600)div 10 = 0 then
        Write(f1,'0',x1 div 3600,':')
      else
        Write(f1,x1 div 3600,':');
      x1:=x1 mod 3600;
      If (x1 div 60)div 10 = 0 then
        Write(f1,'0',x1 div 60,':')
      else
        Write(f1,x1 div 60,':');
      x1:=x1 mod 60;
      If x1 div 10 = 0 then
        Write(f1,'0',x1,'-')
      else
        Write(f1,x1,'-');
      x1:=a[1,j];
      If (x1 div 3600)div 10 = 0 then
        Write(f1,'0',x1 div 3600,':')
      else
        Write(f1,x1 div 3600,':');
      x1:=x1 mod 3600;
      If (x1 div 60)div 10 = 0 then
        Write(f1,'0',x1 div 60,':')
      else
        Write(f1,x1 div 60,':');
      x1:=x1 mod 60;
      If x1 div 10 = 0 then
        Write(f1,'0',x1)
      else
        Write(f1,x1);
      Writeln(f1);
    end;
    inc(i);
  end;
  close(f);
  close(f1);
end.