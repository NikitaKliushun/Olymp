{GOLIKOW ALEXANDER, STOLBTSY, 11 CLASS, TOUR2 TASK1}
program z1;
var mas			:array[1..100]of longint;
    sum1,sum2		:int64;
    i,n,j		:longint;
procedure indata;
	begin
	assign(input,'input.txt');
	reset(input);
	readln(n);
	for i:=1 to n do    
	 read(mas[i]);
	close(input);
	end;
procedure solut;
var i,cc		:longint;
	begin
	for i:=1 to n-1 do
	 for j:=i+1 to n do
	  begin
	  if mas[i]>mas[j] then begin
				cc:=mas[i];
				mas[i]:=mas[j];
				mas[j]:=cc;
				end;			
	  end;
	sum1:=0; sum2:=0;

	for i:=1 to n div 2 do
	 sum1:=sum1+MAS[i];

	for i:=(n div 2)+1 to n do
	 sum2:=sum2+mas[i];
	end;

procedure outdata;
	begin
	assign(output,'output.txt');
	rewrite(output);
	writeln(sum2-sum1);
	close(output);
	end;
begin

indata;
solut;
outdata;

end.