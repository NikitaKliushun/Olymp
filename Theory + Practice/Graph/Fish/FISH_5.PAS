{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q-,R-,S+,T-,V+,X+}
{$M 65520,0,655360}
const
 FiLeIn  ='input.txt' ;
 FiLeOut ='output.txt';
type
 DominoShka = record
	    x : Byte;
	    y : Byte;
end;
var
 i,n,mx,my,k : Integer;
 a           : array [1..100] of DominoShka;
 p           : array [1..100] of Byte;
 f           : Text;
 z           : Dominoshka;
 s,sx,sy     :String;
 h,r         :Byte;  
Procedure Print(otvet:boolean);
 Begin
  Assign(f,FiLeOut);
   ReWrite(f);
    if otvet then Writeln(f,'YES')
	     else Writeln(f,'NO');
   CloSe(f);
  HALT
 End; 
Procedure Enter;
 Begin
  Assign(f,FiLeIn);
   ReSet(f);
    Readln(f,n);
     if n = 1 then Print(true);
     h:=1;
     Read(f,mx,my);
      While mx = my do
       Begin
	Read(f,mx,my);
	If r = 100 then Print(False);
	If mx <> my then Begin
			  a[h].x:=mx;
			  a[h].y:=my;
			  Inc(h);
			  Inc(k);
			 End;
	Inc(r);
       End;
     For i:= h to n do
      Begin
       Read(f,mx,my);
	if (a[k].x <> mx)or(a[k].y <> my) then Begin
						 if (mx <> my) then Begin
								     Inc(k);
								     a[k].x :=mx;
								     a[k].y :=my;
								    End;
						End;
      End;
   CloSe(f);
 End;   
Procedure Prog(g:Integer);
 var
  j,cod,z :Integer;
  pole    :String;
 Function Right:boolean;
  Begin
   Val(s[length(s)],z,cod);
   If (z = a[j].x) or (z = a[j].y)then Right := true
				  else Right :=false;
  End;
 Function Left:boolean;
  Begin
   Val(s[1],z,cod);
   If (z = a[j].x) or (z = a[j].y)then Left := true
				  else Left :=false;
  End;
 Begin
  for j:=1 to k do
   Begin
    if Length(s)-1 = k then Print(true);
    if (p[j] = 0)and(Right)then Begin
				 p[j]:=1;
				 If a[j].x = z then str(a[j].y,pole)
					       else str(a[j].x,pole);
				 s:=pole + s;
				 Prog(g+1);
				 p[j]:=0;
				 DeLete(s,Length(s),1);
				End;
    if (p[j] = 0)and(Left)then Begin
				 p[j]:=1;
				 If a[j].x = z then str(a[j].y,pole)
					       else str(a[j].x,pole);
				 s := s + pole;
				 Prog(g+1);
				 p[j]:=0;
				 DeLete(s,1,1);
				End;
   End;
 End;
Procedure Fish;
 Begin
  For i:=1 to n do
   Begin
    DeLete(s,1,Length(s));
    Str(a[i].x,sx);
    Str(a[i].y,sy);
    s:=sx + sy;
    p[i]:=1;
    Prog(i);
   End;
 End;  
BEGIN
 Enter;
 Fish;
 Print(false);
END.