program z1check;
label
  L1;
const
  dx: array[1..4] of integer = (-1, 0, 1, 0);
  dy: array[1..4] of integer = (0, 1, 0, -1);
  omax = 10000;

var
  f1, f2, f3: text;
  a, b : array[0..101, 0..101] of smallint;
  c, d : array [1..10000] of smallint;
  n, m, j, x, y, z, t : byte;
  s, s2, s3, nc, nd, error, i, v, k : longint;
  o : array [0.. omax] of byte;
  o1, o2 : integer;
  h : array[1..10000] of byte;
  h1 : integer;

procedure In_O(x: byte);
begin
  o[o1] := x;
  o1 := o1 + 1;
  if o1 > omax then o1 := 0;
end;

procedure Out_O(var x: byte);
begin
  x := o[o2];
    //o[o2]:=0;
  o2 := o2 + 1;
  if o2 > omax then o2 := 0;
end;

procedure In_K(x: byte);
var
  i: longint;
begin
  h1 := h1 + 1; i := h1;
  while (i > 1) and (h[i div 2] < x) do
  begin
    h[i] := h[i div 2];
    i := i div 2;
  end;
  h[i] := x;  
end;

procedure Out_K(var x: byte);
var
  i, t: longint;
begin
  x := h[1];
  t := h[h1];
  h1 := h1 - 1;
  i := 1;
  while (i * 2 <= h1) and (h[i * 2] > t) or (i * 2 + 1 <= h1) and (h[i * 2 + 1] > t) do
    if (i * 2 + 1 > h1) or (i * 2 + 1 <= h1) and (h[i * 2] > h[i * 2 + 1])
    then begin
      h[i] := h[i * 2];
      i := i * 2;
    end
    else begin
      h[i] := h[i * 2 + 1];
      i := i * 2 + 1;
    end;
  h[i] := t;
end;

begin
  assign(f1, 'input.txt'); reset(f1);
  assign(f2, 'output.txt'); reset(f2);
  assign(f3, paramstr(1)); reset(f3);
  read(f1, n, m, v, k);
  for i := 1 to n do
    for j := 1 to m do
      a[i, j] := -1;
  for i := 0 to n + 1 do
  begin
    a[i, 0] := 0; a[i, m + 1] := 0;
  end;
  for j := 0 to m + 1 do
  begin
    a[0, j] := 0; a[n + 1, j] := 0;
  end;
  
  o1 := 0; o2 := 0;
  for i := 1 to v do
  begin
    read(f1, x, y);
    In_O(x); In_O(y); In_O(1); a[x, y] := 0;
  end;
  h1 := 0;
  for i := 1 to k do
  begin
    read(f1, x);
    In_K(x);
  end;
  nc := 0; 
  while h1>0 do
    begin
      nc := nc + 1;
      Out_K(x);
      c[nc] := x;
    end;
  while (o1 <> o2) do
  begin
    Out_O(x); Out_O(y); Out_O(t);
    for i := 1 to 4 do
      if a[x + dx[i], y + dy[i]] = -1
        then begin
               a[x + dx[i], y + dy[i]] := t;
               In_O(x + dx[i]); In_O(y + dy[i]); In_O(t + 1);
        end;
  end;
  read(f3,s);
  error := 0;
  if not seekeof(f2)
     then read(f2,s2)
     else begin
            write('Error : file is empty');
            goto L1;
          end;
  s3 := 0;
  for i := 1 to n do
    for j := 1 to m do
      if not seekeof(f2)
         then begin
                read(f2,b[i,j]); 
                if b[i,j]<>0 then begin In_K(b[i,j]); {write(b[i,j],'_');} end;
                if (b[i,j]<>0) and (a[i,j]=0)
                   then begin
                          writeln('Error : landing platform (',i,',',j,') is loaded!');
                          goto L1;
                        end
                   else s3 := s3 + b[i,j]*a[i,j];
              end  
         else begin
                error := 1;
                break;
              end;
   //writeln;           
              
   if (error=1)
      then begin
             if (s2=s) 
                then writeln('Half solved - only sum.')
                else writeln('Error : wrong sum');
             goto L1;   
           end;
  if s3<>s2
     then begin
            writeln('Error : wrond sum');
            goto L1;
          end;
  nd := 0; 
  while h1>0 do
    begin
      nd := nd + 1;
      Out_K(x);
      d[nd] := x;
    end;          
  if nd<>nc
     then begin
            writeln('Error : number of containers is not matched : ',nc,' ',nd);
            goto L1;
          end;
{  for i:=1 to nc do
    write(c[i],' ');
  writeln;
  for i:=1 to nd do
    write(d[i],' ');
  writeln;}

  for i:=1 to nc do
    begin
      if c[i]<>d[i]
         then begin
                write('Error : set of containers is not matched : ');
                writeln(i,' ',c[i],' ',d[i]);
                goto L1;
              end;
    end;
  writeln('Correct');
L1:
  close(f1); close(f2); 
  close(f3);
end.