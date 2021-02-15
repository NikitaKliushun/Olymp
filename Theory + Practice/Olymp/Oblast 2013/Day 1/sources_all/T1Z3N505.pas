// @utor Gamezo Vladislav, 10 Klass, Berezino
// Task 3, Tur 1
var
 c:array [1..500,1..500] of Char;
 x:Char;
 i,j,k,l,N,M,Ans:longint;


Function Pal(st:String):Boolean;
begin
 if Length(st)<2 then Pal:=true
                 else begin
                 if st[1]=st[length(st)] then
                   Pal:=Pal(Copy(st,2,length(st)-2))
                                         else Pal:=false;
                      end;
end;

Function Prov(a1,a2,a3,a4:longint):Boolean;
var
 i1,i2:longint;
 v:String;
begin
 Prov:=true;
 For i1:=1 to a4 do begin
  v:='';
   For i2:=a1 to a2 do v:=v+c[i2,i1];
   Prov:=Prov and Pal(v);
   if Prov=false then Exit;
                   end;
end;

begin

 Assign(input,'input.txt');Reset(input);
 Assign(output,'output.txt');Rewrite(output);
  Readln(N,M);
   For i:=1 to N do begin
    For j:=1 to M do begin
                      Read(x);
                      c[i,j]:=x;
                    end;
    Readln;
                    end;
   For i:=1 to N-1 do
    For j:=i+1 to N do begin
       For k:=1 to M do
        For l:=1 to M-k+1 do
                 if Prov(i,j,k,l)=true then Inc(Ans);
                       end;
 Write(Ans);
end.
