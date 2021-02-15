Var
 N,i,j,l,ost,c,x : Longint;
 A : array [1..10000] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N);
    Close(Input);
    a[1]:=1; l:=1; c:=0;
    for i:=1 to n do
    begin
        for j:=1 to l do
        begin
            a[j]:=a[j] * 2 + c;
            c:=a[j] div 10;
            a[j]:=a[j] mod 10;
        end;
        while c > 0 do
        begin
            inc(l);
	    a[l]:=c mod 10;
	    c:=c div 10;	
        end;
    end;
    Assign(output,'Output.txt');
    ReWrite(Output);
     for i:=l downto 1 do
      Write(a[i]);
    Close(Output);
End.
