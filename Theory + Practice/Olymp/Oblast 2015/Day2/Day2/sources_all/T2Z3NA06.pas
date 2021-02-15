var
     a:array [0..10,0..10] of Longint;
     N,K,X,i,Ans:Longint;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(N,K);
     Readln(X);
     Ans:=0;
     a[2,4]:=3;
     a[4,3]:=2;
     a[2,3]:=2;
     a[1,7]:=2;
     a[6,9]:=1;
     a[5,9]:=2;
     a[5,6]:=2;

     a[2,2]:=3;
     a[3,4]:=2;
     a[3,2]:=2;
     a[7,1]:=2;
     a[9,6]:=1;
     a[9,5]:=2;
     a[6,5]:=2;
     for i:=0 to 9 do
     if a[X,i]>0 then
     if a[X,i]<=K then Inc(Ans);
     Writeln(Ans+1);
     Close(Input);
     Close(Output);
 end.
