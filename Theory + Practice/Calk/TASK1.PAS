{$A+,B-,D+,E-,F-,G-,I+,L+,N+,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 65520,0,0}
type res=longint;
function result(s:string):res;
const col=500;
var num:array[1..col]of res;
    zn:array[1..col]of record
                        p:word;
                        z:char;
                       end;
    k:word;
    i,p,n:byte;
    ts:string[10];
    er:integer;
begin
 k:=0;p:=0;ts:='';
  for i:=1 to length(s) do
   case s[i] of
    '+','-','*','/':begin
                     inc(p);
                     val(ts,num[p],er);
                     ts:='';
                     zn[p].p:=k;
                      if s[i] in ['+','-'] then inc(zn[p].p,1);
                      if s[i] in ['*','/'] then inc(zn[p].p,2);
                     zn[p].z:=s[i];
                    end;
    '(':inc(k,2);
    ')':dec(k,2);
    '0'..'9','.':ts:=ts+s[i];
   end;
 val(ts,num[p+1],er);
  while p>0 do
   begin
    n:=1;
     for i:=2 to p do if zn[n].p<zn[i].p then n:=i;
     case zn[n].z of
      '+':num[n]:=num[n]+num[n+1];
      '-':num[n]:=num[n]-num[n+1];
      '*':num[n]:=num[n]*num[n+1];
      '/':num[n]:=num[n] div num[n+1];
     end;
    move(num[n+2],num[n+1],(p-n)*sizeof(res));
    move(zn[n+1],zn[n],(p-n)*3);
    dec(p);
   end;
 result:=num[1];
end;

var s:string;
begin
 assign(input,'input.txt');
 reset(input);
 readln(s);
 close(INPUT);
 assign(output,'output.txt');
 rewrite(output);
 writeln(result(s));
 close(output);
end.