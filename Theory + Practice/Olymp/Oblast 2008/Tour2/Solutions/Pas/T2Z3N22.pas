{GOLIKOW ALEXANDER, STOLBTSY, 11 CLASS, TOUR2 TASK3}
program z3;
uses windows;
const maxV=3000;
      inf=2000000;

var g				:array[1..maxV,1..maxV]of longint;
    used			:array[1..maxV]of boolean;
    n,i,j,R,beg,fin,ans		:longint;
    q,lev			:array[1..50000]of longint;
    start,current		:cardinal;


procedure indata;
	begin
	assign(input,'input.txt');
	reset(input);
	readln(n,R);

	for i:=1 to n do
	 for j:=1 to n do
	  g[i,j]:=inf;

	for i:=1 to R do
	 begin
	 readln(beg,fin);
	 g[beg,fin]:=0;
	 g[fin,beg]:=0;
	 end;

	close(input);
	end;

procedure inq(a,b:longint);
	begin	
	inc(fin);
	if fin>50000 then fin:=1;
	q[fin]:=a;
        lev[fin]:=b;
        used[a]:=true;
	end;

procedure outq(var a,b:longint);
	begin
	inc(beg);
	if beg>50000 then beg:=1;
	a:=q[beg];
        b:=lev[beg];
	end;

procedure que(ifrom:longint);
var level,x			:longint;
	begin
	fillchar(used,sizeof(used),false);
	beg:=1;
	fin:=1;
	InQ(ifrom,0);
	while beg<>fin do
	 begin
	 outQ(x,level);
	 current:=gettickcount;
	 if current-start>1900 then exit;
	 for i:=1 to N do
	  if (used[i]=false)and(g[x,i]=0) then begin
                                                ans:=ans+level;
						inq(i,level+1);
                                               end;
         end;
	end;

procedure solut;
var s				:longint;
        begin
        ans:=0;
	for s:=1 to n do
	 begin
	 current:=gettickcount;
	 if current-start>1900 then exit;
	 que(s);
	 end;
	end;
procedure outdata;
	begin
	assign(output,'output.txt');
	rewrite(output);
	writeln(ans);
	close(output);
	end;
begin

start:=gettickcount;
indata;
solut;
outdata;

end.
