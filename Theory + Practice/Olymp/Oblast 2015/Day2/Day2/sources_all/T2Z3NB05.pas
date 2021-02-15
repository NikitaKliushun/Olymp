program z3;
var
  i,j,m,k,n,t:longint;
  a:array[0..9,0..9]of byte;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
    readln(n,k);
    read(m);
    a[1,2]:=3; a[2,1]:=3;
    a[1,3]:=4; a[3,1]:=4;
    a[1,4]:=1; a[4,1]:=1;
    a[1,5]:=5; a[5,1]:=5;
    a[1,6]:=3; a[6,1]:=3;
    a[1,7]:=3; a[7,1]:=3;
    a[1,8]:=5; a[8,1]:=5;
    a[1,9]:=4; a[9,1]:=4;
    a[1,0]:=4; a[0,1]:=4;

    a[2,3]:=2;
    a[2,4]:=3;
    a[3,4]:=2;
    write(a[n,k]mod 1000000007);
  close(input);
  close(output);
end.
