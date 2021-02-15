{$apptype console}
const infile = 'print.in'; outfile = 'print.out'; max = 5005;
var d,f: array [1..max] of longint;
    s,sk: array [1..max] of char;
    ans: array [1..max] of longint;
    tmp: array [1..max] of longint;
    n,t: longint;

procedure init;
var i: longint;
    ch: char;
begin
     assign(input,infile);
     reset(input);
     read(ch); n:=0;
     fillchar(s,Sizeof(s),0);
     while not eoln do begin
           inc(n); s[n]:=ch; read(ch); end;
     inc(n); s[n]:=ch;
     close(input);
end;

function min(a,b: longint): longint;
begin
     if a > b then min:=b
        else min:=a;
end;

procedure find_max_suf(num: longint);
var i,k: longint;
begin
     fillchar(tmp,SizeOf(tmp),0);
     tmp[1]:=0;
     for i:=2 to n do begin
         k:=tmp[i-1];
         if sk[i] = sk[k+1] then tmp[i]:=tmp[i-1]+1
            else begin
                 while (k > 0)and(sk[i] <> sk[k+1]) do k:=tmp[k];
                 if sk[i] = sk[k+1] then tmp[i]:=k+1
                    else tmp[i]:=0;
            end;
     end;
     k:=n;
     while tmp[k] > min(num,n-num) do k:=tmp[k];
     d[num]:=tmp[k];
end;

procedure fill;
var i,j: longint;
begin
     fillchar(sk,SizeOf(sk),0);
     fillchar(d,SizeOF(d),0);
     fillchar(f,SizeOF(f),0);
     for i:=1 to n do begin
         for j:=i+1 to n do sk[j-i]:=s[j];
         for j:=n+1 to n+i do sk[j-i]:=s[j-n];
         find_max_suf(i);
     end;
end;

procedure solve;
var i,j: longint;
begin
     f[1]:=1;
     for i:=2 to n do begin
         f[i]:=f[i-1]+1;
         for j:=2 to i div 2 do
             if j = d[i-j] then f[i]:=min(f[i],f[i-j]+1);
     end;
     i:=n; t:=0;
     while i > 1 do begin
         if f[i] = f[i-1]+1 then begin inc(t); ans[t]:=-i; i:=i-1; end
            else begin
                 for j:=2 to i div 2 do
                     if (j = d[i-j])and(f[i] = f[i-j]+1) then break;
                 inc(t); ans[t]:=j; i:=i-j;
            end;
     end;
     inc(t); ans[t]:=-1;
     for i:=1 to t div 2 do begin
         j:=ans[i]; ans[i]:=ans[t-i+1]; ans[t-i+1]:=j; end;
end;

procedure done;
var i: longint;
begin
     assign(output,outfile);
     rewrite(output);
     writeln(f[n]+1);
     for i:=1 to f[n] do
         if ans[i] < 0 then writeln('Letter(''',s[-ans[i]],''');')
            else writeln('Repeat(',ans[i],');');
     write('End.');
     close(output);
end;

begin
     init;
     fill;
     solve;
     done;
end.
