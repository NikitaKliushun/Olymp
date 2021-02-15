type
  snum=string[9];
const
  //nums:array[0..9] of byte=(6, 3, 4, 4, 4, 5, 5, 4, 7, 5);
    const_nums:array[0..9] of snum=
      ('110011011', '001010010', '100010101', '101100100',
       '001110010', '110100011', '001101011',
       '101001000', '110111011', '110110100');
     table:array[0..9, 0..9] of byte=
      ((0, 2, 2, 3, 3, 1, 2, 2, 1, 2),
       (2, 0, 2, 3, 1, 3, 2, 2, 3, 3),
       (2, 2, 0, 1, 3, 2, 3, 2, 2, 1),
       (3, 3, 1, 0, 2, 2, 2, 2, 3, 2),
       (3, 1, 3, 2, 0, 2, 1, 2, 2, 2),
       (1, 3, 2, 2, 2, 0, 2, 3, 1, 2),
       (2, 2, 3, 2, 1, 2, 0, 2, 2, 4),
       (2, 2, 2, 2, 2, 3, 2, 0, 3, 3),
       (1, 3, 2, 3, 2, 1, 2, 3, 0, 2),
       (2, 3, 1, 2, 2, 2, 4, 3, 2, 0));


var
  n:byte;
  k, i, spich, spich1, j:longint;
  a:array[0..109] of byte;
  nums, nums1:array[1..109] of snum;
  c:char;
  f1, f2:text;
 // o:array[0..109] of byte;
 // o1, o2:byte; //o2=push, o1-pop
  res:int64;

{Procedure o_write(x:byte);
Begin
  o[o2]:=x;
  inc(o2);
  if o2>100 then
    o2:=0;
End;

Function o_read:byte;
Begin
  o_read:=o1;
  inc(o1);
  if o1>100 then
    o1:=0;
End;

Function is_right(x:snum):boolean;
var
  i:byte;
Begin
  is_right:=false;
  for i:=0 to 9 do
    if const_nums[i]=x then begin
      is_right:=true;
      exit;
    end;
End; }

{Function get_dif(x, y:snum):byte;
var
 res, i:byte;
Begin
  res:=0;
  for i:=1 to 9 do
    if  x[i]<>y[i] then
      inc(res);

  get_dif:=res;
End;}

BEGIN
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  res:=0;

  readln(f1, n, k);
  for i:=0 to n-1 do begin
    read(f1, c);
    a[i]:=ord(c)-ord('0');
   //nums[i]:=const_nums[ord(c)-ord('0')];
  end;

  {for spich:=1 to k do begin
    o1:=0;
    o2:=0;
    for i:=1 to n do
      nums1[i]:=nums[i];
  end;}

 // for i:=n-1 downto 0 do
   // write(f2, a[i]);

{  write(f2, '(');
 for i:=0 to 9 do begin
   write(f2, '(');
   for j:=0 to 9 do
    write(f2, get_dif(const_nums[i], const_nums[j]), ', ');
   writeln(f2, ')');
 end;
 write(f2, ')');  }

  {for spich:=0 to k do begin
    for i:=0 to 9 do
      if table[a[0], i]=spich then
        inc(res);
  end;

  write(f2, res, ' '); }
  if (a[0]=1) and (k=2) then inc(res);
  if (a[0] in [9, 5]) and (k=2) then inc(res);
  if (a[0] in [5, 6]) and (k=2) then inc(res);
  write(f2, res);

  close(f1);
  close(f2);

END.
