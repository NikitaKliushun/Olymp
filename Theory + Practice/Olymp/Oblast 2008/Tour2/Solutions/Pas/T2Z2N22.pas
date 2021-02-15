{GOLIKOW ALEXANDER, STOLBTSY, 11 CLASS, TOUR2 TASK2}
program z2;
uses windows;

var s			:array[1..1000010]of byte;
    cs,syms		:array[1..256]of longint;
    n,kkk,i,buks	:longint;
    start,current	:cardinal;
    kol			:int64;
    arsum               :extended;

procedure indata;
var c			:char;
	begin
	assign(input,'input.txt');
	reset(input);
	readln(n,kkk);

        IF KKK=N THEN BEGIN
                      arsum:=(N+1)/2*n;
                      kol:=trunc(arsum);
	  	      exit;
		      END;

	fillchar(cs,sizeof(cs),0);
	buks:=0;

	for i:=1 to n do
	 begin
	 read(c);	
	 s[i]:=ord(c);
	 if cs[s[i]]=0 then begin
			    inc(buks);
			    syms[buks]:=s[i];
			    end;
	 inc(cs[s[i]]);
	 end;

	close(input);
	end;

procedure solut;
var i,j,k,p		:longint;
    pos			:longint;
    ball		:boolean;
	begin

        if kkk=n then exit;  

       	kol:=0;

	fillchar(cs,sizeof(cs),0);
	for i:=1 to n do
 	 begin
          for j:=1 to (n-i+1) do
	  begin

	  ball:=true;

        	  for k:=j to i+j-1 do
 	   	      begin
		      pos:=ord(s[k]);
		      inc(cs[pos]);
	       	      if cs[pos]>kkk then begin
			     		  ball:=false;
			     		  break;
			     		  end;
	   	      end;

	  for p:=1 to buks do
	   cs[syms[p]]:=0;
  	  if ball then inc(kol);

	  current:=gettickcount;
	  if current-start>1900 then exit;
	  end;

	 end;
	end;
procedure outdata;
	begin
	assign(output,'output.txt');
	rewrite(output);
	writeln(kol);
	close(output);
	end;
begin

start:=gettickcount;
indata;
solut;
outdata;

end.