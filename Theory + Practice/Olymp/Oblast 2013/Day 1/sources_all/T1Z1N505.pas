// @utor Gamezo Vladislav, 10 Klass, Berezino
// Task 1, Tur 1


var
i,N,T,cod,j,Q,M:longint;
S:String;
mas,a:array [1..1000000] of longint;

Function Perevod1(ss:String):longint;
var
 a1,a2,a3,a4:longint;
 c:String;

begin
 c:=ss[1]+ss[2];
 Val(c,a1,cod);
 c:=ss[4]+ss[5];
 Val(c,a2,cod);
 c:=ss[7]+ss[8];
 Val(c,a3,cod);
 a4:=a1*3600 + a2*60 + a3;
 Perevod1:=a4;
end;

Procedure OutputData(F:longint);
var
 F1,v:longint;
begin
 F1:=F+T;
 v:=F div 3600;
 F:=F-v*3600;
 if v<10 then Write(0,v,':') else Write(v,':');
 v:=F div 60;
 F:=F mod 60;
 if v<10 then Write(0,v,':') else Write(v,':');
 if F<10 then Write(0,F,#45) else Write(F,#45);
 v:=F1 div 3600;
 F1:=F1-v*3600;
 if v<10 then Write(0,v,':') else Write(v,':');
 v:=F1 div 60;
 F1:=F1 mod 60;
 if v<10 then Write(0,v,':') else Write(v,':');
 if F1<10 then Write(0,F1) else Write(F1);

end;

begin
 Assign(input,'input.txt');
 Reset(input);
 Assign(output,'output.txt');
 Rewrite(output);
  Readln(N,T);
  M:=2*N;
    For i:=1 to M do begin
                      Readln(S);
                      a[i]:=Perevod1(S);
                      Inc(mas[a[i]]);
                     end;
 For i:=1 to M do
  For j:=1 to M-1 do
   if a[j]<a[j+1] then begin
                        Q:=a[j];
                        a[j]:=a[j+1];
                        a[j+1]:=Q;
                       end;

 For i:=M downto 1 do begin
      if mas[a[i]]<>0 then begin
                            Dec(mas[a[i]]);
                            Dec(mas[a[i]+T]);
                            OutputData(a[i]);
                            Writeln;
                           end;
                      end;
end.
