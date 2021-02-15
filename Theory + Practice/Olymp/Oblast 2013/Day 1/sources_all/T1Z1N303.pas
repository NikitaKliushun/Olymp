
function toSec(st:string):integer;
var h, m, s:integer;
begin
     h:=strToInt(copy(st, 1, 2));
     m:=strToInt(copy(st, 4, 2));
     s:=strToInt(copy(st, 7, 2));
  //   writeln(h,' ',m,' ',s);
     m:=m+h*60;
     toSec:=s+m*60;
end;
function ndl(n:word):string;
begin
    if (n div 10)=0 then ndl:=('0'+intToStr(n))
    else ndl:=intToStr(n);
end;

function toDate(s:word):string;
var h,m:word;
begin
     h:=s div 3600;
     m:=(s-(h*3600))div 60;
     s:=s-((m*60)+(h*3600));
     toDate:=(ndl(h)+':'+ndl(m)+':'+ndl(s));
end;

var T, N :word;
    i,k:integer;
    st:string;
    s:array [1..1000]of word;
    inFile,outFile:text;
begin
     assign(inFile,'input.txt');
     reset(inFile);
     readln(inFile,N, T);
     for i :=1 to 2*n do begin
         readln(inFile,st);
         s[i]:=toSec(st);
     end;
     close(inFile);
     assign(outFile,'output.txt');
     reWrite(outFile);
     for i:=1 to (2*n) do begin
         for k:=1 to (2*n) do begin
             if ((s[i]<>65535)and(s[k]<>65535))and((s[i]+t)=s[k]) then begin
                 writeln(outFile,toDate(s[i]),'-',toDate(s[k]));
                 s[i]:=65535;
                 s[k]:=65535;
             end;
         end;
     end;
    close(outFile);

end.