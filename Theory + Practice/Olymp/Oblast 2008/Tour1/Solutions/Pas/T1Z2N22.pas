{GOLIKOW ALEXANDER, STOLBTSY, 11 CLASS, TASK2}
program t2b;
var i,j,n,k,cc:longint;
    mas:array[1..50]of longint;
    l:array[1..50]of int64;
    used:array[1..50]of boolean;
    s,ans:int64;
procedure rec(sum:int64;prev:longint;sym:int64);
var j:longint;
	begin
        if (sum>=k)and(sym>=k) then inc(ans);
        for j:=prev+1 to n do
          begin
                        if used[j]=false then begin
                                              used[j]:=true;
                                              rec(sum+mas[j],j,sym-mas[j]);
                                              used[j]:=false;
                                              end;
          end;
	end;
begin
assign(input,'input.txt');
reset(input);
readln(n,k);
s:=0;
for i:=1 to n do
begin
read(mas[i]);
s:=s+mas[i];
end;
assign(output,'output.txt');
rewrite(output);
ans:=0;
if (n>26)or(k=1) then begin		 
	    for i:=1 to n do 
	      if mas[i]>=k then l[i]:=1 else l[i]:=0;
	    for i:=1 to n do
              begin
              s:=0;
	      for j:=1 to i-1 do
               begin
               s:=s+mas[j];
	       if s+mas[i]>=k then l[i]:=l[i]+l[j]+1;
               end;
	      end;
	     ans:=l[1];
	     for i:=2 to n do
	      if  ans<l[i] then ans:=l[i];

	    if n=1 then ans:=1;
	    writeln(ans-1);
            close(input);
	    close(output);
	    halt;
	    end;
for i:=1 to n-1 do
for j:=i+1 to n do
 if mas[i]>mas[j] then begin
		   cc:=mas[i];
		   mas[i]:=mas[j];
		   mas[j]:=cc;
		   end;
fillchar(used,sizeof(used),false);
ans:=0;
REC(0,0,s);
writeln(ans);
close(input);
close(output);
end.