{Gordiychuk Vladimir , g.Minsk , 11 , Z1}

program MortLord;

 const MaxN = 1000000;

 var a : array [0..MaxN] of char;
     b : array [0..255] of longint;
     N,K,C,j : longint;
     kol : int64;

procedure GetKol(x:longint);
 var i : longint;
 begin

 fillchar(b,sizeof(b),0);

 b[ ord(a[x]) ]:=1;
 i:=x;
 C := 1;

 while (i<N)and(C<=K) do
  begin

  if b[ ord(a[i+1]) ] = 0
   then inc( b[ ord(a[i+1]) ] )
   else begin
        inc( b[ ord(a[i+1]) ] );
        if C <  b[ ord(a[i+1]) ] then C := b[ ord(a[i+1]) ];
        end;

  if C<=K then inc(i);
  end;

 kol := kol + (i-x)+1;

 end;

Begin

 kol := 0;

 Assign(input,'input.txt');reset(input);
 Assign(output,'output.txt');rewrite(output);

 readln(N,K);
 for j:=1 to N do read(a[j]);

 for j:=1 to N do
  begin
   Getkol(j);
  end;

 write(kol);

 Close(input);
 Close(output);

End.
