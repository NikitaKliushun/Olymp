program Fish_by_Tsvilik;
type
	zap = Record
		a : Integer;
		b : Integer;
	end;
	mas = array [1..100] of zap;
        mas1 = array [1..100] of Integer;
Var
	d : mas;
        m : mas1;
	i,j,n : Integer;

procedure inputdata;
begin
	Assign (input,'input.txt');
	ReSet (input);
	ReadLn (n);
	For i := 1 to n do
		Read (d[i].a,d[i].b);
	Close (input);
	Assign (output,'output.txt');
	ReWrite (output);
end;

procedure per(x,a,b : Integer);
Var t : Integer;
begin
	If x > n then begin
		WriteLn ('Yes');
                Close (output);
		Halt;
	end;
        For t := 1 to n do
             If ((d[t].a = a) or (d[t].b = a) or (d[t].a = b) or (d[t].b = b)) and (m[t] = 0) then
             begin
                  m[t] := 1;
                  If d[t].a = a then per(x + 1,d[t].b,b)
                  else
                      If d[t].a = b then per(x + 1,a,d[t].b)
                      else
                          If d[t].b = a then per(x + 1,d[t].a,b)
                          else
                              If d[t].b = b then per(x + 1,a,d[t].a);
                  m[t] := 0;
             end;
end;

begin
	inputdata;
	per(1,d[1].a,d[1].b);
        WriteLn ('No');
        Close (output);
end.