type
 dom = record
     x,y:byte;
       end;

const
 FiLeIn  = 'input.txt';
 FiLeOut ='output.txt';

var
 a :array[1..100]of dom;
 f :text;
 i,n,h,mx,my,r,k :byte;
 s,sx,sy:String;
 p :array[1..100]of Byte;

Procedure Print(z:boolean);
 Begin
  Assign(f,FiLeOut);
   ReWrite(f);
    if z then Writeln('YES')
         else Writeln('NO');
   CloSe(f);
  HALT;
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

Procedure Prog(c:LongInt);
 var
  j,code,b:Integer;
  pole:String;
Function Left:boolean;
 Begin
  Val(s[1],b,code);
  if (a[j].x = b)or(a[j].y = b)then Left:=true
                               else Left:=false;
 End;
Function Right:boolean;
 Begin
  Val(s[length(s)],b,code);
  if (a[j].x = b)or(a[j].y = b)then Right:=true
                               else Right:=false;
 End;
  Begin
   For j:=1 to k do
    Begin
     if Length(s) - 1 = k then Print(true);
      if (p[j] = 0)and(Left)then Begin
                                  p[j]:=1;
                                  if b = a[j].x then Str(a[j].y,pole)
                                                else Str(a[j].x,pole);
                                  s:=s + pole;
                                   Prog(c + 1);
                                   p[j]:=0;
                                   DeLeTe(s,1,1);
                                 End;
      if (p[j] =0)or(Right)then Begin
                                 p[j]:=1;
                                 if b = a[j].x then Str(a[j].y,pole)
                                               else Str(a[j].x,pole);
                                 s:=s + pole;
                                  Prog(c + 1);
                                  p[j]:=0;
                                  DeLeTe(s,length(s),1);
                                End;
    End;
  End;
Procedure Fish;
 Begin
  For i:=1 to k do
   Begin
    DeLeTe(s,1,LengTh(s));
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