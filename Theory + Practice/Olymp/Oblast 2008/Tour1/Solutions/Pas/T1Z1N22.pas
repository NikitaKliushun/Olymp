{GOLIKOW ALEXANDER, STOLBTSY, 11 CLASS, TASK1}
program z1;
var k,i,j,h,w,s1,s2,min:longint;
procedure indata;
	begin
	assign(input,'input.txt');
	reset(input);
	readln(k);
	close(input);
	end;
procedure solut;
	begin           
        min:=maxlongint;
	for i:=1 to k do
	 begin
         for j:=1 to k do
          begin
	  if i*j>k then break;
	  s1:=abs(i-j);
	  s2:=k-i*j;
	  if s1+s2<=min then begin
			     min:=s1+s2;	
			     h:=i;
			     w:=j;
			     end;
           end;
	 end;
	end;
procedure outdata;
	begin
	assign(output,'output.txt');
	rewrite(output);
	writeln(h,' ',w);	
	close(output);
	end;
begin
indata;
solut;
outdata;
end.