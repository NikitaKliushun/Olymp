
program Task;
type
  zap = record
          p : integer;  {значение приоритета}
          z : char;     {арифметическая операция}
        end;
var
  m           :      array [1..500] of zap;
  s,s1,sl     :      string;
  f           :      text;
  sum         :      array [1..500] of longint; {формируемая сумма}
  j,k,i,cod,n :      integer;

procedure InputData;
begin
  Assign(f,'input.txt');
  ReSet(f);
  ReadLn(f,s);
  Close(f);
end;

procedure Razbor;
begin
  j:=0;
  k:=0;
  s1:='';
  for i:=1 to Length(s) do
   case s[i] of
   '+','-','*','/' :  begin
                        Inc(j); { j - счетчик}
                        Val(s1,sum[j],cod);
                        s1:='';
                        m[j].p:=k;
                        if s[i] in ['+','-'] then Inc(m[j].p,1); {Если + -, то увеличим приоритет на 1}
                        if s[i] in ['*','/'] then Inc(m[j].p,2); {Если * /, то увеличим приоритет на 2}
                        m[j].z:=s[i];
                      end;
   '('             :  Inc(k,2); { Увеличим приоритет на 2 }
   ')'             :  Dec(k,2); { Уменьшим приоритет на 2 }
   '0'..'9'        :  s1:=s1 + s[i]; {Формируем число}
   end;
  Val(s1,sum[j+1],cod); {Последнее число}
end;

procedure Sdvig1;
begin
  for k:=n to j-1 do
    begin
      m[k].p:=m[k+1].p;
      m[k].z:=m[k+1].z;
    end;
end;
procedure Sdvig2;
begin
  for k:=n+1 to j do
    begin
      sum[k]:=sum[k+1];
    end;
end;

procedure Perevod;
begin
  while j > 0 do
   begin
     n:=1;
     for i:=2 to j do
      if m[i].p > m[n].p then n:=i;
     case m[n].z of
     '+' : sum[n]:=sum[n] + sum[n+1];
     '-' : sum[n]:=sum[n] - sum[n+1];
     '*' : sum[n]:=sum[n] * sum[n+1];
     '/' : sum[n]:=sum[n] div sum[n+1];
     end;
     Sdvig1;
     Sdvig2;
     Dec(j);
   end;
end;


begin
  InputData;
  Razbor;
  Perevod;
  Assign(f,'output.txt');
  ReWrite(f);
  WriteLn(f,sum[1]);
  Close(f);
end.